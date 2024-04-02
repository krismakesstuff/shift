
// This js file was made by Sam Tarakajian and is used to create a device and load the patcher from the exported json file.
// As well as functions to play and stop notes.
// see: https://rnbo.cycling74.com/learn/loading-a-rnbo-device-in-the-browser-js
// see: https://youtu.be/l42_f9Ir8fQ?si=_1eSUs2Ipbc8S9cu

const patchExportURL = "rnbo-export/shift.export.json";

async function createRNBODevice(patchExportURL) {
    // Create AudioContext
    const WAContext = window.AudioContext || window.webkitAudioContext;
    const context = new WAContext();

    // Create gain node and connect it to audio output
    const outputNode = context.createGain();
    outputNode.connect(context.destination);
    
    // Fetch the exported patcher
    let response, patcher;
    try {
        response = await fetch(patchExportURL);
        patcher = await response.json();
    
        if (!window.RNBO) {
            // Load RNBO script dynamically
            // Note that you can skip this by knowing the RNBO version of your patch
            // beforehand and just include it using a <script> tag
            console.log("Loading RNBO script");
            await loadRNBOScript(patcher.desc.meta.rnboversion);
        }

    } catch (err) {
        const errorContext = {
            error: err
        };
        if (response && (response.status >= 300 || response.status < 200)) {
            errorContext.header = `Couldn't load patcher export bundle`,
            errorContext.description = `Check app.js to see what file it's trying to load. Currently it's` +
            ` trying to load "${patchExportURL}". If that doesn't` + 
            ` match the name of the file you exported from RNBO, modify` + 
            ` patchExportURL in app.js.`;
        }
        throw err;
    }

    // Create the device
    let device;
    try {
        device = await RNBO.createDevice({ context, patcher });
    } catch (err) {
        throw err;
    }

    // Get the patcher's presets
    let presets = patcher.presets || [];
    if (presets.length < 1) {
        console.log("No presets defined");
    } else {
        console.log(`Found ${presets.length} presets...`);
        presets.forEach(preset => {
            console.log(`preset ${preset.name}`);
        });
    }

    // Prints out a list of the patcher's presets
    // function loadPresetAtIndex(index) {
    //     const preset = presets[index];
    //     console.log(`Loading preset ${preset.name}`);
    //     device.setPreset(preset.preset);
    // }

    // Connect the device to the web audio graph
    device.node.connect(outputNode);

    document.body.onclick = () => {
        context.resume();
    }

    return [device, context];
}

function loadRNBOScript(version) {
    return new Promise((resolve, reject) => {
        if (/^\d+\.\d+\.\d+-dev$/.test(version)) {
            throw new Error("Patcher exported with a Debug Version!\nPlease specify the correct RNBO version to use in the code.");
        }
        const el = document.createElement("script");
        el.src = "https://c74-public.nyc3.digitaloceanspaces.com/rnbo/" + encodeURIComponent(version) + "/rnbo.min.js";
        el.onload = resolve;
        el.onerror = function(err) {
            console.log(err);
            reject(new Error("Failed to load rnbo.js v" + version));
        };
        document.body.append(el);
    });
}

function noteOn(rnboDevice, context, pitch, velocity) {
    let midiChannel = 0;
    let midiPort = 0;

    // Format a MIDI message payload, this constructs a MIDI note-on event
    let noteOnMessage = [
        144 + midiChannel, // Code for a note on: 10010000 & MIDI channel (0-15)
        pitch, // MIDI Note
        velocity // MIDI Velocity
    ];

    // When scheduling an event, use the current audio context time
    // multiplied by 1000 (converting seconds to milliseconds)
    let noteOnEvent = new RNBO.MIDIEvent(context.currentTime * 1000, midiPort, noteOnMessage);

    rnboDevice.scheduleEvent(noteOnEvent);
}

function noteOff(rnboDevice, context, pitch) {
    let midiChannel = 0;
    let midiPort = 0;

    // Format a MIDI message payload, this constructs a MIDI note-off event
    let noteOffMessage = [
        128 + midiChannel, // Code for a note on: 10010000 & MIDI channel (0-15)
        pitch, // MIDI Note
        0 // MIDI Velocity is 0 for a note off
    ];

    // When scheduling an event, use the current audio context time
    // multiplied by 1000 (converting seconds to milliseconds)
    let noteOffEvent = new RNBO.MIDIEvent(context.currentTime * 1000, midiPort, noteOffMessage);

    rnboDevice.scheduleEvent(noteOffEvent);
}
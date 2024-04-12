
// This js file was made by Sam Tarakajian and is used to create a device and load the patcher from the exported json file.
// As well as functions to play and stop notes.
// I modified parts of this file to work with my project, like adding offline context
// see: https://rnbo.cycling74.com/learn/loading-a-rnbo-device-in-the-browser-js
// see: https://youtu.be/l42_f9Ir8fQ?si=_1eSUs2Ipbc8S9cu

const patchExportURL = "rnbo-export/shift.export.json";

let response, patcher;
var presets;
let defaultPreset = "default"; // set to the name of the preset you want to load by

// Create AudioContext
const WAContext = window.AudioContext || window.webkitAudioContext;
const context = new WAContext();

async function createRNBODevice(patchExportURL, offline) {
    
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

    // Connect the device to the web audio graph
    device.node.connect(outputNode);

    document.body.onclick = () => {
        context.resume();
    }

    presets = patcher.presets || [];
    let defaultIndex= -1;
    if (presets.length < 1) {
        console.log("No presets defined");
    } else {
        console.log(`Found ${presets.length} presets...`);
        
        presets.forEach(preset => {
            console.log(`preset ${preset.name}`);
        });
        
        // get the index of the default preset
        for(let i = 0; i < presets.length; i++) {
            if(presets[i].name === defaultPreset) {
                defaultIndex = i;
                break;
            }
        }
        
    }

    // Set the default preset
    device.setPreset(presets[defaultIndex].preset);

    // Create a preset select element in the output section
    let outputSection = document.getElementById("output-section");
    createPresetSelect(outputSection, presets, presetSelected);

    return [device, context];
}

// create offline rnbo device
async function createOfflineContextAndRNBODevice(patchExportURL, bufferLength) {
    // Create OfflineAudioContext
    const numChans = 2;
    const sampleRate = 44100;

    const offlineContext = new OfflineAudioContext(numChans, bufferLength, sampleRate);

    // Create gain node and connect it to audio output
    const outputNode = offlineContext.createGain();
    outputNode.connect(offlineContext.destination);

    // Fetch the exported patcher
    let response, patcher;
    try {
        response = await fetch(patchExportURL);
        patcher = await response.json();
        
        if (!window.RNBO) {
            // Load RNBO script dynamically
            // Note that you can skip this by knowing the RNBO version of your patch
            // beforehand and just include it using a <script> tag
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
        device = await RNBO.createDevice({ context: offlineContext, patcher });
        console.log("Offline RNBO Device Created");
    } catch (err) {
        console.error(err);
        throw err;
    }

    return device;

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


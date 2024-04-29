
// This js file was made by Sam Tarakajian and is used to create a device and load the patcher from the exported json file.
// As well as functions to play and stop notes.
// I modified parts of this file to work with my project, like adding offline context
// see: https://rnbo.cycling74.com/learn/loading-a-rnbo-device-in-the-browser-js
// see: https://youtu.be/l42_f9Ir8fQ?si=_1eSUs2Ipbc8S9cu


import { createPresetSelect, presetSelected, updateSliders } from "./uiBuilders.js";
import { downloadNewRecording } from './uiBuilders.js';
export const patchExportURL = "rnbo-export/shift.export.json";
import { bufferToWave } from './uiBuilders.js';

let response, patcher;
export var presets;
let defaultPreset = "default"; // set to the name of the preset you want to load by

export let device;
// Create AudioContext
const WAContext = window.AudioContext || window.webkitAudioContext;
export const context = new WAContext();
export let outputGainNode = context.createGain();

export let mediaRecorder;

let date = Date.now();
console.log("Date now: " + date);
let recordedBlob = [];

export async function createRNBODevice(patchExportURL) {
    
    
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
    try {
        device = await RNBO.createDevice({ context, patcher });
    } catch (err) {
        throw err;
    }
    
    
    // Connect the device to the web audio graph
    device.node.connect(outputGainNode);

    // connect gain node to recorder
    let streamDestination = context.createMediaStreamDestination();
    let options = {
        mimeType: 'audio/webm;codecs=pcm',
    }
    mediaRecorder = new MediaRecorder(streamDestination.stream, options);

    
    const types = [
        "audio/webm",
        "audio/webm;codecs=pcm",
        "audio/webm;codecs=opus",
        "audio/mpeg", 
        "audio/wav",
    ];
      
    for (const type of types) {
        console.log(
            `Is ${type} supported? ${
            MediaRecorder.isTypeSupported(type) ? "Yes!" : "Nope :("
            }`,
        );
    }
      

    // Media Recorder Event onstart
    mediaRecorder.onstart = function(e) {
        console.log("recording started");
        console.log("Recording format: " + mediaRecorder.mimeType);

        recordedBlob = [];
    }

    // Media Recorder Event ondataavailable, fires when done or manually triggered
    mediaRecorder.ondataavailable = function(e) {
        console.log("data available");
        recordedBlob.push(e.data);
    }

    // Media Recorder Event onstop
    mediaRecorder.onstop = function(e) {
        console.log("recording stopped");
        console.log(recordedBlob);
        

        const reader = new FileReader();
        //let arrayBuffer;

        // returns and array buffer
        reader.onloadend = function() {
            console.log("FileReader onloadend");
            console.log(reader.result);
            //arrayBuffer = reader.result;

            // decode audio data
            context.decodeAudioData(reader.result, function(audioBuffer) {
                console.log("Decoded audio data");
                const waveBlob = bufferToWave(audioBuffer, audioBuffer.length);

                let url = URL.createObjectURL(waveBlob);
                console.log("waveBlob url: " + url);
                let downloadLink = document.getElementById("download-link"); 
                let fileName = "shift-recording-" + (Date.now() - date);
                
                downloadLink.href = url;  
                downloadLink.download = fileName;
                downloadLink.click();

            }, function(e){"Error with decoding audio data" + e.err});

        }

        // reads blob as an ArrayBuffer
        reader.readAsArrayBuffer(recordedBlob[0]);

        
    }

    // connect gain node to recorder
    outputGainNode.connect(streamDestination);
    
    // connect gain node to audio output
    outputGainNode.connect(context.destination);

    // resume audio context on click
    document.body.onclick = () => {
        context.resume();
    }

    // Get the presets from the patcher
    presets = patcher.presets || [];
    if (presets.length < 1) {
        console.log("No presets defined");
    } else {
        console.log(`Found ${presets.length} presets...`);
        
        presets.forEach(preset => {
            console.log(`preset ${preset.name}`);
        });
        
    }

    // Set the default preset
    device.setPreset(presets[0].preset);

    // update sliders


    // Create a preset select element in the output section
    let outputSection = document.getElementById("output-section");
    createPresetSelect(outputSection, presets, presetSelected);
    // set the default preset
    //selectElement.value = 1;
    
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


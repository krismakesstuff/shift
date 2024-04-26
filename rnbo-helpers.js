
// This js file was made by Sam Tarakajian and is used to create a device and load the patcher from the exported json file.
// As well as functions to play and stop notes.
// I modified parts of this file to work with my project, like adding offline context
// see: https://rnbo.cycling74.com/learn/loading-a-rnbo-device-in-the-browser-js
// see: https://youtu.be/l42_f9Ir8fQ?si=_1eSUs2Ipbc8S9cu


import { createPresetSelect, presetSelected, updateSliders } from "./uiBuilders.js";
import { downloadNewRecording } from './uiBuilders.js';
//import { updateRecordingWaveform } from './uiBuilders.js';
export const patchExportURL = "rnbo-export/shift.export.json";

let response, patcher;
export var presets;
let defaultPreset = "default"; // set to the name of the preset you want to load by

export let device;
// Create AudioContext
const WAContext = window.AudioContext || window.webkitAudioContext;
export const context = new WAContext();
export let outputGainNode = context.createGain();
export let mediaRecorder;
export let recordedChunks = [];

export async function createRNBODevice(patchExportURL, offline) {
    
    
    
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
    let audioType = 'audio/webm';   
    const recordingOptions = { mimeType: audioType};
    mediaRecorder = new MediaRecorder(streamDestination.stream, recordingOptions);

    console.log("recoder supported: " + MediaRecorder.isTypeSupported(audioType));

    mediaRecorder.onstart = function(e) {
        console.log("recording started");
        recordedChunks = [];
    }

    mediaRecorder.ondataavailable = function(e) {
        console.log("data available");
        recordedChunks.push(e.data);
    }

    mediaRecorder.onstop = function(e) {
        console.log("recording stopped");
        let blob = new Blob(recordedChunks, { 'type' : audioType }); 
        downloadNewRecording(blob);
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


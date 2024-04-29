
// This js file was adapted from a helper file made by Sam Tarakajian and is used to create a device and load the patcher from the exported json file.
// I modified parts of this file to work with my project, such as adding a media recorder.
// see: https://rnbo.cycling74.com/learn/loading-a-rnbo-device-in-the-browser-js
// see: https://youtu.be/l42_f9Ir8fQ?si=_1eSUs2Ipbc8S9cu

console.log("rnbo-helpers.js loading...");

import { createPresetSelect, presetSelected, updateSliders } from "./uiBuilders.js";
export const patchExportURL = "rnbo-export/shift.export.json";
import { bufferToWave } from './uiBuilders.js';

export var presets;
let defaultPreset = "default"; // set to the name of the preset you want to load by

export let device;
// Create AudioContext
const WAContext = window.AudioContext || window.webkitAudioContext;
export const context = new WAContext();
export let outputGainNode = context.createGain();

export let mediaRecorder;
// get date for timestamping recordings
let date = Date.now();
console.log("Date now: " + date);
let recordedBlob = [];

// check if browser is safari
var isSafari = window.safari !== undefined;
if (isSafari){
    console.log("Safari, yeah!");
} else {
    console.log("Not Safari");
} 

// check if browser is firefox
let isFirefox = navigator.userAgent.indexOf("Firefox") > -1; 
if(isFirefox){
    console.log("Firefox, yeah!");
} else {
    console.log("Not Firefox");
}

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

    // recording options
    let options; 

    // we use the supported mimeType for each browser
    if (isSafari) {
        options = {
            mimeType: "audio/mp4",
        };
    } else if (isFirefox) {
        options = {
            mimeType: 'audio/ogg',
        };
    } else {
        options = {
            mimeType: 'audio/webm;codecs=pcm',
        };
    }

    // log supported recording types
    checkForMediaRecorderSupport();
    
    // create media recorder with stream destination and options
    mediaRecorder = new MediaRecorder(streamDestination.stream, options);

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

    // Media Recorder Event onstop, happens after a final ondataavailable event
    mediaRecorder.onstop = function(e) {
        console.log("recording stopped");
        console.log(recordedBlob);
    
        
        // create url for download, based off mimetype
        if (mediaRecorder.mimeType == "audio/mp4"){
            // create an mp4 file
            let mp4Blob = new Blob(recordedBlob, {type: "audio/mp4"});
            const url = URL.createObjectURL(mp4Blob);
            console.log("mp4Blob url: " + url);
            // download the file
            updateDownloadLink(url);
            
        } else if (mediaRecorder.mimeType == "audio/ogg"){
            // create an ogg file
            let oggBlob = new Blob(recordedBlob, {type: "audio/ogg"});
            const url = URL.createObjectURL(oggBlob);
            console.log("oggBlob url: " + url);
            // download the file
            updateDownloadLink(url);

        } else {
            // create a wav file
            const reader = new FileReader();
            // returns and array buffer
            reader.onloadend = function() {
                console.log("FileReader onloadend");
                console.log(reader.result);
                
                // decode arrayBuffer to audioBuffer
                context.decodeAudioData(reader.result, function(audioBuffer) {
                    console.log("Decoded audio data");
                    
                    // writes the wave header to the audiobuffer and returns a blob of audio/wav type
                    const waveBlob = bufferToWave(audioBuffer, audioBuffer.length);
                    const url = URL.createObjectURL(waveBlob);
                    console.log("waveBlob url: " + url);
                    
                    // download the file
                    updateDownloadLink(url);
                    
                }, function(e){"Error with decoding audio data" + e.err});
                
            }
            
            // reads blob as an ArrayBuffer
            reader.readAsArrayBuffer(recordedBlob[0]);
        }
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

    
    // TODO: presets not working properly... 
    
    // Create a preset select element in the output section
    let outputSection = document.getElementById("output-section");
    let selectElement  = createPresetSelect(outputSection, presets, presetSelected);
    
    // Set the default preset
    device.setPreset(presets[0].preset);
    selectElement.value = defaultPreset;
    
    // update sliders
    //updateSliders();
    
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

// check for supported media recorder types
function checkForMediaRecorderSupport(){
    const types = [
        "audio/webm",
        "audio/webm;codecs=pcm",
        "audio/webm;codecs=opus",
        "audio/mpeg", 
        "audio/wav",
        "audio/aac",
        "audio/mp4",
        "audio/ogg",
    ];
      
    for (const type of types) {
        console.log(
            `Is ${type} supported? ${
            MediaRecorder.isTypeSupported(type) ? "Yes!" : "Nope :("
            }`,
        );
    }
}

// update download link with url and download file
function updateDownloadLink(url){
    let downloadLink = document.getElementById("download-link");
    downloadLink.href = url;
    downloadLink.download = "shift-recording-" + (Date.now() - date);
    downloadLink.click();
}
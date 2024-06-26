console.log('main.js');

import { createRNBODevice, patchExportURL, device, context } from './rnbo-helpers.js';
import { updateSliders } from './uiBuilders.js';

var droppedFile;
var getDroppedFile = false;

export let wavesurfer; 
export const audioElement = document.getElementById("audio");



// setup rnbo device
async function setupRNBO() {

    try{
        await createRNBODevice(patchExportURL);
        console.log("RNBO Device Created");
        createWaveform();
        updateSliders();

    } catch (err) {
        console.log("Error creating RNBO device");
        console.log(err);
        throw err;
    }

}



// We can't await here because it's top level, so we have to check later
// if device and context have been assigned
setupRNBO();

// window load event listener
window.addEventListener("load", (event) => {
    console.log("window loaded");
    
});


// min input functions 
let micSourceNode;

const connectMicStream = (stream) => {
    micSourceNode = context.createMediaStreamSource(stream);
    micSourceNode.connect(device.node);
    console.log("connected microphone to device");
    console.log(micSourceNode);    
}

const disconnectMicStream = () => {
    console.log("disconnecting microphone from device");
    micSourceNode.disconnect(device.node);
    micSourceNode = null;
}

// get microphone input
export function toggleMicInput(){
    // check if mic is already connected
    if(micSourceNode){
        // if mic is connected, disconnect it
        disconnectMicStream();
    }else{
        // if mic is not connected, connect it
        navigator.mediaDevices.getUserMedia({ audio:  {
            channelCount: 1,
            volume: 1.0,
            echoCancellation: false,
            noiseSuppression: false,
        }, video: false })
        .then(connectMicStream); 
    }  
}


// File drop zone, adding and defining event listeners
document.addEventListener("dragover", dragOverHandler, false);
document.addEventListener("dragleave", dragLeaveHandler, false);    
document.addEventListener("drop", dropHandler, false);


function dragOverHandler(ev) {
    console.log("File(s) in drop zone");
  
    // Prevent default behavior (Prevent file from being opened)
    ev.preventDefault();
    ev.stopPropagation();

    // set waveform data-dragging attribute to true
    const waveform = document.getElementById("waveform");
    waveform.setAttribute("data-dragging", "true");

}

function dragLeaveHandler(ev) {
    console.log("File(s) left drop zone");
    ev.preventDefault();

    // set waveform data-dragging attribute to false
    const waveform = document.getElementById("waveform");
    waveform.setAttribute("data-dragging", "false");    
}

function dropHandler(ev) {
    console.log("File(s) dropped");
    
    // Prevent default behavior (Prevent file from being opened)
    ev.preventDefault();
    
    if (ev.dataTransfer.items) {
        // Use DataTransferItemList interface to access the file(s)
        [...ev.dataTransfer.items].forEach((item, i) => {
            // If dropped items aren't files, reject them
            if (item.kind === "file") {
                const file = item.getAsFile();
                console.log(`file found: file[${i}].name = ${file.name}`);
                // check if file is audio file and flip getDroppedFile flag
                if(file.type.startsWith("audio")){
                    
                    droppedFile = file;
                    getDroppedFile = true;
                    console.log("audio file dropped");
                }
                else{
                    alert("Please drop an audio file");
                }
            }
        });
    } else {
        // Use DataTransfer interface to access the file(s)
        [...ev.dataTransfer.files].forEach((file, i) => {
            console.log(`not a file?? file[${i}].name = ${file.name}`);
        });
    }

    // set waveform data-dragging attribute to false
    const waveform = document.getElementById("waveform");
    waveform.setAttribute("data-dragging", "false");
}


// if getDropFile is true, load audio file into buffers
function loadDroppedFile(){
    if(getDroppedFile){
        
        // update waveform
        updateWaveform(droppedFile);

        // update text
        const waveform = document.getElementById("waveform-file-text");
        waveform.innerHTML = droppedFile.name;

        // flip flag
        getDroppedFile = false;
    }
}

// timer to check if a new file has been dropped
setInterval(loadDroppedFile, 1000); 

// udpates wavesurfer with new audio file
function updateWaveform(file){

    // update audio element src
    const url = URL.createObjectURL(file);
    audioElement.src = url;
    console.log("new audio src: " + url);

    // update wavesurfer
    wavesurfer.load(url);
}

// create wavesurfer and connect it to the audio element
function createWaveform(buffer, file){
    console.log("creating waveform");
    if(device){

        const newSource = device.context.createMediaElementSource(audioElement);
        newSource.connect(device.node);
        
        wavesurfer = WaveSurfer.create({
            container: '#waveform',
            waveColor: '#E5383b',
            progressColor: '#383351',
            height: 50,
            media: audioElement,
            splitChannels: true,
        });;
        

        wavesurfer.on('loading', function (percents) {
            console.log('loading waveform... ' + percents + '%');
            // if waveform data-loading is false, set waveform data-loading attribute to true
            // TODO: connect to overaly
            const waveform = document.getElementById("waveform");
            let isDataLoading = waveform.getAttribute("data-loading");  
            if(isDataLoading === "false"){
                waveform.setAttribute("data-loading", "true");
                waveform.innerHTML = "loading waveform... " + percents + "%";
                waveform.style.zIndex = 1;
            }
        });
        
        wavesurfer.on('ready', function () {
            console.log('waveform ready');
            // if waveform data-loading is true, set waveform data-loading attribute to false
            const waveform = document.getElementById("waveform");
            let isDataLoading = waveform.getAttribute("data-loading");  
            if(isDataLoading === "true"){
                waveform.setAttribute("data-loading", "false");
                waveform.innerHTML = "";
            }
            
        });

        // hacky way to loop when done playing
        wavesurfer.on('finish', function (){
            console.log('waveform finished');
            // get state from loop-button
            let loopButton = document.getElementById("loop-button");
            let isLooping = loopButton.dataset.state;
            if(isLooping === "on"){
                wavesurfer.play();
            } else {
                let playButton = document.getElementById("play-button");
                playButton.click();
            }
        })
    }
};






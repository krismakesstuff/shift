console.log("uiBuilders.js loaded, loading UI...");

import { wavesurfer } from "./main.js";
import { device } from "./rnbo-helpers.js";
import { context } from "./rnbo-helpers.js";
import { presets } from "./rnbo-helpers.js";
import { toggleMicInput } from "./main.js";
import { mediaRecorder } from "./rnbo-helpers.js";
import { outputGainNode } from "./rnbo-helpers.js";


// -------  UI Elements  ------- //
// This section defines the UI elements and their parent containers. See UI BUILDERS section for implementation

// INPUT SECTION ------ 
let inputSection = document.getElementById("input-section");

let micSection = document.createElement("div");
micSection.id = "mic-container";

let micLabel = document.createElement("div");   
micLabel.className = "warning-label";
micLabel.id = "mic-label"; 
micLabel.innerHTML = "Use headphones to avoid feedback.";

createToggleButton(micSection, "mic", buttonCallback);
micSection.appendChild(micLabel);

inputSection.appendChild(micSection);

// OUTPUT SECTION ------
let outputDiv = document.getElementById("output-section");
// output sliders and print button
createSlider(outputDiv, "mix", "wetdry", 0, 1.0, 0.01, sliderCallback);
createSlider(outputDiv, "output", "output", 0, 1.0, 0.01, sliderCallback);
// playback buttons container
let playBackDiv = document.createElement("div");
playBackDiv.id = "playback-container";
outputDiv.appendChild(playBackDiv);
// buttons
createToggleButton(playBackDiv, "play", buttonCallback);
createToggleButton(playBackDiv, "loop", buttonCallback);
createRecordButton(playBackDiv, "record");


// PARAMETERS SECTION ------
const parametersSection = document.getElementById("parameters-section");

const shiftParentDiv = document.createElement("div");  
shiftParentDiv.className = "parameter-parent";  
shiftParentDiv.id = "shift-parent";

const delayParentDiv = document.createElement("div");
delayParentDiv.className = "parameter-parent";
delayParentDiv.id = "delay-parent";

const lfoParentDiv = document.createElement("div"); 
lfoParentDiv.className = "parameter-parent";
lfoParentDiv.id = "lfo-parent";

// Insert the parent divs into the parameters-section element
parametersSection.appendChild(shiftParentDiv);
parametersSection.appendChild(lfoParentDiv);
parametersSection.appendChild(delayParentDiv);

// create sliders and labels for each parameter

// shift label
let shiftLabel = document.createElement("div");
shiftLabel.className = "parameter-label";
shiftLabel.id = "shift-label";
shiftLabel.innerHTML = "SHIFT";
shiftParentDiv.appendChild(shiftLabel);
// shift parameters
createSlider(shiftParentDiv, "window", "shiftwindow", 0, 1000, 0.001, sliderCallback);
createSlider(shiftParentDiv, "amount", "shiftamount", 0, 10, 0.01, sliderCallback);
createSlider(shiftParentDiv, "feedback", "shiftfeedback", 0.001, 0.8, 0.001, sliderCallback);

// lfo label
let lfoLabel = document.createElement("div");
lfoLabel.className = "parameter-label";
lfoLabel.id = "lfo-label";
lfoLabel.innerHTML = "LFO PANNER";
lfoParentDiv.appendChild(lfoLabel); 
// lfo parameters
createSlider(lfoParentDiv, "frequency", "lfofreq", 0, 15, 0.01, sliderCallback); 
createSlider(lfoParentDiv, "depth", "lfoamount", 0, 1.0, 0.001, sliderCallback);  

// delay label
let delayLabel = document.createElement("div");
delayLabel.className = "parameter-label";
delayLabel.id = "delay-label";
delayLabel.innerHTML = "DELAY";
delayParentDiv.appendChild(delayLabel);
// delay parameters
createSlider(delayParentDiv, "amount", "shiftdelaysend", 0, 1.0, 0.01, sliderCallback);
createSlider(delayParentDiv, "time-ms", "delayms", 0, 2000, 0.1, sliderCallback);  
createSlider(delayParentDiv, "feedback", "delayfeedback", 0, 1.0, 0.001, sliderCallback);



//----------------- UI BUILDERS -----------------//


// create a record button for the output buffer
function createRecordButton(parentDiv, name) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "button-container";
    outerDiv.id = name + "-button-container";
    
    // create a button element
    const button = document.createElement("button");
    button.id = name + "-button";
    button.textContent = name;

    // set data-recording attribute to false
    button.dataset.recording = "false"; 
    button.addEventListener("click", () => { recordNewAudioFile(); });

    // Insert the button into the output element
    outerDiv.appendChild(button);
    parentDiv.appendChild(outerDiv);
}


// creates slider with given parameters 
function createSlider(parentDiv, displayName, paramID, min, max, step, callback) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "slider-container";
    outerDiv.id = paramID;
    
    // Create a input slider element
    const slider = document.createElement("input");
    slider.className = "slider";
    slider.type = "range";
    slider.min = min;
    slider.max = max;
    //slider.value = (max - min) / 2;
    slider.step = step;
    slider.id = paramID + "-slider";
    slider.name = paramID;
    slider.addEventListener("input", callback);

    // Create a label for the slider
    const label = document.createElement("label");
    label.className = "slider-label";
    label.textContent = displayName;
    label.htmlFor = paramID;

    // create a number input element that updates the slider value
    const input = document.createElement("input");
    input.className = "slider-display";
    input.type = "number";
    input.min = min;
    input.max = max;
    input.id = slider.id + "-display";
    input.value = slider.value;
    input.step = step;
    input.addEventListener("input", (event) => {
        // update slider
        slider.value = input.value;
        // update rnbo parameter
        updateParamValue(paramID, input.value);
    });

        
    outerDiv.appendChild(label);
    outerDiv.appendChild(input);
    outerDiv.appendChild(slider);

    parentDiv.appendChild(outerDiv);
}

// create toggle butttons and adds to section2
function createToggleButton(parentDiv, name, callback) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "toggle-container";
    outerDiv.id = name;
    
    // create a button element
    const button = document.createElement("button");
    button.id = name + "-button";
    button.dataset.state = "off";
    button.textContent = name;
    button.addEventListener("click", callback);

    outerDiv.appendChild(button);
    parentDiv.appendChild(outerDiv);
}

// create preset select for path presets. Called from createRMBODevice() in rnbo-helpers.js
export function createPresetSelect(parentDiv, presets, presetSelected) {
    
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "preset-select-container"; 

    // create a label for the select
    const label = document.createElement("label");
    label.textContent = "presets";
    label.id = "preset-label";
    label.htmlFor = "preset-select";
    outerDiv.appendChild(label);

    // create a select element
    const select = document.createElement("select");
    select.id = "preset-select";
    select.addEventListener("change", presetSelected);

    // create options for each preset
    presets.forEach((preset) => {
        const option = document.createElement("option");
        option.value = preset.name;
        option.innerText = preset.name;

        select.appendChild(option);
    });

    // select the default preset
    //select.selectedIndex = 0;
    
    outerDiv.appendChild(select);
    //parentDiv.appendChild(outerDiv);
    parentDiv.insertBefore(outerDiv, parentDiv.firstChild);

    return select;
}


// -------  EVENT Callbacks  ------- //


// help text variables

// buttons and waveform help text
let mouseInfoTitle = "INFO: ";
let micInfo = "Toggle mic input";
let waveformInfo = "Shows loaded audio file. Drag and drop a file anywhere on the screen to load a new file.";
let playInfo = "Toggle playback";
let loopInfo = "Toggle loop playback";
let recordInfo = "Record audio output to a downloadable file. You'll be prompted to download the file once you stop recording.";
let presetInfo = "Select a preset. !Not currently working, it's at the top of the list!";

let mixInfo = "Adjust mix parameter. The amount of the effected signal to mix with the dry signal."; 
let outputInfo = "Adjust output gain. The overall output gain of the device.";

// parameters help text
let shiftParentInfo = "Adjust pitch shift parameters";
let lfoParentInfo = "Adjust LFO panner parameters";
let delayParentInfo = "Adjust delay parameters";
// shift
let shiftWindowInfo = "Adjust pitch shift window. Determines how many samples of audio to effect, in milliseconds.";
let shiftAmountInfo = "Adjust pitch shift amount. The amount of time to shift the window by. (Amount to alter a signal to shift it's pitch)";
let shiftFeedbackInfo = "Adjust pitch shift feedback amount. The amount of the shifted signal  to feedback through a second stage of shifting. This inherently addes a delay effect.";
// lfo
let lfoFreqInfo = "Adjust LFO frequency. The speed of the panning effect, hz";
let lfoAmountInfo = "Adjust LFO depth. The amount of panning effect added to the shifted signal.";
// delay
let delaySendInfo = "Adjust delay send amount. The amount of the signal to send to the delay effect.";
let delayTimeInfo = "Adjust delay time. The amount of time to delay the signal, in milliseconds.";
let delayFeedbackInfo = "Adjust delay feedback amount. The amount of the delayed signal to feedback through the delay effect.";

// assign event listener callbacks on appropriate elements. set the help-text from text variables

// attach body mouseover evnt to mouseInfoTitle text 
document.addEventListener("mouseover", (event) => {
    if(event.target == document.body) {
        const mouseInfo = document.getElementById("mouse-info-text");
        mouseInfo.innerHTML = mouseInfoTitle;
        console.log("body mouseover");
    }
});

// attach button event to help text 
const buttons = document.getElementsByTagName("button");
Array.from(buttons).forEach((button) => {
    button.addEventListener("mouseover", (event) => {
        const target = event.target;
        console.log("button mouseover, target: " + target.id);
        const mouseInfo = document.getElementById("mouse-info-text");
        if(target.id === "mic-button"){
            mouseInfo.innerHTML = mouseInfoTitle + micInfo;
        } else if(target.id === "play-button"){
            mouseInfo.innerHTML = mouseInfoTitle + playInfo;
        } else if(target.id === "loop-button"){
            mouseInfo.innerHTML = mouseInfoTitle + loopInfo;
        } else if(target.id === "record-button"){
            mouseInfo.innerHTML = mouseInfoTitle + recordInfo;
        }
    });
});

// waveform mouseover event to help text
const waveform = document.getElementById("waveform");
waveform.addEventListener("mouseover", (event) => {
    console.log("waveform mouseover, target: " + event.target.id);
    const mouseInfo = document.getElementById("mouse-info-text");
    mouseInfo.innerHTML = mouseInfoTitle + waveformInfo;
});

// attach the slider-container's mouseover event to help text
const sliderContainers = document.getElementsByClassName("slider-container");
// log slider ids
console.log("sliderContainers: ");
console.log(sliderContainers);
// loop through sliders and add event listener
Array.from(sliderContainers).forEach((sliderContainer) => {
    sliderContainer.addEventListener("mouseover", (event) => {
        console.log("slider mouseover, target: " + event.target.id);
        const target = event.target;
        const mouseInfo = document.getElementById("mouse-info-text");
        if(target.id.includes("shiftwindow")){
            mouseInfo.innerHTML = mouseInfoTitle + shiftWindowInfo;
        } else if(target.id.includes("shiftamount")){
            mouseInfo.innerHTML = mouseInfoTitle + shiftAmountInfo;
        } else if(target.id.includes("shiftfeedback")){
            mouseInfo.innerHTML = mouseInfoTitle + shiftFeedbackInfo;
        } else if(target.id.includes("lfofreq")){
            mouseInfo.innerHTML = mouseInfoTitle + lfoFreqInfo;
        } else if(target.id.includes("lfoamount")){
            mouseInfo.innerHTML = mouseInfoTitle + lfoAmountInfo;
        } else if(target.id.includes("shiftdelaysend")){
            mouseInfo.innerHTML = mouseInfoTitle + delaySendInfo;
        } else if(target.id.includes("delayms")){
            mouseInfo.innerHTML = mouseInfoTitle + delayTimeInfo;
        } else if(target.id.includes("delayfeedback")){
            mouseInfo.innerHTML = mouseInfoTitle + delayFeedbackInfo;
        } else if (target.id.includes("wetdry")){
            mouseInfo.innerHTML = mouseInfoTitle + mixInfo;
        } else if (target.id.includes("output")){
            mouseInfo.innerHTML = mouseInfoTitle + outputInfo;
        }
    });
});





// mouseover event to change mouse-info-text based on hovered element
document.body.addEventListener("mouseover", (event) => {
    const target = event.target;
    const mouseInfo = document.getElementById("mouse-info-text");
    
    // find mouseover target and set mouseInfo text



});




// record button callback
function recordNewAudioFile() {
    console.log("record button clicked");
    // if recording, stop recording
    const recordButton = document.getElementById("record-button");
    
    if(recordButton.dataset.recording === "true"){
        console.log("stop recording");
        mediaRecorder.stop();
        let playButton = document.getElementById("play-button");
        if(playButton.dataset.state === "on"){
            playButton.click();
        }
        recordButton.innerHTML = "record";
        recordButton.dataset.recording = "false";
        // the onstop event will handle the final display of recording
        
    } else { // if not recording, start recording
        console.log("start recording");
        // change record button text
        recordButton.innerHTML = "recording";
        recordButton.dataset.recording = "true";

        // start recorder
        mediaRecorder.start();
    }

}


// preset select callback
export function presetSelected() {
    console.log("preset selected");
    // get value from select
    let presetName = this.value;
    
    // get preset object from name
    let preset = presets.find(p => p.name === presetName);

    // set preset parameter in device
    if(device){

        device.setPreset(preset.preset);
        console.log("preset parameter set to: " + preset.name);
        
        // update sliders
        updateSliders();
    }

}


// update slider display values from device parameters
export function updateSliders() {

    let sliders = document.getElementsByClassName("slider");

    for(let i = 0; i < sliders.length; i++){
        let element = sliders.item(i);   
        const paramId = element.id.replace('-slider', '');
        if(paramId == "output") {
            return;
        }

        const param = device.parametersById.get(paramId);
        console.log(`updating slider ${paramId} to ${param.value}`);
        element.value = param.value;
        const input = document.getElementById(element.id + "-display");
        input.value = param.value;
    };
}

// update presets select options from device
function updatePresets(presets) {
    console.log("updating presets" + presets.length);
    const select = document.getElementById("preset-select");
    //select.innerHTML = "";

    // clear current select options
    while(select.firstChild) {
        select.removeChild(select.firstChild);
    }
    
    // loop through presets and add options
    for(let i = 0; i < presets.length; i++) {
        const option = document.createElement("option");
        console.log("preset name: " + presets[i].name + " being added at index: " + i);
        option.value = presets[i].name;
        option.innerText = presets[i].name;
        select.appendChild(option);
    }

}

// callback for all sliders, uses slider id to determine which parameter to set.
// reference the createSlider() function for slider id naming convention
function sliderCallback() {
    const sliderId = this.id;
    const sliderValue = this.value;
    let paramId = sliderId.replace('-slider','');

    // update input display 
    const input = document.getElementById(sliderId + "-display");
    input.value = sliderValue;

    // set parameter in device
    if(device){

        if(paramId == "output"){
            outputGainNode.gain.setValueAtTime(sliderValue, context.currentTime);
            console.log(`output gain set to: ${outputGainNode.gain.value}`)
        }else{

            updateParamValue(paramId, sliderValue);
        }
    }
}

// update ParamId with new value
function updateParamValue(paramId, value) {
    const param = device.parametersById.get(paramId);
    param.value = value;
    console.log(`${paramId} set to: ${param.value}`);
}

// callback for any toggle button, uses button id to determine which parameter to set
function buttonCallback() {
    const buttonId = this.id;
    
    console.log(`Button ${buttonId} clicked`);
    var paramId = buttonId.replace('-button','');

    // change button state for css
    this.dataset.state = this.dataset.state === "off" ? "on" : "off";
    let newState = this.dataset.state;

    // get button state and toogle
    if(paramId == "mic"){   
        toggleMicInput();
    } else if(paramId == "play"){
        togglePlayButton(newState);
    } else if(paramId == "loop") {
        toggleLoopButton(newState);
    }
    
}

// toggle play button and update wavesurfer playback
function togglePlayButton(newState) {
    const playButton = document.getElementById("play-button");

    // change button state text
    if(newState == "on"){
        // change play parameter in wavesurfer
        wavesurfer.play();
        playButton.innerHTML = "stop";
    } else {
        wavesurfer.stop();
        playButton.innerHTML = "play";
    }

}

// toffle loop button and update wavesurfer loop
function toggleLoopButton(newState) {
    const loopButton = document.getElementById("loop-button");
    
    // looping functionality is handled as a wavesurfer event that checks the loop button state after it's done playing
    // change button state text
    if(newState == "on"){
        loopButton.innerHTML = "loopin";
    } else {
        loopButton.innerHTML = "loop";
    }
}

// -------  Helper Functions  ------- //

// vvvv  NOT MY CODE vvvv
// Credit to: https://russellgood.com/how-to-convert-audiobuffer-to-audio-file/

// Convert an AudioBuffer to a Blob using WAVE representation
export function bufferToWave(abuffer, len) {
    var numOfChan = abuffer.numberOfChannels,
        length = len * numOfChan * 2 + 44,
        buffer = new ArrayBuffer(length),
        view = new DataView(buffer),
        channels = [], 
        i, 
        sample,
        offset = 0,
        pos = 0;
  
        console.log("view: " + view.byteOffset + " " + view.byteLength + " " + view.byteOffset + view.byteLength);   

    // write WAVE header
    setUint32(0x46464952);                         // "RIFF"
    setUint32(length - 8);                         // file length - 8
    setUint32(0x45564157);                         // "WAVE"
  
    setUint32(0x20746d66);                         // "fmt " chunk
    setUint32(16);                                 // length = 16
    setUint16(1);                                  // PCM (uncompressed)
    setUint16(numOfChan);
    setUint32(abuffer.sampleRate);
    setUint32(abuffer.sampleRate * 2 * numOfChan); // avg. bytes/sec
    setUint16(numOfChan * 2);                      // block-align
    setUint16(16);                                 // 16-bit (hardcoded in this demo)
  
    setUint32(0x61746164);                         // "data" - chunk
    setUint32(length - pos - 4);                   // chunk length
  
    console.log("BufferToWave: " + abuffer);
    console.log(abuffer);

    // write interleaved data
    for(i = 0; i < abuffer.numberOfChannels; i++)
      channels.push(abuffer.getChannelData(i));
  
    while(pos < length) {
      for(i = 0; i < numOfChan; i++) {             // interleave channels
        sample = Math.max(-1, Math.min(1, channels[i][offset])); // clamp
        sample = (0.5 + sample < 0 ? sample * 32768 : sample * 32767)|0; // scale to 16-bit signed int
        view.setInt16(pos, sample, true);          // write 16-bit sample
        //console.log("channel " + i + " set pos " + pos + " to sample " + sample);
        pos += 2;
      }
      offset++                                     // next source sample
    }
  
    // create Blob
    let blob = new Blob([buffer], {type: "audio/wav"});
    console.log("Blob: " + blob.type + " " + blob.size + " bytes");
    console.log(blob);
    return blob;
  
    function setUint16(data) {
      view.setUint16(pos, data, true);
      pos += 2;
    }
  
    function setUint32(data) {
      view.setUint32(pos, data, true);
      pos += 4;
    }
}



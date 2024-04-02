console.log('main.js');

let bufferDescs;
let buffer;

const sampleRate = 44100;
const numChans = 2;

// setup rnbo device
async function setupRNBO() {
    [device, context] = await createRNBODevice(patchExportURL);
    console.log("RNBO Device Created");

    if(!device) {
        console.log("Device not found");
    }


    // load data buffer descriptions
    bufferDescs = device.dataBufferDescriptions;
    bufferDescs.forEach((desc) => {
        if(!!desc.file){
            console.log("buffer with id: " + desc.id + " -references file: " + desc.file);
        } else {
            console.log(`buffer with id ${desc.id} references remote URL ${desc.url}`);
        }
    });
    
    
}

// We can't await here because it's top level, so we have to check later
// if device and context have been assigned
setupRNBO();


let dropZone = document.getElementById("file-drop-area");

dropZone.addEventListener("dragover", dragOverHandler, false);
dropZone.addEventListener("drop", dropHandler, false);

['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
    dropZone.addEventListener(eventName, preventDefaults, false)
  })
  
function preventDefaults (e) {
    e.preventDefault()
    e.stopPropagation()
}

function dragOverHandler(ev) {
    console.log("File(s) in drop zone");
  
    // Prevent default behavior (Prevent file from being opened)
    ev.preventDefault();
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
                // check if file is audio file and insert audio player if it is
                if(file.type.startsWith("audio")){
                    //insertAudioPlayer(file);
                    loadAudioFile(file);
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
}


// insert audio player with audio controls
function insertAudioPlayer(audioFile){
    console.log("inserting audio player");
    let audioPlayer = document.createElement("audio");
    audioPlayer.controls = true;
    audioPlayer.src = URL.createObjectURL(audioFile);
    dropZone.appendChild(audioPlayer);
}

// load dropped file into wetbuffer and drybuffer in rnbbo device
async function loadAudioFile(audioFile){
    console.log("loading audio file");
    buffer = await audioFile.arrayBuffer();

    // go through buffer descriptions and load audio file using bufferids
    bufferDescs.forEach((desc) => {
        if(!!desc.file){
            console.log("buffer with id: " + desc.id + " -references file: " + desc.file);
        } else {
            if(device){
                console.log("device found");
                device.setDataBuffer(desc.id, buffer, numChans, sampleRate);
                console.log("loaded buffer: " + desc.id + " with audio file: " + audioFile.name);
            }
        }
    });

}

// playbutton callback
function playButtonClicked(button){
    console.log("play button clicked");
    // get button state, change button textt
    let buttonState;
    if(button.innerHTML == "Play"){
        buttonState = "Play";
        button.innerHTML = "Stop";
    } else {
        buttonState = "Stop";
        button.innerHTML = "Play";
    }

    // set play parameter in device
    if(device){
        context.resume();
        const playParam = device.parametersById.get("play");
        if(buttonState == "Play"){
            playParam.value = 1;
        } else {
            playParam.value = 0;
        }
        console.log("play parameter set to: " + playParam.value);
    }
    
}

// wetdry slider callback
function wetdryChanged(slider) {
    //console.log("wetdry slider changed");
    // get value from slider
    let wetdryValue = slider.value;

    // update wetdry display
    let wetdryDisplay = document.getElementById("wet-dry-display");
    wetdryDisplay.innerHTML = wetdryValue;


    // set wetdry parameter in device
    if(device){
        const wetdryParam = device.parametersById.get("wetdry");
        wetdryParam.value = wetdryValue;
        console.log("wetdry parameter set to: " + wetdryParam.value);
    }
}

// playback rate slider callback
function playbackRateSliderChanged(slider) {
    //console.log("playback rate slider changed");
    // get value from slider
    let playbackRateValue = slider.value;

    // update playback rate text input
    let playbackRateDisplay = document.getElementById("playback-rate-display");
    playbackRateDisplay.value = playbackRateValue;

    // set playback rate parameter in device
    if(device){
        const playbackRateParam = device.parametersById.get("playbackrate");
        playbackRateParam.value = playbackRateValue;
        console.log("playback rate parameter set to: " + playbackRateParam.value);
    }
}

// playback rate text input callback
function playbackRateTextInputChanged(input) {
    //console.log("playback rate input changed");
    // get value from input
    let playbackRateValue = input.value;

    // update playback rate slider
    let playbackRateSlider = document.getElementById("playback-rate-slider");
    playbackRateSlider.value = playbackRateValue;

    // set playback rate parameter in device
    if(device){
        const playbackRateParam = device.parametersById.get("playbackrate");
        playbackRateParam.value = playbackRateValue;
        console.log("playback rate parameter set to: " + playbackRateParam.value);
    }
}
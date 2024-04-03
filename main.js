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

// File drop zone, adding and defining event listeners
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


let fileResponse, arrayBuf;

// load dropped file into wetbuffer and drybuffer in rnbbo device
async function loadAudioFile(audioFile){
    const audioFileURL = URL.createObjectURL(audioFile);
    console.log("loading audio file");
    buffer = await audioFile.arrayBuffer();

    // go through buffer descriptions and load audio file using bufferids
    bufferDescs.forEach((desc) => {
        if(!!desc.file){
            console.log("buffer with id: " + desc.id + " -references file: " + desc.file);
        } else {
            if(device){
                console.log("device found");
                //device.setDataBuffer(desc.id, buffer, numChans, sampleRate);
                loadAudioFileIntoBuffer(audioFile, desc.id);

                console.log("loaded buffer: " + desc.id + " with audio file: " + audioFile.name);
            }
        }
    });

}


// load sample and buffer of dropped file into rnbo device data buffer by id
async function loadAudioFileIntoBuffer(audioFile, bufferId){
    console.log("loading audio file into buffer");

    const audioFileURL = URL.createObjectURL(audioFile);
    const fr = await fetch(audioFileURL);
    buffer = await audioFile.arrayBuffer();
    const audioBuf = await context.decodeAudioData(buffer);
    
    if(device){
        await device.setDataBuffer(bufferId, buffer, numChans, sampleRate);

        console.log("loaded buffer: " + bufferId + " with audio file: " + audioFile.name);
    }
}



function makePresetSelectOption (preset) {
    const select = document.getElementById('preset-select');
    
    const option = document.createElement('option');
    option.setAttribute('id', preset.name);
    option.value = preset.name;
    option.innerText = preset.name;

    select.appendChild(option);

    //return option
}

function loadPresetAtIndex(index) {
    const preset = presets[index];
    console.log(`Loading preset ${preset.name}`);
    device.setPreset(preset.preset);
}

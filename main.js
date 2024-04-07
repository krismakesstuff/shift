console.log('main.js');

let bufferDescs;

const sampleRate = 44100;
const numChans = 2;

var droppedFile;
var getDroppedFile = false;
//let rnboDevice;

// setup rnbo device
async function setupRNBO() {
    [device, audioContext] = await createRNBODevice(patchExportURL);
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

// setup offline rnbo device
async function setupOfflineRNBO() {
    [offlineDevice, offlineContext] = await createOfflineRNBODevice(patchExportURL);
    console.log("Offline RNBO Device Created");

    if(!offlineDevice) {
        console.log("Offline Device not found");
    }
}

// We can't await here because it's top level, so we have to check later
// if device and context have been assigned
setupRNBO();
setupOfflineRNBO();



// Fetch the exported patcher

// async function fetchPatchExport(patchExportURL){
//     let response, patcher;
//     try {
//         response = await fetch(patchExportURL);
//         patcher = await response.json();
//     } catch (err) {
//         console.error(err);
//     }
//     return patcher;
// }

// const p = fetchPatchExport(patchExportURL);

// console.log("patcher presets: " + p);
// console.log("presets: " + p.presets);

//updatePresets(p.presets);



//createPresetSelect(presets, presetSelected);

// download button event listener
function download(){
    console.log("download button clicked");

    if(offlineDevice){
        console.log("offline device found");
        // get state of current parameters
        let state = device.parameters;
        offlineDevice.parameters = state;
    
        // create offline context
        let offlineContext = new OfflineAudioContext(numChans, state.bufferSize, sampleRate);

        // connect offline device to offline context
        offlineDevice.node.connect(offlineContext.destination);

        // start rendering
        offlineContext.startRendering().then(function(renderedBuffer){
            console.log("rendering complete");
            // create audio buffer source
            let source = offlineContext.createBufferSource();
            source.buffer = renderedBuffer;
            source.connect(offlineContext.destination);
            source.start();
        });




    } else {
        console.log("offline device not found");
    }


}



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
                    
                    //loadAudioFile(file);
                    
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
}


// insert audio player with audio controls
function insertAudioPlayer(audioFile){
    console.log("inserting audio player");
    let audioPlayer = document.createElement("audio");
    audioPlayer.controls = true;
    audioPlayer.src = URL.createObjectURL(audioFile);
    dropZone.appendChild(audioPlayer);
}



// load file into wetbuffer and drybuffer in rnbbo device
async function loadAudioFile(audioFile){
    
    var reader = new FileReader();

    reader.onload = function(e) {
        context.decodeAudioData(e.target.result).then(function(buffer) {
            var source = context.createBufferSource();
            source.buffer = buffer;

            bufferDescs.forEach((desc) => {
                if(!!desc.file){
                    console.log("buffer with id: " + desc.id + " -references file: " + desc.file);
                } else {
                    if(device){
        
                        device.setDataBuffer(desc.id, buffer);


                        // if waveform has children already created, remove them and create new children for new waveform
                        const waveformDiv = document.getElementById("waveform");
                        while (waveformDiv.firstChild) {
                            waveformDiv.removeChild(waveformDiv.firstChild);
                            
                        }

                        createWaveform(buffer, audioFile);

                        console.log(`loaded audio file into buffer with id ${desc.id}`);
        
                    }
                }
            });
            console.log("Decoded audio data from file" + buffer.length);

        });
    }

    reader.readAsArrayBuffer(audioFile);


}

// if getDropFile is true, load audio file into buffers
function loadDroppedFile(){
    if(getDroppedFile){
        loadAudioFile(droppedFile);
        getDroppedFile = false;
    }
}

// timer to check if file has been dropped
setInterval(loadDroppedFile, 1000); 


function createWaveform(buffer, file){

    const url = URL.createObjectURL(file);

    const wavesurfer = WaveSurfer.create({
        container: '#waveform',
        waveColor: '#4F4A85',
        progressColor: '#383351',
        url: url,
      })


    wavesurfer.on('ready', function () {
        wavesurfer.play();
    });
}




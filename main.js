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
    
    //rnboDevice = [device, context];
    
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



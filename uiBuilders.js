console.log("uiBuilders.js loaded, loading UI...");


// -------  UI Elements  ------- //

// create and add Toggle Buttons for play and loop 
let fileSection = document.getElementById("file-section");

createToggleButton(fileSection, "loop", buttonCallback);
createToggleButton(fileSection, "play", buttonCallback);

// create Parent Divs for parameters
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
const parametersSection = document.getElementById("parameters-section");
parametersSection.appendChild(shiftParentDiv);
parametersSection.appendChild(delayParentDiv);
parametersSection.appendChild(lfoParentDiv);

// create sliders

// shift label
let shiftLabel = document.createElement("div");
shiftLabel.className = "parameter-label";
shiftLabel.id = "shift-label";
shiftLabel.innerHTML = "shift";
shiftParentDiv.appendChild(shiftLabel);
// shift parameters
createSlider(shiftParentDiv, "playbackrate", 0.001, 5, 0.01, sliderCallback);
createSlider(shiftParentDiv, "shiftamount", 0, 50, 0.01, sliderCallback);
createSlider(shiftParentDiv, "shiftwindow", 0, 100, 0.01, sliderCallback);

// delay label
let delayLabel = document.createElement("div");
delayLabel.className = "parameter-label";
delayLabel.id = "delay-label";
delayLabel.innerHTML = "delay";
delayParentDiv.appendChild(delayLabel);
// delay parameters
createSlider(delayParentDiv, "shiftdelaysend", 0, 1.0, 0.01, sliderCallback);
createSlider(delayParentDiv, "delayms", 0, 1000, 0.1, sliderCallback);  
createSlider(delayParentDiv, "delayfeedback", 0, 2.0, 0.01, sliderCallback);

// lfo label
let lfoLabel = document.createElement("div");
lfoLabel.className = "parameter-label";
lfoLabel.id = "lfo-label";
lfoLabel.innerHTML = "lfo panner";
lfoParentDiv.appendChild(lfoLabel); 
// lfo parameters
createSlider(lfoParentDiv, "lfofreq", 0, 15, 0.01, sliderCallback); 
createSlider(lfoParentDiv, "lfoamount", 0, 1.0, 0.01, sliderCallback);  



// output section parameters
let outputDiv = document.getElementById("output-section");
// output sliders and print button
createSlider(outputDiv, "wetdry", 0, 1.0, 0.01, sliderCallback);
createSlider(outputDiv, "output", 0, 1, 0.01, sliderCallback);
createPrintButton(outputDiv, "print", "output", "output.wav");


// let overlayParent = document.getElementById("overlays");
// createOverlay(overlayParent, "file-dragging");
// createOverlay(overlayParent, "printing");

// easy access to sliders   
let sliders = document.querySelectorAll("input[type=range]");


//----------------- UI BUILDERS -----------------//


// create a print button for the output buffer
function createPrintButton(parentDiv, name, bufferId, filename) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "button-container";
    outerDiv.id = "print-button-container";
    
    // create a button element
    const button = document.createElement("button");
    button.id = "print-button";
    button.textContent = name;
    button.addEventListener("click", () => { download(); });

    // Insert the button into the output element
    //const outputSection = document.getElementById("output-section");
    outerDiv.appendChild(button);
    parentDiv.appendChild(outerDiv);
}


// creates slider with given parameters and adds to section2
function createSlider(parentDiv, name, min, max, step, callback) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "slider-container";
    outerDiv.id = name;
    
    // Create a input slider element
    const slider = document.createElement("input");
    slider.className = "slider";
    slider.type = "range";
    slider.min = min;
    slider.max = max;
    slider.value = (max - min) / 2;
    slider.step = step;
    slider.id = name + "-slider";
    slider.name = name;
    slider.addEventListener("input", callback);

    // Create a label for the slider
    const label = document.createElement("label");
    label.className = "slider-label";
    label.textContent = name;
    label.htmlFor = name;

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
        slider.value = input.value;
        callback(event);
    });

    // Insert the slider and label into the parameters-section element
    const parametersSection = document.getElementById("parameters-section");
    outerDiv.appendChild(label);
    outerDiv.appendChild(input);
    outerDiv.appendChild(slider);
//    parametersSection.appendChild(outerDiv);
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
    button.textContent = name;
    button.addEventListener("click", callback);

    // Insert the button into the section2 element
    //const fileSection = document.getElementById("file-section");
    outerDiv.appendChild(button);
    //fileSection.appendChild(outerDiv);
    parentDiv.insertBefore(outerDiv, fileSection.firstChild);
}

// create preset select for path presets. Called from createRMBODevice() in rnbo-helpers.js
function createPresetSelect(parentDiv, presets, presetSelected) {
    

    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "preset-select-container"; 

    // create a label for the select
    const label = document.createElement("label");
    label.textContent = "Presets";
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

    
    outerDiv.appendChild(select);
    //parentDiv.appendChild(outerDiv);
    parentDiv.insertBefore(outerDiv, parentDiv.firstChild);
}


// -------  EVENT Callbacks  ------- //


// preset select callback
function presetSelected() {
    console.log("preset selected");
    // get value from select
    let presetName = this.value;
    
    console.log("selected preset: " + presetName + " " + typeof(presetName)); 
     
    // get preset object from name
    let preset = presets.find(p => p.name === presetName);
    console.log("preset object: " + preset.name);
    //console.log("preset: " + preset.preset);

    // set preset parameter in device
    if(device){
        // if we are playing we stop. 
        if(device.parametersById.get("play").value == 1){
            device.parametersById.get("play").value = 0;
        }

        device.setPreset(preset.preset);
        console.log("preset parameter set to: " + preset.name);
    }

    // update sliders
    updateSliders();
}


// update slider display values from device parameters
function updateSliders() {
    sliders.forEach((slider) => {
        const paramId = slider.id.replace('-slider', '');
        const param = device.parametersById.get(paramId);
        slider.value = param.value;
        const input = document.getElementById(slider.id + "-display");
        input.value = param.value;
    });
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
        option.value = presets[i].name;
        option.innerText = presets[i].name;
        select.appendChild(option);
    }

}

// callback for any slider, uses slider id to determine which parameter to set
// reference index.html createSlider() function for slider id naming convention
function sliderCallback() {
    const sliderId = this.id;
    const sliderValue = this.value;
    let paramId = sliderId.replace('-slider','');

    console.log(`Slider ${sliderId} value: ${sliderValue}`);
    

    // update input display 
    const input = document.getElementById(sliderId + "-display");
    input.value = sliderValue;

    // set parameter in device
    if(device){
        const param = device.parametersById.get(paramId);
        param.value = sliderValue;
        console.log(`${sliderId}: parameter ${paramId} set to: ${param.value}`);
    }
}

// callback for any toggle button, uses button id to determine which parameter to set
function buttonCallback() {
    const buttonId = this.id;
    
    console.log(`Button ${buttonId} clicked`);
    var paramId = buttonId.replace('-button','');

    // set parameter in device
    if(device){
        const param = device.parametersById.get(paramId);
        let currentValue = param.value;
        param.value = !currentValue;
        console.log(`${buttonId}: parameter ${paramId} set to: ${param.value}`);

        // update button text
        
        if(paramId == "play"){
            if(param.value == 1){
                this.innerHTML = "stop";
            } else {
                this.innerHTML = "play";
            }
        } else if(paramId == "loop") {
            if(param.value == 1){
                this.innerHTML = "stop looping";
            } else {
                this.innerHTML = "loop";
            }
        }
    }
}

// create Overlay
function createOverlay(parentDiv, name) {
    const overlay = document.createElement("div");
    overlay.id = name + "-overlay";
    overlay.className = "overlay";
    overlay.style.appearance = "none";
    
    // parentDiv.addEventListener("dragover", (event) => {
    //     console.log("dragover");
    //     event.preventDefault();
    //     overlay.style.display = "block";
    //     overlay.style.appearance = "auto";
    // });

    parentDiv.appendChild(overlay);
    return overlay;
}
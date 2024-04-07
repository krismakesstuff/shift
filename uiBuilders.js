console.log("uiBuilders.js loaded, loading UI...");


// -------  UI Elements  ------- //

 
createToggleButton("play", buttonCallback);
createToggleButton("loop", buttonCallback);

createSlider("output", 0, 100, 0.1, sliderCallback);
createSlider("playbackrate", 0.001, 5, 0.01, sliderCallback);
createSlider("wetdry", 0, 1.0, 0.01, sliderCallback);
createSlider("shiftamount", 0, 50, 0.01, sliderCallback);
createSlider("shiftwindow", 0, 100, 0.01, sliderCallback);
createSlider("shiftdelaysend", 0, 1.0, 0.01, sliderCallback);
createSlider("delayms", 0, 1000, 0.1, sliderCallback);
createSlider("delayfeedback", 0, 2.0, 0.01, sliderCallback);
createSlider("lfofreq", 0, 15, 0.01, sliderCallback);
createSlider("lfoamount", 0, 1.0, 0.01, sliderCallback);

createDownloadButton("Download Audio", "output", "output.wav");

let sliders = document.querySelectorAll("input[type=range]");


//----------------- UI BUILDERS -----------------//


// create a download button for the output buffer
function createDownloadButton(name, bufferId, filename) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "download-button-container";
    outerDiv.id = "download-button";
    
    // create a button element
    const button = document.createElement("button");
    button.id = "download-button";
    button.textContent = name;
    button.addEventListener("click", () => { download(); });

    // Insert the button into the section2 element
    const section2 = document.getElementById("section2");
    section2.appendChild(outerDiv);
    outerDiv.appendChild(button);
}


// creates slider with given parameters and adds to section2
function createSlider(name, min, max, step, callback) {
    // create outer div
    const outerDiv = document.createElement("div");
    outerDiv.className = "slider-container";
    outerDiv.id = name;
    
    
    // Create a slider element
    const slider = document.createElement("input");
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
    label.textContent = name;
    label.htmlFor = name;

    // create a input element that updates the slider value
    const input = document.createElement("input");
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

    // Insert the slider and label into the section2 element
    const section2 = document.getElementById("section2");
    section2.appendChild(outerDiv);
    outerDiv.appendChild(label);
    outerDiv.appendChild(slider);
    outerDiv.appendChild(input);
}

// create toggle butttons and adds to section2
function createToggleButton(name, callback) {
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
    const section2 = document.getElementById("section2");
    section2.appendChild(outerDiv);
    outerDiv.appendChild(button);
}

// create preset select for path presets. Called from createRMBODevice() in rnbo-helpers.js
function createPresetSelect(presets, presetSelected) {
    

    // create outer div
    const outerDiv = document.getElementById("preset-select-container");
    //outerDiv.id = "preset-select";

    // create a label for the select
    const label = document.createElement("label");
    label.textContent = "Presets";
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
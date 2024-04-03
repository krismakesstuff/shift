console.log("uiBuilders.js loaded, loading UI...");



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

// make sure to call include this in each slider callback function
// There's probably a better way to do this, but I'm hacking rn.
// function sliderCallback(slider) {
//     const sliderId = slider.id;
//     const sliderValue = slider.value;
//     console.log(`Slider ${sliderId} value: ${sliderValue}`);
//     // update input display 
//     const input = document.getElementById(sliderId + "-display");
//     input.value = sliderValue;
// }

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
    const outerDiv = document.createElement("div");
    outerDiv.className = "preset-select-container";
    outerDiv.id = "preset-select";


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

    // Insert the select into the section2 element
    const section2 = document.getElementById("section2");
    
    
    outerDiv.appendChild(select);
    //ection2.appendChild(outerDiv);
    section2.insertBefore(outerDiv, section2.firstChild);
}

//createPresetSelect(presets, presetSelected);


 
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

let sliders = document.querySelectorAll("input[type=range]");

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
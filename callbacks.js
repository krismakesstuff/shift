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

// preset select callback
function presetSelected(select) {
    console.log("preset selected");
    // get value from select
    let presetName = select.value;
    
    console.log("selected preset: " + presetName + " " + typeof(presetName)); 
     
    // set preset parameter in device
    // if(device){
    //     const presetParam = device.parametersById.get("preset");
    //     presetParam.value = presetName;
    //     console.log("preset parameter set to: " + presetParam.value);
    // }
}
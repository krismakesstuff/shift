
// // playbutton callback
// function playButtonClicked(){
//     console.log("play button clicked");
//     console.log(this.innerHTML);
//     // get button state, change button textt
//     let buttonState;
//     if(this.innerHTML == "Play"){
//         buttonState = "Play";
//         this.innerHTML = "Stop";
//     } else {
//         buttonState = "Stop";
//         this.innerHTML = "Play";
//     }

//     // set play parameter in device
//     if(device){
//         context.resume();
//         const playParam = device.parametersById.get("play");
//         if(buttonState == "Play"){
//             playParam.value = 1;
//         } else if(buttonState == "Stop") {
//             playParam.value = 0;
//         } else {
//             console.log("play button state error");
//         }
//         console.log("play parameter set to: " + playParam.value);
//     }
// }

// // loop button callback
// function loopButtonClicked(){
//     console.log("loop button clicked");
//     console.log(this.innerHTML);
//     // get button state, change button text
//     let buttonState;
//     if(this.innerHTML == "Loop"){
//         buttonState = "Loop";
//         this.innerHTML = "Unloop";
//     } else {
//         buttonState = "Unloop";
//         this.innerHTML = "Loop";
//     }

//     // set loop parameter in device
//     if(device){
//         const loopParam = device.parametersById.get("loop");
//         if(buttonState == "Loop"){
//             loopParam.value = 1;
//         } else if(buttonState == "Unloop") {
//             loopParam.value = 0;
//         } else {
//             console.log("loop button state error");
//         }
//         console.log("loop parameter set to: " + loopParam.value);
//     }
// }

// // wetdry slider callback
// function wetdryChanged() {
//     // get value from slider
//     let wetdryValue = this.value;

//     // set wetdry parameter in device
//     if(device){
//         const wetdryParam = device.parametersById.get("wetdry");
//         wetdryParam.value = wetdryValue;
//         console.log("wetdry parameter set to: " + wetdryParam.value);
//     }

//     sliderCallback(this);
// }

// // playback rate slider callback
// function playbackRateSliderChanged() {
//     // get value from slider
//     let playbackRateValue = this.value;

//     // set playback rate parameter in device
//     if(device){
//         const playbackRateParam = device.parametersById.get("playbackrate");
//         playbackRateParam.value = playbackRateValue;
//         console.log("playback rate parameter set to: " + playbackRateParam.value);
//     }

//     //sliderCallback(this);
// }

// // output slider callback
// function outputSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set output parameter in device
//     if(device){
//         const outputParam = device.parametersById.get(slider.id);
//         outputParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + outputParam.value);
//     }
//     sliderCallback(this);
// }

// // shift amount slider callback
// function shiftAmountCallback() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = slider.value;

//     // set shift amount parameter in device
//     if(device){
//         const shiftAmountParam = device.parametersById.get(slider.id);
//         shiftAmountParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + shiftAmountParam.value);
//     }
//     sliderCallback(this);
// }

// // shift window slider callback
// function shiftWindowSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set shift window parameter in device
//     if(device){
//         const shiftWindowParam = device.parametersById.get(slider.id);
//         shiftWindowParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + shiftWindowParam.value);
//     }
//     sliderCallback(this);
// }

// // shift delay send slider callback
// function shiftDelaySendSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set shift delay send parameter in device
//     if(device){
//         const shiftDelaySendParam = device.parametersById.get(slider.id);
//         shiftDelaySendParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + shiftDelaySendParam.value);
//     }
//     sliderCallback(this);
// }

// // delayms slider callback
// function delaymsSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set delayms parameter in device
//     if(device){
//         const delaymsParam = device.parametersById.get(slider.id);
//         delaymsParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + delaymsParam.value);
//     }
//     sliderCallback(this);
// }

// // delay feedback slider callback
// function delayFeedbackSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set delay feedback parameter in device
//     if(device){
//         const delayFeedbackParam = device.parametersById.get(slider.id);
//         delayFeedbackParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + delayFeedbackParam.value);
//     }
//     sliderCallback(this);
// }

// // lfofreq slider callback
// function lfofreqSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set lfofreq parameter in device
//     if(device){
//         const lfofreqParam = device.parametersById.get(slider.id);
//         lfofreqParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + lfofreqParam.value);
//     }
//     sliderCallback(this);
// }

// // lfoamount slider callback
// function lfoAmountSliderChanged() {
//     console.log("slider callback");
//     console.log(this.id + " " + this.value);
//     // get value from slider
//     let sliderValue = this.value;

//     // set lfoamount parameter in device
//     if(device){
//         const lfoamountParam = device.parametersById.get(slider.id);
//         lfoamountParam.value = sliderValue;
//         console.log(slider.id + " parameter set to: " + lfoamountParam.value);
//     }
//     sliderCallback(this);
// }




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
        device.setPreset(preset.preset);
        console.log("preset parameter set to: " + preset.name);
    }

    // update sliders
    updateSliders();
}
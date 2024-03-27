console.log('main.js');

async function setupRNBO() {
    [device, context] = await createRNBODevice(patchExportURL);
    console.log("RNBO Device Created");

    if(!device) {
        console.log("Device not found");
    }

    // // print out loaded device parameters
    // console.log("Device found");
    // device.parameters.forEach((parameter) => {
    //     console.log(parameter.id);
    //     console.log(parameter.name);
    //     console.log(parameter.value);
    // });
    
    // // set up event listeners for parameters
    // const playstateParam = device.parametersById.get("playstate");
    // playstateParam.changeEvent.subscribe((newPlayState) => {
    //     console.log("playstate changed event, state: " + newPlayState);
    // });


    // const currentBeat = device.parametersById.get("beat");
    // currentBeat.changeEvent.subscribe((newBeat) => {
    //     sendStepToDevice();
    //     setPlayhead();
    //     currentStep = newBeat;
    //     //console.log("current step: " + newBeat);
    // });

    // // load data buffer dependencies
    // const descriptions = device.dataBufferDescriptions;
    // descriptions.forEach((desc) => {
    //     if(!!desc.file){
    //         console.log("buffer with id: " + desc.id + " -references file: " + desc.file);
    //     } else {
    //         console.log(`buffer with id ${desc.id} references remote URL ${desc.url}`);
    //     }});

    // // Load the dependencies into the device
    // const results = await device.loadDataBufferDependencies(descriptions);
    // results.forEach(result => {
    //     if (result.type === "success") {
    //         console.log(`Successfully loaded buffer with id ${result.id}`);
    //     } else {
    //         console.log(`Failed to load buffer with id ${result.id}, ${result.error}`);
    //     }    
    // });

}

// We can't await here because it's top level, so we have to check later
// if device and context have been assigned
setupRNBO();
# shift

development in progress

#### a resampler
upload audio files and apply these effects:  
pitch shifter -> ping-pong delay -> lfo panner. 



# todo: 
- CHANGE: use web audio context to hold buffer and input audio into rnbo device. Get rid of wet and dry buffer and handle in js. This also allows for mic input and easier configuration with wavesurfer. 
- createMediaElementSource from audiocontext and pass to wavesurfer. 
- change max patch to accept audio input, instead of relying on the wet and dry buffers. 
- move wet and dry functionality to be handled in js.
- fix delay routing. It is going through the lfo and lfo amount is determining how loud the delay is. FIX.
- custom sliders
- midi input?

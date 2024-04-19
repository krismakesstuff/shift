# shift

development in progress

#### a resampler
upload audio files and apply these effects:  
pitch shifter -> ping-pong delay -> lfo panner. 



# todo: 
- CHANGE: use web audio context to hold buffer and input audio into rnbo device. Get rid of wet and dry buffer and handle in js. This also allows for mic input and easier configuration with wavesurfer. 
- createMediaElementSource from audiocontext and pass to wavesurfer. 
- move wet and dry functionality to be handled in js.
- when playing dropped file, make sure to account for mono and stereo. 
- custom slider colors
- keep playback rate parameter for loaded files?
- midi input?

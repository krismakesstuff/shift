# shift

A browser based audio pitch-shifting creative tool. Upload files and/or use your mic to create pitch shifting beauty (or mayhem). Then record the ouput to use in your project. Intended to be a free accessible tool for sound design or live performance.

The audio processing was built with Max, exported to a web target via RNBO. UI is vanilla JS.

#### How to use:
1. Drop an audio file and/or turn on your mic by clicking "mic". 
    - Make sure to use headphones while using the mic to avoid feedback. 
2. Find a setting you like 
3. Record the audio in real-time by clicking "record". When you stop recording, you'll be prompted to download the audio file.
    - the recorded file type depends on browser support. 
      - Chrome: .wav 
      - Safari: .mp4 
      - Firefox: .ogg
    
live build: https://krismakesstuff.github.io/shift/

demo videos: https://www.youtube.com/watch?v=JzvFm5qHVag&list=PLiuKEx-WKKKZu05uo1tQpQ7bexYUBEdnx 


#### Signal Flow diagram:
<img src="./shift-signalflow.drawio.svg">


# todo: 
- presets not working correctly
- account for mono files
- midi input?

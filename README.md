# shift

An audio pitch-shifting creative tool. The audio processing was built with Max, exported to a web target via RNBO. UI is vanilla JS.

live github build: https://krismakesstuff.github.io/shift/

demo videos: https://www.youtube.com/watch?v=JzvFm5qHVag&list=PLiuKEx-WKKKZu05uo1tQpQ7bexYUBEdnx 

#### how to use:
- Drop an audio file and/or turn on your mic by clicking "mic". 
  - Make sure to use headphones while using the mic to avoid feedback. 
- Find a sound you like 
- record the audio in real-time by clicking "record". When you stop  recording, you'll be prompted to download the audio file.

#### signal flow diagram:
<img src="./shift-signalflow.drawio.svg">


# todo: 
- download file not working on mac
- presets not working correctly
- account for mono files
- clean up code
- midi input?

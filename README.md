# shift

An audio pitch-shifting creative tool. The audio processing was built with Max, exported to a web target via RNBO. UI is vanilla JS.

live github build: https://krismakesstuff.github.io/shift/

demo videos: https://www.youtube.com/watch?v=JzvFm5qHVag&list=PLiuKEx-WKKKZu05uo1tQpQ7bexYUBEdnx 

#### How to use:
1. Drop an audio file and/or turn on your mic by clicking "mic". 
    - Make sure to use headphones while using the mic to avoid feedback. 
2. Find an effect setting you like 
3. Record the audio in real-time by clicking "record". When you stop recording, you'll be prompted to download the audio file.
    - Note: On Safari it's an .mp4, on everything else it's a .wav. 

#### Signal Flow diagram:
<img src="./shift-signalflow.drawio.svg">


# todo: 
- presets not working correctly
- account for mono files
- clean up code
- midi input?

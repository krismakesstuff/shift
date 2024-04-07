import * as THREE from 'three';

console.log("visualizer.js loaded");

const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

const renderer = new THREE.WebGLRenderer();
renderer.setSize( window.innerWidth, window.innerHeight );
//document.body.appendChild( renderer.domElement );
// put as first child of body
document.body.insertBefore(renderer.domElement, document.body.firstChild);

const geometry = new THREE.BoxGeometry( 1, 1, 1 );
const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
const cube = new THREE.Mesh( geometry, material );
scene.add( cube );

// make cube for shift 
const shiftGemoetry = new THREE.BoxGeometry( 1, 1, 1 );
const shiftMaterial = new THREE.MeshBasicMaterial( { color: 0xff0000 } );
const shiftCube = new THREE.Mesh( shiftGemoetry, shiftMaterial );
scene.add( shiftCube );

// add text for shift parameters


// make cube for delay
const delayGemoetry = new THREE.BoxGeometry( 1, 1, 1 );
const delayMaterial = new THREE.MeshBasicMaterial( { color: 0x0000ff } );
const delayCube = new THREE.Mesh( delayGemoetry, delayMaterial );
scene.add( delayCube );

// make cube for lfo
const lfoGemoetry = new THREE.BoxGeometry( 1, 1, 1 );
const lfoMaterial = new THREE.MeshBasicMaterial( { color: 0xffff00 } );
const lfoCube = new THREE.Mesh( lfoGemoetry, lfoMaterial );
scene.add( lfoCube );

// offset each cube's position
cube.position.x = -2;
shiftCube.position.x = 2;
delayCube.position.x = 0;
lfoCube.position.x = 4;



camera.position.z = 5;

let rmsL = 0;
let rmsR = 0;

let playbackrate = 1;
let shiftamount = 0;
let shiftwindow = 0;
let delaysend = 0;
let delayms = 0;
let delayfeedback = 0;

let lfofreq = 0;
let lfoamount = 0;


function getRMSValues(){
    if(device){
        rmsL = device.parametersById.get("rmsL").value;
        rmsR = device.parametersById.get("rmsR").value;
        //console.log(`rmsL: ${rmsL.value}, rmsR: ${rmsR.value}`);
    }
}

function getShiftValues(){
    if(device){
        shiftamount = device.parametersById.get("shiftamount").value;
        //console.log(`shiftamount: ${shiftamount}`);
        playbackrate = device.parametersById.get("playbackrate").value;
        shiftwindow = device.parametersById.get("shiftwindow").value;


    }
}

function getDelayValues(){
    if(device){
        delayms = device.parametersById.get("delayms").value;
        delayfeedback = device.parametersById.get("delayfeedback").value;
        delaysend = device.parametersById.get("shiftdelaysend").value;
        //console.log(`delayms: ${delayms}, delayfeedback: ${delayfeedback}`);
    }
}

function getLFOValues(){
    if(device){
        lfofreq = device.parametersById.get("lfofreq").value;
        lfoamount = device.parametersById.get("lfoamount").value;
        //console.log(`lfofreq: ${lfofreq}, lfoamount: ${lfoamount}`);
    }
}

let delta = 0;


function animate() {
    requestAnimationFrame( animate );
    
    getRMSValues();
    cube.rotation.x += rmsL;
    cube.rotation.y += rmsR;

    getShiftValues();
    shiftCube.rotation.x += 0.01 * playbackrate;
    shiftCube.rotation.y += 0.01 * shiftamount; 
    //shiftCube.rotation.z += 0.01 * shiftwindow;
    
    
    shiftCube.position.y = shiftwindow;

    getDelayValues();
    delayCube.rotation.x += delayms; 
    delayCube.rotation.y += delayfeedback; 

    getLFOValues();
    lfoCube.rotation.x += lfofreq;
    lfoCube.rotation.y += lfoamount; 

	renderer.render( scene, camera );

}


animate();
import * as THREE from 'three';

import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
//import { CSS2DRenderer, CSS2DObject } from 'three/addons/renderers/CSS2DRenderer.js';
import { RectAreaLightHelper } from 'three/addons/helpers/RectAreaLightHelper.js';
import { RectAreaLightUniformsLib } from 'three/addons/lights/RectAreaLightUniformsLib.js';
import { RoundedBoxGeometry } from 'three/addons/geometries/RoundedBoxGeometry.js';
import { FontLoader } from 'three/addons/loaders/FontLoader.js';
import { TextGeometry } from 'three/addons/geometries/TextGeometry.js';

console.log("visualizer.js loaded");

const raycaster = new THREE.Raycaster();
const mouseClick = new THREE.Vector2();
const mouseMove = new THREE.Vector2();

const showLightHelpers = false;
const showAxesHelper = true;

const rendererH = 400; 

// make the scene and camera
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );
//const camera = new THREE.OrthographicCamera( window.innerWidth / - 2, window.innerWidth / 2, window.innerHeight / 2, window.innerHeight / - 2, 1, 1000 );

// axes helper

if(showAxesHelper){
    const axesHelper = new THREE.AxesHelper( 5 );
    scene.add( axesHelper );
}
// init rectArea Light Uniforms
RectAreaLightUniformsLib.init();

// make the renderer
const renderer = new THREE.WebGLRenderer();
renderer.shadowMap.enabled = true;
renderer.setSize( window.innerWidth, window.innerHeight );

// Ambient light
const ambientLight = new THREE.AmbientLight( 0xFFFFFF ); // soft white light
scene.add( ambientLight );

// directional light
const directionalLight = new THREE.DirectionalLight( 0xffffff, 0.33 );
directionalLight.position.set( -5, 5, 5);
directionalLight.castShadow = true;
let shadowcamSize = 50;
let shadowDefinition = 2048;
directionalLight.shadow.mapSize.width = shadowDefinition;
directionalLight.shadow.mapSize.height = shadowDefinition;
directionalLight.shadow.camera.left = -shadowcamSize;
directionalLight.shadow.camera.right = shadowcamSize;
directionalLight.shadow.camera.top = shadowcamSize;
directionalLight.shadow.camera.bottom = -shadowcamSize;
directionalLight.shadow.camera.far = 50;
directionalLight.shadow.camera.near = 0.1;
scene.add( directionalLight );

if(showLightHelpers){
    const helper = new THREE.CameraHelper( directionalLight.shadow.camera );
    scene.add( helper );
}
document.body.insertBefore(renderer.domElement, document.body.firstChild);
//document.body.appendChild( labelRenderer.domElement );

// point cloud makers
function generatePointCloudGeometry( color, width, length ) {

    const geometry = new THREE.BufferGeometry();
    const numPoints = width * length;

    const positions = new Float32Array( numPoints * 3 );
    const colors = new Float32Array( numPoints * 3 );

    let k = 0;

    for ( let i = 0; i < width; i ++ ) {

        for ( let j = 0; j < length; j ++ ) {

            const u = i / width;
            const v = j / length;
            const x = u - 0.5;
            const y = ( Math.cos( u * Math.PI * 4 ) + Math.sin( v * Math.PI * 8 ) ) / 20;
            const z = v - 0.5;

            positions[ 3 * k ] = x;
            positions[ 3 * k + 1 ] = y;
            positions[ 3 * k + 2 ] = z;

            const intensity = ( y + 0.1 ) * 5;
            colors[ 3 * k ] = color.r * intensity;
            colors[ 3 * k + 1 ] = color.g * intensity;
            colors[ 3 * k + 2 ] = color.b * intensity;

            k ++;

        }

    }

    geometry.setAttribute( 'position', new THREE.BufferAttribute( positions, 3 ) );
    geometry.setAttribute( 'color', new THREE.BufferAttribute( colors, 3 ) );
    geometry.computeBoundingBox();

    return geometry;

}

function generatePointcloud( color, width, length ) {

    const geometry = generatePointCloudGeometry( color, width, length );
    const material = new THREE.PointsMaterial( { size: pointSize, vertexColors: true } );
    //const material = new THREE.MeshPhongMaterial( { size: pointSize, vertexColors: true } );
    //material.castShadow = true;
    return new THREE.Points( geometry, material );

}

function generateIndexedPointcloud( color, width, length ) {

    const geometry = generatePointCloudGeometry( color, width, length );
    const numPoints = width * length;
    const indices = new Uint16Array( numPoints );

    let k = 0;

    for ( let i = 0; i < width; i ++ ) {

        for ( let j = 0; j < length; j ++ ) {

            indices[ k ] = k;
            k ++;

        }

    }

    geometry.setIndex( new THREE.BufferAttribute( indices, 1 ) );

    const material = new THREE.PointsMaterial( { size: pointSize, vertexColors: true } );

    return new THREE.Points( geometry, material );

}

function generateIndexedWithOffsetPointcloud( color, width, length ) {

    const geometry = generatePointCloudGeometry( color, width, length );
    const numPoints = width * length;
    const indices = new Uint16Array( numPoints );

    let k = 0;

    for ( let i = 0; i < width; i ++ ) {

        for ( let j = 0; j < length; j ++ ) {

            indices[ k ] = k;
            k ++;

        }

    }

    geometry.setIndex( new THREE.BufferAttribute( indices, 1 ) );
    geometry.addGroup( 0, indices.length );

    const material = new THREE.PointsMaterial( { size: pointSize, vertexColors: true } );

    return new THREE.Points( geometry, material );

}

// make pointcloud
let pointclouds;

const pcWidth = 10;
const pcLength = 10;
const pcSize = 5;
const pointSize = 0.5;

const pcHeight = 1;

const pcX = 2;
const pcY = 2;
const pcZ = -2;

const pcBuffer = generatePointcloud( new THREE.Color( pcX, 0, 0 ), pcSize, pcSize );
pcBuffer.scale.set( pcSize/2 , pcSize, pcSize );
pcBuffer.position.set( - 5, pcHeight, pcZ );
scene.add( pcBuffer );

const pcIndexed = generateIndexedPointcloud( new THREE.Color( 0, pcY, 0 ), pcSize, pcSize );
pcIndexed.scale.set( pcSize/2, pcSize, pcSize );
pcIndexed.position.set( 0, pcHeight, pcZ );
scene.add( pcIndexed );

const pcIndexedOffset = generateIndexedWithOffsetPointcloud( new THREE.Color( 0, pcY, pcZ ), pcSize, pcSize );
pcIndexedOffset.scale.set( pcSize/2, pcSize, pcSize );
pcIndexedOffset.position.set( 5, pcHeight, pcZ );
scene.add( pcIndexedOffset );

pointclouds = [ pcBuffer, pcIndexed, pcIndexedOffset ];

// parameter section dimensions
let numParams = 3;
let parameterWidth = 5;
let parameterHeight = 3; 
let parameterDepth = 0.1;
let parameterSegments = 2;
let parameterRoundness = 0.5;
// colors
let parameterColor = 0xD3D3D3;

// make parameterBackgroundGroup
function createParameterBackgroundGroup(name, x, y, z){
    const parameterBackgroundGroup = new THREE.Group();

    // make the parameter background mesh
    const parameterBackgroundGeometry = new RoundedBoxGeometry( parameterWidth, parameterHeight, parameterDepth, parameterSegments, parameterRoundness );
    const parameterBackgroundMaterial = new THREE.MeshStandardMaterial( parameterColor );
    const parameterBackgroundCube = new THREE.Mesh( parameterBackgroundGeometry, parameterBackgroundMaterial );
    parameterBackgroundCube.position.set(x, y, z);
    parameterBackgroundCube.castShadow = true;
    parameterBackgroundCube.receiveShadow = true;
    parameterBackgroundCube.name = name;
    parameterBackgroundCube.userData = { id: name + "-parameter-background"};

    // add to parameterBackgroundGroup
    parameterBackgroundGroup.add(parameterBackgroundCube);

    return parameterBackgroundGroup;
}

// make parameterGroup text 3D Object
// function createParameterGroupText(name, x, y, z){
//     const parameterGroupText = new THREE.Group();

//     const parameterText = new THREE.TextGeometry( name, {
//         font: font,
//         size: 0.1,
//         height: 0.01,
//         curveSegments: 12,
//         bevelEnabled: false,
//         bevelThickness: 0.01,
//         bevelSize: 0.01,
//         bevelOffset: 0,
//         bevelSegments: 5
//     });

//     const parameterTextMaterial = new THREE.MeshPhongMaterial( { color: 0x000000 } );
//     const parameterTextMesh = new THREE.Mesh( parameterText, parameterTextMaterial );
//     parameterTextMesh.position.set(x, y, z);
//     parameterTextMesh.castShadow = true;
//     parameterTextMesh.receiveShadow = true;

//     // add to parameterGroupText
//     parameterGroupText.add(parameterTextMesh);

//     return parameterGroupText;
// }

// -- -- slider dimensions -- -- 
// track
let sliderTrackWidth = 4.2;
let sliderTrackHeight = 0.25;
let sliderTrackDepth = 0.1;
let sliderTrackSegments = 2;
let sliderTrackRoundness = 0.5;
// thumb
let sliderThumbSize = 0.25;
let sliderThumbHeight = 0.33;
let sliderThumbZOffset = sliderTrackDepth + 0.01;
// colors
let sliderTrackColor = 0x161A1D;
let sliderThumbColor = 0xE5383B;

// make sliderGroup
function createSliderGroup(name, x, y, z){
    const sliderGroup = new THREE.Group();

    // make the slider track mesh
    const sliderTrackGeometry = new RoundedBoxGeometry( sliderTrackWidth, sliderTrackHeight, sliderTrackDepth, sliderTrackSegments, sliderTrackRoundness );
    //const sliderTrackMaterial = new THREE.MeshBasicMaterial( { color: sliderTrackColor } );
    const sliderTrackMaterial = new THREE.MeshPhongMaterial( { color: sliderTrackColor } );
    const sliderTrackCube = new THREE.Mesh( sliderTrackGeometry, sliderTrackMaterial );
    sliderTrackCube.position.set(x, y, z);
    sliderTrackCube.castShadow = true;
    sliderTrackCube.receiveShadow = false;
    sliderTrackCube.name = name;
    sliderTrackCube.userData = { id: name + "-slider-track"};
    // make the slider thumb mesh
    //const sliderThumbGeometry = new THREE.CircleGeometry( sliderThumbSize, 32 );
    const sliderThumbGeometry = new THREE.CylinderGeometry(sliderThumbSize + 0.1, sliderThumbSize, sliderThumbHeight, 32);
    
    const sliderThumbMaterial = new THREE.MeshStandardMaterial( { color: sliderThumbColor } );
    const sliderThumbCube = new THREE.Mesh( sliderThumbGeometry, sliderThumbMaterial );
    sliderThumbCube.roughness = 0;
    sliderThumbCube.metalness = 0;
    sliderThumbCube.name = name;
    sliderThumbCube.userData = { id: name + "-slider-thumb"};
    sliderThumbCube.castShadow = true;
    sliderThumbCube.receiveShadow = false;
    // position the thumb above the track
    sliderThumbCube.position.set(x, y, z + sliderThumbZOffset);
    sliderThumbCube.rotation.x = Math.PI / 2;
    // make slider group
    sliderGroup.add(sliderTrackCube);
    sliderGroup.add(sliderThumbCube);

    return sliderGroup;
}


// make shift group
const shiftGroup = new THREE.Group();


const shiftBackgroundGroup = createParameterBackgroundGroup("shift", 0, 3, -0.1);

const shiftPlaybackRateGroup = createSliderGroup("playbackrate", 0, 3.8, 0);
const shiftSliderGroup = createSliderGroup("shiftamount", 0, 3, 0);
const shiftWindowSliderGroup = createSliderGroup("shiftwindow", 0, 2.2, 0);
// add sliders to sliderGroup

shiftGroup.add( shiftBackgroundGroup );
shiftGroup.add( shiftPlaybackRateGroup );
shiftGroup.add( shiftSliderGroup );
shiftGroup.add( shiftWindowSliderGroup );
scene.add( shiftGroup );


// make delay group 
const delayGroup = new THREE.Group();

let delayGroupOffset = parameterWidth + 0.5;

const delayBackgroundGroup = createParameterBackgroundGroup("delay", delayGroupOffset, 3, -0.1);

const delayDelaySendGroup = createSliderGroup("shiftdelaysend", delayGroupOffset, 3.8, 0);
const delayDelayMsGroup = createSliderGroup("delayms", delayGroupOffset, 3, 0);
const delayFeedbackGroup = createSliderGroup("delayfeedback", delayGroupOffset, 2.2, 0);

// add sliders to sliderGroup
delayGroup.add( delayBackgroundGroup );
delayGroup.add( delayDelaySendGroup );
delayGroup.add( delayDelayMsGroup );
delayGroup.add( delayFeedbackGroup );

scene.add( delayGroup );

// make lfo group
const lfoGroup = new THREE.Group();

let lfoGroupOffset = 2 * (parameterWidth + 0.5);

const lfoBackgroundGroup = createParameterBackgroundGroup("lfo", lfoGroupOffset, 3, -0.1);

const lfoFreqGroup = createSliderGroup("lfofreq", lfoGroupOffset, 3.8, 0);
const lfoAmountGroup = createSliderGroup("lfoamount", lfoGroupOffset, 3, 0);

// add sliders to sliderGroup
lfoGroup.add( lfoBackgroundGroup );
lfoGroup.add( lfoFreqGroup );   
lfoGroup.add( lfoAmountGroup );

scene.add( lfoGroup );




// make a floor

let floorWidth = 30;
let floorHeight = 20;
let floorDepth = 0.6;

let floorX = parameterWidth + 0.5;    
let floorY = 0;
let floorZ = 0;

const geoFloor = new THREE.BoxGeometry( floorWidth, floorDepth, floorHeight);
const matStdFloor = new THREE.MeshStandardMaterial( { color: 0xbcbcbc, roughness: 0.1, metalness: 0 } );
const matPhongFloor = new THREE.MeshPhongMaterial( { color: 0xbcbcbc } );   
const mshStdFloor = new THREE.Mesh( geoFloor, matStdFloor );
mshStdFloor.castShadow = false;
mshStdFloor.receiveShadow = true;
mshStdFloor.position.set( floorX, floorY, floorZ);
scene.add( mshStdFloor );

// make the orbital controls
const controls = new OrbitControls( camera, renderer.domElement );

// add a rect light
const rectLightwidth = 20;
const rectLightheight = 10;
const intensity = 0.5;

//const rectLight = new THREE.RectAreaLight(  0xBA181B, intensity,  width, height );
const rectLight = new THREE.RectAreaLight(  0xE5383B, intensity,  rectLightwidth, rectLightheight );
rectLight.position.set( 5, 5, 4 );
//scene.add( rectLight );

const intensity2 = 1;
const rectLight2 = new THREE.RectAreaLight(  0x161A1D, intensity2,  rectLightwidth, rectLightheight );
rectLight2.position.set( 5, 5, -4 );
rectLight2.rotation.y = Math.PI;
//scene.add( rectLight2 );

const rectLightHelper1 = new RectAreaLightHelper( rectLight );
const rectLightHelper2 = new RectAreaLightHelper( rectLight2 );
//scene.add( rectLightHelper1 );
//scene.add( rectLightHelper2 );
//scene.add( rectLight )


// set initial camera position
//camera.lookAt(delayBackgroundGroup.position);
camera.position.set(parameterWidth + 0.5, 5, 10 );
camera.rotateY(Math.PI);

controls.update();


// add mouse event listeners
document.addEventListener('mousedown', mouseDownCallback, false);
document.addEventListener('mouseup', mouseUpCallback, false);
//document.addEventListener('mousemove', mouseMoveCallback, false);

function mouseDownCallback(event){
    mouseClick.x = ( event.clientX / window.innerWidth ) * 2 - 1;
    mouseClick.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

    console.log("mouseclick: " + mouseClick.x + ", " + mouseClick.y)

    raycaster.setFromCamera( mouseClick, camera );

    const intersects = raycaster.intersectObjects( shiftGroup.children );

    if ( intersects.length > 0 ) {
        for(let i = 0; i < intersects.length; i++)
        {
            const object = intersects[i].object;  
            console.log("intersected object: " + object.name);  
            switch(object.name){
                case "shiftamount":
                    console.log("intersected shiftamount slider");
                    console.log('objectid: ' + object.userData.id);
                    controls.enabled = false;
                    setThumbPosition(mouseClick, object.parent);
                    break;
                case "shiftwindow":
                    console.log("intersected shiftwindow slider");
                    console.log('objectid: ' + object.userData.id);
                    controls.enabled = false;
                    setThumbPosition(mouseClick, object.parent);
                    break;
                default:
                    console.log("no slider clicked");
                    controls.enabled = true;
                    break;
                }   
        }
    }
}

function mouseMoveCallback(event){
    console.log("mouse move");
    mouseMove.x = ( event.clientX / window.innerWidth ) * 2 - 1;
    mouseMove.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

    console.log("mouseMove: " + mouseMove.x + ", " + mouseMove.y)

    raycaster.setFromCamera( mouseMove, camera );

    const intersects = raycaster.intersectObjects( shiftGroup.children );

    
    for(let i = 0; i < intersects.length; i++)
    {
        const object = intersects[i].object;
        switch(object.name){
            case "shiftamount":
                console.log("intersected shiftamount slider");
                console.log('objectid: ' + object.userData.id);
                setThumbPosition(mouseMove, object.parent);
                break;
            case "shiftwindow":
                console.log("intersected shiftwindow slider");
                console.log('objectid: ' + object.userData.id);
                setThumbPosition(mouseMove, object.parent);
                break;
            default:
                console.log("no slider clicked");
                break;
            }
    }
    
}

function mouseUpCallback(event){
    console.log("mouse up");
    controls.enabled = true;
}

// set thumb position of slider from mouseEvent

function setThumbPosition(pointer, sliderGroup){
    // get the thumb object
    const thumb = sliderGroup.children[1];
    // set the thumb position
    thumb.position.x = pointer.x;
    //thumb.position.y = pointer.y;
    //thumb.position.z = 0.26;
}


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
    }
}

function getShiftValues(){
    if(device){
        shiftamount = device.parametersById.get("shiftamount").value;
        playbackrate = device.parametersById.get("playbackrate").value;
        shiftwindow = device.parametersById.get("shiftwindow").value;
    }
}

function getDelayValues(){
    if(device){
        delayms = device.parametersById.get("delayms").value;
        delayfeedback = device.parametersById.get("delayfeedback").value;
        delaysend = device.parametersById.get("shiftdelaysend").value;
    }
}

function getLFOValues(){
    if(device){
        lfofreq = device.parametersById.get("lfofreq").value;
        lfoamount = device.parametersById.get("lfoamount").value;
    }
}




let delta = 0;

function animate() {
    requestAnimationFrame( animate );
    
    // update the controls
    controls.update();

    // update from device parameters
    // TODO: normalize values to make sense
    // getRMSValues();
    // cube.rotation.x += rmsL;
    // cube.rotation.y += rmsR;

    // getShiftValues();
    // shiftCube.rotation.x += 0.01 * playbackrate;
    // shiftCube.rotation.y += 0.01 * shiftamount; 
    // //shiftCube.rotation.z += 0.01 * shiftwindow;
    // shiftCube.position.y = shiftwindow;
    

    // getDelayValues();
    // delayCube.rotation.x += delayms; 
    // delayCube.rotation.y += delayfeedback; 

    // getLFOValues();
    // lfoCube.rotation.x += lfofreq;
    // lfoCube.rotation.y += lfoamount; 

	renderer.render( scene, camera );
    //labelRenderer.render( scene, camera );
}


animate();

window.addEventListener('resize', onWindowResize, false);

function onWindowResize(){
    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();
    renderer.setSize( window.innerWidth, window.innerHeight );
    //labelRenderer.setSize( window.innerWidth, rendererH );
}
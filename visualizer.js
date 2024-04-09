import * as THREE from 'three';

import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
import { CSS2DRenderer, CSS2DObject } from 'three/addons/renderers/CSS2DRenderer.js';
import { RectAreaLightHelper } from 'three/addons/helpers/RectAreaLightHelper.js';
import { RectAreaLightUniformsLib } from 'three/addons/lights/RectAreaLightUniformsLib.js';
import { RoundedBoxGeometry } from 'three/addons/geometries/RoundedBoxGeometry.js';


console.log("visualizer.js loaded");

const raycaster = new THREE.Raycaster();
const mouseClick = new THREE.Vector2();
const mouseMove = new THREE.Vector2();



const rendererH = 400; 

// make the scene and camera
const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );
//const camera = new THREE.OrthographicCamera( window.innerWidth / - 2, window.innerWidth / 2, window.innerHeight / 2, window.innerHeight / - 2, 1, 1000 );

// axes helper
const axesHelper = new THREE.AxesHelper( 5 );
scene.add( axesHelper );

// init rectArea Light Uniforms
RectAreaLightUniformsLib.init();

// make the renderer
const renderer = new THREE.WebGLRenderer();
renderer.shadowMap.enabled = true;
renderer.setSize( window.innerWidth, window.innerHeight );

// Ambient light
const ambientLight = new THREE.AmbientLight( 0x404040 ); // soft white light
//scene.add( ambientLight );

// directional light
const directionalLight = new THREE.DirectionalLight( 0xffffff, 1 );
directionalLight.position.set( -4, 10, 3);
scene.add( directionalLight );
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

const helper = new THREE.CameraHelper( directionalLight.shadow.camera );
scene.add( helper );

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

const pcBuffer = generatePointcloud( new THREE.Color( 1, 0, 0 ), pcSize, pcSize );
pcBuffer.scale.set( pcSize/2 , pcSize, pcSize );
pcBuffer.position.set( - 5, pcHeight, 0 );
scene.add( pcBuffer );

const pcIndexed = generateIndexedPointcloud( new THREE.Color( 0, 1, 0 ), pcSize, pcSize );
pcIndexed.scale.set( pcSize/2, pcSize, pcSize );
pcIndexed.position.set( 0, pcHeight, 0 );
scene.add( pcIndexed );

const pcIndexedOffset = generateIndexedWithOffsetPointcloud( new THREE.Color( 0, 1, 1 ), pcSize, pcSize );
pcIndexedOffset.scale.set( pcSize/2, pcSize, pcSize );
pcIndexedOffset.position.set( 5, pcHeight, 0 );
scene.add( pcIndexedOffset );

pointclouds = [ pcBuffer, pcIndexed, pcIndexedOffset ];


// make sliderGroup
function createSliderGroup(name, x, y, z){
    const sliderGroup = new THREE.Group();

    // slider dimensions
    // track
    let sliderTrackWidth = 5;
    let sliderTrackHeight = 0.75;
    let sliderTrackDepth = 0.1;
    let sliderTrackSegments = 2;
    let sliderTrackRoundness = 0.5;
    // thumb
    let sliderThumbSize = 0.25;
    let sliderThumbZOffset = sliderTrackDepth + 0.01;
    // colors
    let sliderTrackColor = 0x00ff00;
    let sliderThumbColor = 0xff0000;

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
    const sliderThumbGeometry = new THREE.CircleGeometry( sliderThumbSize, 32 );
    const sliderThumbMaterial = new THREE.MeshBasicMaterial( { color: sliderThumbColor } );
    const sliderThumbCube = new THREE.Mesh( sliderThumbGeometry, sliderThumbMaterial );
    sliderThumbCube.name = name;
    sliderThumbCube.userData = { id: name + "-slider-thumb"};

    // position the thumb above the track
    sliderThumbCube.position.set(x, y, z + sliderThumbZOffset);
    // make slider group
    sliderGroup.add(sliderTrackCube);
    sliderGroup.add(sliderThumbCube);

    return sliderGroup;
}


const sliderGroup = new THREE.Group();

let sliderY = 3.5;
const shiftSliderGroup = createSliderGroup("shiftamount", 0, sliderY, 0);
const shiftWindowSliderGroup = createSliderGroup("shiftwindow", 0, sliderY - 1, 0);

// add sliders to sliderGroup

sliderGroup.add( shiftSliderGroup );
sliderGroup.add( shiftWindowSliderGroup );
scene.add( sliderGroup );

//shiftSliderGroup.position.set(0, 0, 0);
//scene.add( shiftSliderGroup );



// make a floor

let floorWidth = 10;
let floorHeight = 10;
let floorDepth = 0.6;

const geoFloor = new THREE.BoxGeometry( floorWidth, floorDepth, floorHeight);
const matStdFloor = new THREE.MeshStandardMaterial( { color: 0xbcbcbc, roughness: 0.1, metalness: 0 } );
const matPhongFloor = new THREE.MeshPhongMaterial( { color: 0xbcbcbc } );   
const mshStdFloor = new THREE.Mesh( geoFloor, matStdFloor );
mshStdFloor.castShadow = false;
mshStdFloor.receiveShadow = true;
mshStdFloor.position.set(0, -floorDepth, 0);
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
camera.position.set(0, 3, 5 );
//camera.lookAt(6, 6, 6);
camera.lookAt(0, 3, 3);
//camera.lookAt(scene.position);

controls.update();


// add mouse event listeners
document.addEventListener('mousedown', mouseDownCallback, false);
document.addEventListener('mouseup', mouseUpCallback, false);
document.addEventListener('mousemove', mouseMoveCallback, false);

function mouseDownCallback(event){
    console.log("mouse down");
    mouseClick.x = ( event.clientX / window.innerWidth ) * 2 - 1;
    mouseClick.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

    console.log("mouseClick: " + mouseClick.x + ", " + mouseClick.y)

    raycaster.setFromCamera( mouseClick, camera );

    const intersects = raycaster.intersectObjects( sliderGroup.children );

    if ( intersects.length > 0 ) {
        for(let i = 0; i < intersects.length; i++)
        {
            const object = intersects[i].object;    
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

    const intersects = raycaster.intersectObjects( sliderGroup.children );

    if ( intersects.length > 0 ) {
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
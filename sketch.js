var img;

function preload(){
    img = loadImage('ccP.jpg')
}

function setup() {
     image(img, 10, 10);
  
    // var d = pixelDensity();
    // var halfImage = 4 * (img.width * d) * (img.height * d / 2);
    // loadPixels();
    // for (var i = 0; i < halfImage; i++) {
    //   pixels[i + halfImage] = pixels[i];
    // }
    // updatePixels();
}

function draw() {
  ellipse(50, 50, 80, 80);
}
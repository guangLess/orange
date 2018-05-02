PImage myImage;
PImage img;
int pointillize = 26;
int cellsize = 2; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

void setup() {
  size(800, 800);
  smooth();
  myImage = loadImage("apple-wave.png");//("wolf.jpg");
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize; 
  //fill(255,255,255);
  //myImage = loadImage("cc.png");
}

void draw() {
  background(0);
    rect(30,30,30,30);
  loadPixels(); 
  myImage.loadPixels();
  
  float param = map(mouseY, 30, height, 1, 10);
  float paramO = map(mouseX, 30, width, 1, 10);

  
  //print(param);
  for (float y = 0; y < height - 10; y = y+param) {
   for (float x = 0; x < width; x = x+ paramO /* random(param)*/) {
      float loc = x + y*width;
      int convert = int(loc);
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      
      float r = red(myImage.pixels[convert]);
      float g = green(myImage.pixels[convert]);
      float b = blue(myImage.pixels[convert]);
      //214 188 144
      
      //pixels[convert] = color(r, g, b); 

    }  
  }
    updatePixels();
}


  //image(myImage, 0, 0);
  
  /*
  int x = int(random(myImage.width));
  int y = int(random(myImage.height));
  int loc = x + y*myImage.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(myImage.pixels[loc]);
  float g = green(myImage.pixels[loc]);
  float b = blue(myImage.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,50);
  rect(x,y,pointillize,pointillize);
 */
  /*
  // Begin loop for columns
  for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (mouseX/(float)width) * hue(img.pixels[loc]) - 100.0;
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x,y,z);
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0,0,cellsize,cellsize);
      popMatrix();
    }
  }*/

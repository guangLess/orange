PImage myImage;
PImage img;
int pointillize = 26;
int cellsize = 2; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
float xCopy, yCopy;
float angle = PI;
float curve;

void setup() {
  size(800, 800);
  smooth();
  stroke(200);
  strokeWeight(0.5);
  myImage = loadImage("apple-wave.png");//("wolf.jpg");
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize; 
  //fill(255,255,255);
  //myImage = loadImage("cc.png");
}

void draw() {
  background(0, 59,44);//(100); // 0, 59,44
  //line(0,0,width,height);
  //rect(30,30,30,30);
  //if(angle == 6){angle = 0;}
  curve = 6+ (5 * cos(angle));
  angle += 0.0001;


  loadPixels(); 
  myImage.loadPixels();
  float param = map(mouseY, 30, height, 1, 10);
  float paramO = map(mouseX, 30, width, 1, 10);


  //print(">",curve);
  for (float y = 0; y < height - 10 ; y = y+curve) {//+curve
   for (float x = 0; x < width; x = x+paramO) { //paramO
      //print(int(curve) + "<------>");
      float loc = x + y*width;
      //float loc = x + (y+curve)*width;
      int convert = int(loc);
      //print(x,y);
      

       //xCopy = x;
       //yCopy = y;
      
      float r = red(myImage.pixels[convert]);
      float g = green(myImage.pixels[convert]);
      float b = blue(myImage.pixels[convert]);
      //214 188 144
      if((r== 214) && (g==188) && (b == 144)){
          //print(round(x) + "--" + round(y));
          //print(xCopy + "+" + yCopy);
          pixels[convert] = color(r, g, b);
          
          //int moveAble = convert + int(curve);
          //pixels[moveAble] = color(r, g, b);
         }
    }  
  }
    updatePixels();
    //fill(255,255,255);
    //rect(xCopy, yCopy,30,30);
    //print(xCopy+ "<>" + yCopy);
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

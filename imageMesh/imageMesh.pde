PImage img;

void setup() {
  size(640, 660, P3D);
  img = loadImage("apple-wave.png");
  noStroke();
}

void draw() {
    background(0);

beginShape();
texture(img);
vertex(10, 20, 0, 0);
vertex(80, 5, 100, 0);
vertex(95, 90, 100, 100);
vertex(40, 95, 0, 100);
endShape();
}

PImage img;

void setup() {
  size(640, 360, P3D);
  img = loadImage("apple-wave.png");
  noStroke();
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateZ(PI/6);
  beginShape();
  texture(img);
  vertex(-100, -100, 0, 0, 0);
  vertex(100, -100, 0, img.width, 0);
  vertex(100, 100, 0, img.width, img.height);
  vertex(-100, 100, 0, 0, img.height);
  endShape();
}

PImage img;
int x = 10;
int y = 10;
void setup() {
  size(600, 600);
  background(255);
  noStroke();
  fill(0);
  img = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120720_214440.jpg");
  
  // trick to change the window size to match
  // the image size
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
}
void draw() {
  // grab the color of a pixel in the image
  int co = img.get(x, y);
  // the radius of the ellipse depends on the brightness
  // of a pixel in the image
  // red() green() blue() hue() saturation() brightness()
  // By default number between 0 and 255
  float diam = 0.1 * brightness(co);
  ellipse(x, y, diam, diam);
  x = x + 20;
  if(x > width - 10) {
    x = 10;
    y = y + 20;
  }
  if(y > height) {
    noLoop();
  }
}
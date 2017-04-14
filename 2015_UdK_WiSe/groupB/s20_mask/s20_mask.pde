void setup() {
  size(600, 600);
}
void draw() {
  for (int x=0; x<width; x=x+50) {
    for (int y=0; y<height; y=y+50) {
      if (y<height*0.25) {
        ellipse(x, y, 20, 20);
      }
      if (y>=height*0.25 && y < height*0.5) {
        rect(x, y, 20, 20);
      }
      if (y>=height*0.5 && y<height*0.75) {
        triangle(x, y, x+20, y, x, y+20);
      }
    }
  }
  // takes a "screenshot" of the image
  PImage myImage = get();
  //PImage m = loadImage("mask.png");
  PGraphics m = createGraphics(width, height);
  m.beginDraw();
  m.background(0);
  m.ellipse(width/2, height/2, 300, 300);
  m.endDraw();
  myImage.mask(m);

  background(44);
  image(myImage, 0, 0);
}
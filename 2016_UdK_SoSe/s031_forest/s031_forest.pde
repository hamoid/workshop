void setup() {
  size(700, 400);
  background(#BED39A);
  noStroke();
  drawSky();
  drawForest();
}
void draw() {
  // empty is ok
}
void drawForest() {
  // draw a bunch of trees
  for(int y=height/2; y<height; y=y+3) {
    drawTree(random(width), y);
  }
}
// x and y are the base of the tree
void drawTree(float x, float y) {
  fill(#C49E57);
  rect(x, y, 10, 40);
  for(float ty=0; ty<30; ty=ty+3) {
    fill(0, random(50, 100), 0);
    ellipse(x + 5, y-ty, 30-ty, 30-ty);
  }
}
void drawSky() {
  fill(#A8EAE9);
  for(float x=0; x<width; x=x+random(10,80)) {
    rect(x, 0, 100, random(height*0.25, height*0.5));
  }
  fill(#E1F2F2);
  for(int i=0; i<15; i=i+1) {
    rect(random(width), random(height*0.25), 100, 20);
  }
}
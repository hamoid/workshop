// global variable
float x = 0;
float stepx = 5;
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  rect(x, 100, 20, 20);
  x = x + stepx;
  if(x > width - 20) {
    stepx = -stepx;
  }
  if(x < 0) {
    stepx = -stepx;
  }
}
// whet I click the mouse...
void mousePressed() {
  // send the box to the left
  x = 0;
}
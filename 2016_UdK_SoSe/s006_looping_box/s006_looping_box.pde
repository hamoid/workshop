// global variable
float x = 0;
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  rect(x, 100, 20, 20);
  x = x + 5;
  if(x > width) {
    x = 0;
  }
}
// whet I click the mouse...
void mousePressed() {
  // send the box to the left
  x = 0;
}
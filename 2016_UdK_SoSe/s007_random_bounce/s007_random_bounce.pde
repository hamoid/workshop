// global variable
float x = 100;
float y = 0;
float stepx = 5;
float stepy = 5;

void setup() {
  size(600, 600);
  textSize(20);
  stroke(255);
}

void draw() {
  background(0);
  text("Exercise: make it move left", 20, 50);
  rect(x, y, 20, 20);
  x = x + stepx;
  if(x > width - 20) {
    stepx = -random(2, 25);
  }
  if(x < 0) {
    stepx = random(2, 25);
  }

  y = y + stepy;
  if(y > height - 20) {
    stepy = -random(2, 25);
  }
  if(y < 0) {
    stepy = random(2, 25);
  }

}
// whet I click the mouse...
void mousePressed() {
  // send the box to the left
  x = 0;
}
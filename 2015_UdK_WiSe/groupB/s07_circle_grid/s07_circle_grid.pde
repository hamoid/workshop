float x = 0;
float y = 0;
float sz = 0;
void setup() {
  size(600, 600);
  background(80);
}

void draw() {
  // come up with a random size
  sz = random(10, 50);
  // draw the circle
  ellipse(x, y, sz, sz);
  
  // move right
  x = x + 50;
  
  // if too far right, jump back to
  // the left border and move down
  if(x > width + 20) {
    x = 0;
    y = y + 50;
  }
  // if we wanted to stop after covering the
  // display, we need to check y
  //if(y > ...
  
}
void keyPressed() {
  // note the single quotes (not double!)
  if(key == 's') {
    save("result.png");
  }
}
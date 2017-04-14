// A drawing program
// using polar coordinates.

// It uses mouseX as the angle
// and mouseY as the distance
// in the polar coordinates
// formula. This produces
// distorted drawings.

float lastx, lasty;
void setup() {
  size(700, 700);
  background(0);
  stroke(255);
}

void draw() {
  // convert mouseX, mouseY
  // (cartesian coordinates)
  // into polar coordinates.
  
  // Just to see what happens :)
  float angle = radians(map(mouseX, 0, width, 0, 360));
  float distance = mouseY / 2;
  float x = width / 2 + distance * cos(angle);
  float y = height / 2 + distance * sin(angle);
  
  if (mousePressed) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
void keyPressed() {
  if (key == ' ') {
    background(0);
  }
}
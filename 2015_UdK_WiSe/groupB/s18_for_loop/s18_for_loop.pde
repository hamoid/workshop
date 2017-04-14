void setup() {
  size(600, 600);
  frameRate(2);
}
void draw() {
  background(255);

  // on each animation frame
  // draw many lines.
  // start at x=100 and end at x=400
  // increase in steps of 15
  for (float x=100; x<400; x=x+15) {
    strokeWeight(random(10));
    line(x, 0, x, height);
  }
}
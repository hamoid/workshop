void setup() {
  size(600, 600);
  background(0);
  strokeWeight(3);
  stroke(50);
}

void draw() {
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  float d = random(200);
  point(d, 0);
}
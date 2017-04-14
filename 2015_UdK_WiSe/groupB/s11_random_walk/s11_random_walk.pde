float x, y;
void setup() {
  size(600, 600);
  background(255);
  noStroke();
  fill(0, 50);
  x = width/2;
  y = height/2;
}

void draw() {
  ellipse(x, y, 3, 3);
  x = x + random(-5, 5);
  y = y + random(-5, 5);
}

void keyPressed() {
  // note the single quotes (not double!)
  if(key == 's') {
    save("result.png");
  }
}
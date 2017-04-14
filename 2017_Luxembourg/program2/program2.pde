void setup() {
  size(800, 400);
  background(255);
}

void draw() {
  if (keyPressed) {
    background(220, 240, 220);
  }
  if (mousePressed) {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(mouseX, mouseY, 20, 20);
  }
}
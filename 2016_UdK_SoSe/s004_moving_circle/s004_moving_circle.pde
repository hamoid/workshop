// global variable
float tipSize = 5;
void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  //ellipse(mouseX, mouseY, 20, 20);
  //line(0, 0, mouseX, mouseY);
  //ellipse(width/2, height/2, mouseX, mouseY);
  //line(mouseX, mouseY, mouseY, mouseX);
  //line(pmouseX, pmouseY, mouseX, mouseY);
  //ellipse(pmouseX, pmouseY, mouseX, mouseY);

  // local variable
  float r = random(255);
  float g = random(255);
  float b = random(255);
  fill(r, g, b);

  if (mousePressed) {
    ellipse(mouseX, mouseY, tipSize, tipSize);
    // reflection
    ellipse(width-mouseX, mouseY, tipSize, tipSize);
  }
}
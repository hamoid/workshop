float drawingMode = 0;
void setup() {
  size(600, 600);
  background(random(255), random(255), random(255));
}
void draw() {
  if(drawingMode > 0) {
    // background design
    ellipse(mouseX, mouseY, 20, 20);
  } else {
    // foreground design 
    line(0, 0, mouseX, mouseY);
  }
}
void keyPressed() {
  if(key == ' ') {
    drawingMode = 1 - drawingMode;
  }
  if(key == 's') {
    save("result.png");
  }
}
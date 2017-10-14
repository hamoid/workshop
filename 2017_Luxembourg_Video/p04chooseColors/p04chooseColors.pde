void setup() {
  size(800, 400);
}
void draw() {
  if (mousePressed) {
    ellipse(mouseX, mouseY, 10, 10);
    ellipse(width-mouseX, mouseY, 10, 10);    
  }
  
}
void keyPressed() {
  if(key == 'a') {
    fill(255, 0, 0);
  }
  if(key == 'b') {
    fill(0, 255, 0);
  }
  if(key == 'c') {
    fill(0, 0, 255);
  }
}
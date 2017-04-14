import processing.pdf.*;
void setup() {
  size(600, 600);
}
void draw() {
  stroke(0, 20);
  strokeWeight(20.0);
  line(mouseX, 0, width-mouseY, height);
}
void keyPressed() {
  if(key=='0') {
    beginRecord(PDF, "lines-" + System.currentTimeMillis() + ".pdf"); 
    background(0);
  }
  if(key=='1') {
    endRecord();
  }
}
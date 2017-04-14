void setup() {
  size(200, 400);
}

void draw() {
  background(255);
  strokeWeight(5);
  rect(55, 90, 87, 127, 16);
  fill(127, 193, 231);
  ellipse(97, 120, 41, 43);
  fill(0, 0, 0);
  ellipse(93, 121, 10, 20);
  
  ellipse(mouseX, mouseY, 20, 20);
  
  //rect(0, 300 + 20 * sin(frameCount * 0.1), width, 10);
}
// animation: frameCount
// interaction: mouseX, mouseY, mousePressed
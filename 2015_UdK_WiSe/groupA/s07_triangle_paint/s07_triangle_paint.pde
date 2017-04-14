// TIP: press CMD+T or CTRL+T 
// to autoformat the code!

void setup() {
  size(600, 200);
  background(255);
  fill(255);
}
void draw() { 
  if (mousePressed) {
    stroke(random(255), 0, 0);
    // Draw a random triangle around 
    // the mouse location
    triangle(
      mouseX + random(-10, 10), 
      mouseY + random(-10, 10), 
      mouseX + random(-10, 10), 
      mouseY + random(-10, 10), 
      mouseX + random(-10, 10), 
      mouseY + random(-10, 10) 
      );
  }
}
// Save an image when pressing the s key
void keyPressed() {
  if (key == 's') {
    save("triangles.jpg");
  }
}
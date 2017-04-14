void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(255);

  for (int x=50; x<600; x = x + 50) {
    
    // Save the current axes
    // before changing them with translate
    // or rotate. This way we can undo
    // the transformations with popMatrix()
    pushMatrix();
    
    // place 0,0 at the center of the screen
    translate(x, height/2);
    
    // rotate the axes
    rotate(radians(frameCount));
    
    // draw something
    rect(0, 0, 300, 10);
    
    // Restore the axes so they are the same
    // as before translate + rotate.
    popMatrix();
    
    // Note: pushMatrix() and popMatrix()
    // must always go in pairs.
  }

}
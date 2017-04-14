
void recursiveLine(float x0, float y0, float x1, float y1) {

  // draw the requested line
  line(x0, y0, x1, y1);

  // calculate how long that line is
  float len = dist(x0, y0, x1, y1);
  
  // if the line is long enough, make child lines 
  if (len > 10) {
    // how many child lines to draw
    int children = 3;

    // declare some variables for later
    float newX, newY, offset;
    
    // if we just drew a vertical line, make horizontal child lines
    if (x0 == x1) {
      for (int i=0; i<children; i++) {
        // the new Y is somewhere between the top and the bottom of the line
        newY = random(y0, y1);
        // a random length, up to the same length as the original
        offset = random(-len, len);
        // request a horizontal child line
        recursiveLine(x0, newY, x0 + offset, newY);
      }
    } else {
      // we drew a horizontal line, so make vertical child lines
      for (int i=0; i<children; i++) {
        // the new X is somewhere between the left and right ends of the line
        newX = random(x0, x1);
        // a random length
        offset = random(-len, len);
        // request a vertical child line
        recursiveLine(newX, y0, newX, y0 + offset);
      }
    }
  }
}

void setup() {
  size(800, 800); 
  background(255);
  // start by drawing a vertical line
  recursiveLine(width/2, height*0.2, width/2, height*0.8);
}

void draw() {
}

void keyPressed() {
  if (key == 's') {
    save(System.currentTimeMillis() + ".png");
  }
}
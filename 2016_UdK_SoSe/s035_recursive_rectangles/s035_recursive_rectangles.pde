// The arguments of a recursive function act as the "genes".
// Each new generation is created based on those arguments,
// slightly modifying them.

// In this case, for instance, each new generation is smaller
// than the previous one, and is located around the parent.

// A function that draws a rectangle, and then
// calls itself to draw more rectangles on the left, right,
// below and above the current rectangle.
void recursiveRect(float cx, float cy, float side) {
  // Draw the current rectangle only in 60% of the cases.
  // Otherwise don't draw it (missing rectangle)
  if (random(100) < 60) {
    
    // 1% chance of the rectangle being red
    if(random(100) < 1) {
      fill(255, 0, 0);
    } else {
      // if not red, map the size of the rectangle to a grayscale
      // value. The initial rectangle, of size 255, maps to white (255).
      // The smallest rectangle, of size 5, maps to dark gray (50).
      float grayValue = map(side, 255, 5, 255, 50);
      fill(grayValue);
    }
    rect(cx, cy, side, side);
  }
  // If the rectangle we just drew is large enough, draw 4 rectangles
  // around it.
  if (side > 5) {
    recursiveRect(cx + side * 0.85, cy, side * 0.5); // R
    recursiveRect(cx - side * 0.85, cy, side * 0.5); // L
    recursiveRect(cx, cy + side * 0.85, side * 0.5); // B
    recursiveRect(cx, cy - side * 0.85, side * 0.5); // T
  }
}

void setup() {
  size(800, 800);
  background(0);
  noStroke();

  rectMode(CENTER);  
  recursiveRect(width/2, height/2, 255);
}

void draw() {
}

void keyPressed() {
  if(key == 's') {
    save(System.currentTimeMillis() + ".png");
  }
}
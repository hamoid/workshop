// Using a variable, animating

// A float variable is used to keep track of the current
// size of the circle
float circleSize = 800;

void setup() {
  size(800, 800);
}
void draw() {
  ellipse(400, 400, circleSize, circleSize);
  // here we make the circle 10 pixels smaller
  circleSize = circleSize - 10;
}

// the reason why the circle grows after first
// shrinking is that when the size becomes negative
// (-10 -20 -30 ...) Processing draws is as positive
// (10 20 30 ...).

// If we wanted a loop we could do something like this

// if(circleSize < 10) {
//   circleSize = 800;
// }

// So if it becomes too small, 
// it jumps back to the original size
// using a variable for animation

// moving an object across the screen towards the right

// a variable of type "float" called "x" that contains "0".
// float means that the variable can store numbers 
// like 1.333, 2.0, 1.999, not only 1, 2, 7, 22
float x = 0;

void setup() {
  size(800, 200);
}

void draw() {
  background(255);
  fill(0, 255, 0);
  ellipse(x, 10, 30, 30);

  // increase x to move right
  x = x + 2.2;
  
  // jump back to the left border if we reach the
  // right border
  if(x > width) {
    x = 0;
  }
}
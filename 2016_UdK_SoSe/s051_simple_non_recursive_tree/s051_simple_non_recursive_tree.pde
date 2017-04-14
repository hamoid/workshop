int SEGMENTS = 300;

float[] x, y;

// A simple tree drawn using an array.
// (simple in code, but not that easy to follow!)

// I got the idea by looking at the numbers
// printed by program 50.

// This version does use angles, so not very smooth. 

void setup() {
  size(800, 800);
  background(255);
  x = new float[SEGMENTS];
  y = new float[SEGMENTS];

  x[0] = width * 0.5;
  y[0] = height * 0.95;

  for(int child=1; child<SEGMENTS; child++) {
    // Tricky: (1-1)/2 is obviously 0
    // but:    (2-1)/2 is also 0 when using int!
    // because 0.5, when stored into an integer
    // looses the fractional part.
    int parent = (child-1)/2;
    // child  1 2 3 4 5 6 7 8 ...
    // parent 0 0 1 1 2 2 3 3 ...
    x[child] = x[parent] + random(-30, 30);
    y[child] = y[parent] - random(5, 80);
    line(x[child], y[child], x[parent], y[parent]);
  }
}
void draw() {
}
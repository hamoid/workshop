// From the PDF document #5.

// Create 4 arrays. Each will contain 
// multiple values
float[] x, y, dy, sz;

void setup() {
  size(100, 400);
  
  // Initialize each array, so they can contain 10 floats.
  x = new float[10];
  y = new float[10];
  dy = new float[10];
  sz = new float[10];
  
  // Initialize each item on each array.
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = 0;
    dy[i] = random(10); // delta-y, also "speed" or "step size"
    sz[i] = random(5, 30);
  }
}
void draw() {
  background(255);
  for (int i=0; i<10; i++) {
    ellipse(x[i], y[i], sz[i], sz[i]);
    // each y has a corresponding dy (that's how much y changes
    // on each animation frame). If dy is larger, it moves faster.
    y[i] = y[i] + dy[i];
    
    // A. If at bottom, teleport to top
    //if (y[i] > height) {
    //  y[i] = 0;
    //}
    
    // B. if at bottom or top, change direction (bounce)
    if(y[i] > height || y[i] < 0) {
      dy[i] = -dy[i];
    }

  }
}
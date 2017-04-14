void setup() {
  size(600, 600);
}

void draw() {
  // Create a grid with nested for loops
  // First we count columns...
  for (float x = 0; x < width; x = x + 40) {
    // For each column we count rows...
    for (float y = 0; y < height; y = y + 40) {
      float sz = random(50);
      ellipse(x, y, sz, sz);
    }
  }
}
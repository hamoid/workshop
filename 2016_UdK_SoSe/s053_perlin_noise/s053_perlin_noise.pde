void setup() {
  size(800, 200);
}

void draw() {
  background(255);
  float k = map(mouseX, 0, width, 0, 1);
  
  for (int x=0; x<width; x++) {
    float y = 100 + 20 * noise(x * k);
    point(x, y);

    y = random(150, 170);
    point(x, y);
  }
}

// noise always returns a value between 0 and 1
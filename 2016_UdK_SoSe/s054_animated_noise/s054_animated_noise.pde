void setup() {
  size(800, 200);
}

void draw() {
  float n = noise(frameCount * 0.01);
  
  background(255 * n);
  float x = width * n;
  float y = height/2;
  
  ellipse(x, y, 50, 50);
}

// noise always returns a value between 0 and 1
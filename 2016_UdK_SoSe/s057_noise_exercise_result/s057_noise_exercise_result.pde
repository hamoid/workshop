void setup() {
  size(800, 800);
  rectMode(CENTER);
  noStroke();
}
void draw() {
  background(20, 80, 100);
  // task: use noise() to alter
  // properties of the rectangles,
  // like size, rotation, position
  // or color
  for (int y=0; y<height; y=y+5) {
    pushMatrix();
    float x = width/2 + 150 * noise(y * 0.01, frameCount * 0.003);
    float sz = 100 * noise(y * 0.02, frameCount * 0.017);
    translate(x, y);
    rotate(10 * noise(y * 0.003, frameCount * 0.007));
    fill(255 * noise(y * 0.035, frameCount * 0.002));
    rect(0, 0, sz, sz);
    popMatrix();
  }
}
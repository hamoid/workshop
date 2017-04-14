void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  for (int x=0; x<width; x=x+25) {
    for (int y=0; y<height; y=y+25) {
      // noise with two arguments
      float n = noise(x * 0.005, y * 0.005, frameCount * 0.003);
      fill(n * 255);
      //fill(random(255));
      ellipse(x, y, 40, 40);
    }
  }
}
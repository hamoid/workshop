void setup() {
  // P2D uses the GPU for rendering, which probably makes
  // it much faster, but may introduce artifacts (sometimes).
  
  // P3D is used for 3D graphics
  size(700, 400, P2D);
}
void draw() {
  for (int x=0; x<width; x=x+1) {
    stroke(random(255));
    line(x, 0, x, height);
  }
}
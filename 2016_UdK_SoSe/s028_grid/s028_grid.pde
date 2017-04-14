float maxHue = 100;
void setup() {
  // P2D uses the GPU for rendering, which probably makes
  // it much faster, but may introduce artifacts (sometimes).
  
  // P3D is used for 3D graphics
  size(700, 400, P2D);
  colorMode(HSB);

  for (int x=100; x<width-100; x=x+50) {
    
    for(int y=100; y<height - 50; y=y+50) {    
      float sz = random(2, 60);
      fill(map(sz, 2, 60, 0, maxHue), 255, 255);
      if(random(100) < 90) {
        myShape(x, y, sz);
      }
    }

  }
}
void myShape(float tx, float ty, float tsz) {
  for(int n=0; n<5; n=n+1) {
    ellipse(tx, ty, tsz, tsz);
    tx = tx + random(-5, 5);
    ty = ty + random(-5, 5);
    tsz = tsz * 0.9;
  }
}
void draw() {
  //float y = 100;
}
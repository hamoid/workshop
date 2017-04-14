// This example is more advanced
// and makes use of 3D
void setup() {
  // P3D enables 3D mode
  size(600, 600, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateY(frameCount * 0.04);
  if(random(100) < 60) {
    rect(100, 0, 20, 200);
  }
}
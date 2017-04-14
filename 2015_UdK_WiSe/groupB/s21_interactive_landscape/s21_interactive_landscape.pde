float maxDist;
void setup() {
  size(600, 600);
  noFill();
  maxDist = dist(0, 0, width, height);
}

void draw() {
  background(255);
  for(float y=0; y<height; y=y+50) {
    beginShape();
    for(float x=0; x<width; x=x+20) { 
      float mag = 1 - dist(x, y, mouseX, mouseY)/maxDist;
      mag = pow(mag, 4) * 100;
      vertex(x, y - mag * noise(x*0.1, y*0.1));
    }
    endShape();
  }
}
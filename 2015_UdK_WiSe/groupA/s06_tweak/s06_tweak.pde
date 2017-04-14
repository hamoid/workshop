// Simple sketch to test the Tweak Mode
// found under Sketch > Tweak

void setup() {
  size( 400, 400);
}

void draw() {  
  background(110, 14, 14);
  fill(225, 209, 34);
  float sz = 296 + 21 * sin(frameCount * 0.33);
  ellipse(width * 0.5, height * 0.3, sz, sz);
}
void setup() {
  size(600, 600);
}
void draw() {
  //background(255);
  
  // frameCount / 20.0  = 20 times slower
  // frameCount * 0.05  = 5% of the original speed
  // both are equivalent
  
  float x = map(sin(frameCount * 0.07), -1, 1, 100, width-100); 
  float y = map(sin(frameCount * 0.05), -1, 1, 100, width-100);
  float sz = map(sin(frameCount * 0.03), -1, 1, 10, 80); 
  float r = map(sin(frameCount * 0.01), -1, 1, 100, 255); 
  float g = map(sin(frameCount * 0.02), -1, 1, 100, 255);
  float b = map(sin(frameCount * 0.04), -1, 1, 100, 255);
  fill(r, g, b);
  ellipse(x, y, sz, sz);
  
  x = map(sin(frameCount * 0.01), -1, 1, 100, width-100); 
  y = map(sin(frameCount * 0.02), -1, 1, 100, width-100);
  sz = map(sin(frameCount * 0.03), -1, 1, 10, 80);
  r = map(sin(frameCount * 0.04), -1, 1, 100, 255); 
  g = map(sin(frameCount * 0.05), -1, 1, 100, 255);
  b = map(sin(frameCount * 0.06), -1, 1, 100, 255);
  fill(r, g, b);
  ellipse(x, y, sz, sz);
}
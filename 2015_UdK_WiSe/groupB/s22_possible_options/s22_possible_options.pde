void setup() {
  size(600, 600);
}
void draw() {
  // 7 possible x values
  float x = map(floor(random(7)), 0, 6, 0, width);
  
  // 20 possible y values
  float y = map(floor(random(20)), 0, 20, 0, height);
  
  // 4 possible sizes
  float sz = map(floor(random(4)), 0, 4, 20, 80);
  
  ellipse(x, y, sz, sz);
}
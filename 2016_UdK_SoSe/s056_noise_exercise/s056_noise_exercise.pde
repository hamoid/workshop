size(800, 800);
background(20, 80, 100);
rectMode(CENTER);

// task: use noise() to alter
// properties of the rectangles,
// like size, rotation, position
// or color
for(int y=0; y<height; y=y+5) {
  pushMatrix();
  float x = width/2 + 150 * noise(y * 0.01);
  float sz = 100 * noise(y * 0.02);
  translate(x, y);
  rotate(10 * noise(y * 0.003));
  rect(0, 0, sz, sz);
  popMatrix();
}
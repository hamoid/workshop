// symmetry
// we draw the same thing 3 times, rotated
// by 120 degrees. We choose the number 120 because
// 360 / 3 = 120. For four branches, use 360 / 4 = 90 degrees.
// For 5 branches, 360 / 5 = 72 degrees
void setup() {
  size(600, 600);
  background(255);
  noStroke();
}

void draw() {
  translate(width/2, height/2);
  float x = random(0, 300);
  float y = random(-50, 50);
  float w = random(50);
  float h = random(50);
  fill(random(255));
  
  rect(x, y, w, h);
  rotate(radians(120));
  rect(x, y, w, h);
  rotate(radians(120));
  rect(x, y, w, h);  
}
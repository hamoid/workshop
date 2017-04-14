float a;
void setup() {
  size(600, 600);
  background(255);
  stroke(0, 70);
}

void draw() {
  translate(width/2, height/2);
  float r = 300 * noise(sin(a));
  float x = r * cos(a);
  float y = r * sin(a);
  line(0, 0, x, y);
  a = a + 0.02;
}
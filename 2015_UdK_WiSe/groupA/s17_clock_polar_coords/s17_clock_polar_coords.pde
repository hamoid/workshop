float x;
float y;
float a;
float speed;
void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
}
void draw() {
  speed = 5.87;
  x = x + speed * cos(a);
  y = y + speed * sin(a);
  a = a + random(-0.2, 0.2);
  ellipse(x, y, 58, 56);
  if (x > width || x < 0 || y > height || y < 0) {
    x = width/2;
    y = height/2;
  }
}
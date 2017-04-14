int x = 10;
int y = 10;

void setup() {
  size(600, 600);
  fill(0);
  background(255);
}

void draw() {
  // random radius for the ellipse
  float diam = random(2, 20);
  ellipse(x, y, diam, diam);
  x = x + 20;
  if(x > width) {
    x = 10;
    y = y + 20;
  }
  if(y > height) {
    noLoop();
  }
}
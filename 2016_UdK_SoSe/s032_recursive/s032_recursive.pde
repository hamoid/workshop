void recursiveFunc(float x, float y, float sz) {
  i = i + 1;
  ellipse(x, y, sz, sz);
  if(sz > 1) {
    float angle = random(TWO_PI);
    float xx = x + sz / 2 * cos(angle);
    float yy = y + sz / 2 * sin(angle);
    recursiveFunc(xx, yy, sz/2);
    recursiveFunc(xx, yy, sz/2);
    recursiveFunc(xx, yy, sz/2);
  }
}

int i=0;
void setup() {
  size(700, 700);
  background(0);
  noStroke();
  fill(255, 50);
  recursiveFunc(width/2, height/2, 300);
  println(i);
}

void draw() {
}
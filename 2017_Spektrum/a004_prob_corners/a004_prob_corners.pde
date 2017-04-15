float curvy(float n, float amount) {
  if (n <= 0.5) {
    n = n * 2;
    n = pow(n, amount);
    n = n / 2;
  } else {
    n = (1 - n) * 2;
    n = pow(n, amount);
    n = 1 - n / 2;
  }
  return n;
}
void setup() {
  size(600, 600);
  background(0);
  noStroke();
}

void draw() {
  // normalized random values
  float x = random(1);
  float y = random(1);

  x = curvy(x, 7);
  y = curvy(y, 7);

  ellipse(x * width, y * height, 10, 10);
}
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
  size(550, 550);

  translate(50, 50);
  rect(0, 0, 200, 200);
  for (int x=0; x<200; x++) {
    point(x, x);
  }

  pushMatrix();
  translate(250, 0);
  rect(0, 0, 200, 200);
  for (int x=0; x<200; x++) {
    float n = x / 200.0;
    n = pow(n, 3);
    line(0, n * 200, 200, n * 200);
  }
  popMatrix();

  pushMatrix();
  translate(0, 250);
  rect(0, 0, 200, 200);
  for (int x=0; x<200; x++) {
    float n = x / 200.0;
    n = curvy(n, 5);
    point(x, n * 200);
  }
  popMatrix();

  pushMatrix();
  translate(250, 250);
  rect(0, 0, 200, 200);
  popMatrix();
}

void draw() {
}
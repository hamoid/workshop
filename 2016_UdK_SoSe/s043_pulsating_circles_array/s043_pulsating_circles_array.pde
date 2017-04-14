// From the PDF document #5

float[] x, y, speed, sz; // four arrays
// It's a good approach to not repeat values.
// Since we need "30" in multiple places, we
// store that in a variable. This allows us to
// change the amount of circles just by changing
// this number.
int AMOUNT = 30;

void setup() {
  size(600, 600);
  x = new float[AMOUNT];
  y = new float[AMOUNT];
  speed = new float[AMOUNT];
  sz = new float[AMOUNT];
  
  for(int i=0; i<AMOUNT; i++) { // initialize all array items
    x[i] = random(width);
    y[i] = random(height);
    speed[i] = random(0.1);
    sz[i] = random(5, 30);
  }
}
void draw() {
  background(255);
  for(int i=0; i<AMOUNT; i++) {
    float thisSize = sz[i] * sin(frameCount * speed[i]);
    ellipse(x[i], y[i], thisSize, thisSize);
  }
}
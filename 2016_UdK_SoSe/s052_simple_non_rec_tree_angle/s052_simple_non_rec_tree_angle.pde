int SEGMENTS = 300;

float[] angle = new float[SEGMENTS], 
  len = new float[SEGMENTS], 
  x = new float[SEGMENTS], 
  y  = new float[SEGMENTS];

// Improved non recursive tree based on
// sketches 50 and 51. This one uses
// angles to make it smoother.

void setup() {
  size(800, 800);
  background(255);

  // initial branch
  x[0] = width * 0.5;
  y[0] = height * 0.95;
  angle[0] = radians(-90);
  len[0] = 100;

  for (int child=1; child<SEGMENTS; child++) {
    int parent = (child-1)/2;
    
    // child angle is close to parent angle
    angle[child] = angle[parent] + random(-0.5, 0.5);
    
    // child length is shorter than parent length
    len[child] = len[parent] * random(0.8, 1);
    
    // child coordinates based on parent coordinates and
    // its own angle and length (uses polar coordinates).
    x[child] = x[parent] + len[child] * cos(angle[child]);
    y[child] = y[parent] + len[child] * sin(angle[child]);
    
    line(x[child], y[child], x[parent], y[parent]);
  }
}
void draw() {
}
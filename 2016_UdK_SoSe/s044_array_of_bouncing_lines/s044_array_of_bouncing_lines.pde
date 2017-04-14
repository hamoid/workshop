// This is the same program as 42
// (bouncing circles), but instead of 
// drawing circles we draw lines connecting
// the circle positions.

float[] x, y, dy, sz;

void setup() {
  size(800, 800);
  x = new float[10];
  y = new float[10];
  dy = new float[10];
  sz = new float[10];
  for (int i=0; i<10; i++) {
    x[i] = random(width);
    y[i] = 0;
    dy[i] = random(10);
    sz[i] = random(5, 30);
  }
}
void draw() {
  //background(255);
  for (int i=0; i<10; i++) {
    //ellipse(x[i], y[i], sz[i], sz[i]);

    stroke(map(i, 0, 10, 0, 255), 100);

    // To draw a line we need two indices:
    // the current point (i) and the next
    // point (i+1).
    int nexti = i + 1;
    // nexti could be 10 here, but our arrays
    // only contain elements 0 to 9. 10 would
    // give an error (try removing the next "if"
    // to see that error).
    // The next if changes nexti, so when i is 9,
    // nexti is 0 (instead of 10).
    if (nexti == 10) {
      nexti = 0;
    }
    line(x[i], y[i], x[nexti], y[nexti]);
   
    y[i] = y[i] + dy[i];

    // A. if at bottom, teleport to top
    //if (y[i] > height) {
    //  y[i] = 0;
    //}

    // B. if at bottom or top, change direction
    if (y[i] > height || y[i] < 0) {
      dy[i] = -dy[i];
    }
  }
}
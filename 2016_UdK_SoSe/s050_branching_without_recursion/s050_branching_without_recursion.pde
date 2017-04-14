int SEGMENTS = 50;
float[] x, y;

/*
  This is an example for creating a branching tree without recursion.
  At the beginning it reserves space for storing 50 points, and it
  defines just one starting point.
  
  Then, as long as there's space free on the array, it keeps adding two
  new points for each existing point. It uses two indices, one to know
  where to read from (readIndex) and one to know where to write to
  (writeIndex). The second index advances faster than the first one.
*/

void setup() {
  size(800, 800);
  background(255);
  x = new float[SEGMENTS];
  y = new float[SEGMENTS];

  x[0] = width * 0.5;
  y[0] = height * 0.95;

  int pointsAtCurrentLevel = 1;
  int readIndex = 0;
  int writeIndex = 1;

  while (writeIndex < SEGMENTS) {
    for (int i=0; i<pointsAtCurrentLevel; i++) {
      // Add two new points for each point
      for (int j=0; j<2; j++) {
        if (writeIndex < SEGMENTS) {
          x[writeIndex] = x[readIndex] + random(-30, 30);
          y[writeIndex] = y[readIndex] - random(5, 80);
          println(readIndex, ">", writeIndex);
          line(x[writeIndex], y[writeIndex], x[readIndex], y[readIndex]);
          writeIndex++;
        }
      }
      println();
      readIndex++;
    }
    pointsAtCurrentLevel *= 2;
  }
}
void draw() {}
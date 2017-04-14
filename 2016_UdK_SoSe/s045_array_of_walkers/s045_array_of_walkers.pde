// https://en.wikipedia.org/wiki/Random_walk

// our current position
float[] x, y;
// how large our steps are
float stepSize;

int howMany = 15;

void setup() {
  size(600, 600);
  background(#B7F00F);
  stroke(0, 100);
  fill(#481C07, 80);
  // we start at the center of the screen
  x = new float[howMany]; //width/2;
  y = new float[howMany]; // height/2;
  for (int i=0; i<howMany; i=i+1) {
    x[i] = width/2;
    y[i] = height/2;
  }
  // our steps are 20 pixels
  stepSize = 20;
}

void draw() {
  for (int i=0; i<howMany; i=i+1) {
    // draw a circle of random size (between 0 and 20 pixels)
    //float sz = random(20);
    int nexti = i+1;
    if(nexti == howMany) {
      nexti = 0;
    }
    line(x[i], y[i], x[nexti], y[nexti]);

    // make the step size equal to 5% of the horizontal mouse position
    // this allows us to control the step size by moving the mouse 
    stepSize = mouseX * 0.05;

    // take a random step
    x[i] = x[i] + random(-stepSize, stepSize);
    y[i] = y[i] + random(-stepSize, stepSize);

    // if we touch one of the window edges, jump back to the center
    // of the window.
    if (x[i] > width) {
      x[i] = width/2;
      y[i] = height/2;
    }
    if (x[i] < 0) {
      x[i] = width/2;
      y[i] = height/2;
    }
    if (y[i] > height) {
      x[i] = width/2;
      y[i] = height/2;
    }
    if (y[i] < 0) {
      x[i] = width/2;
      y[i] = height/2;
    }
  }
}
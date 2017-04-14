// https://en.wikipedia.org/wiki/Random_walk

// our current position
float x, y;
// how large our steps are
float stepSize;

void setup() {
  size(600, 600);
  background(#B7F00F);
  noStroke();
  fill(#481C07, 80);
  // we start at the center of the screen
  x = width/2;
  y = height/2;
  // our steps are 20 pixels
  stepSize = 20;
}

void draw() {
  // draw a circle of random size (between 0 and 20 pixels)
  float sz = random(20);
  ellipse(x, y, sz, sz);
  
  // make the step size equal to 5% of the horizontal mouse position
  // this allows us to control the step size by moving the mouse 
  stepSize = mouseX * 0.05;
  
  // take a random step
  x = x + random(-stepSize, stepSize);
  y = y + random(-stepSize, stepSize);
  
  // if we touch one of the window edges, jump back to the center
  // of the window.
  if(x > width) {
    x = width/2;
    y = height/2;
  }
  if(x < 0) {
    x = width/2;
    y = height/2;
  }
  if(y > height) {
    x = width/2;
    y = height/2;
  }
  if(y < 0) {
    x = width/2;
    y = height/2;
  }
}
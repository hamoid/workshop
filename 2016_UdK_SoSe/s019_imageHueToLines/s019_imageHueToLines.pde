// Our pen position
float x, y;
// How fast are we moving the pen
float stepSize;
// Countdown to stop drawing a line
float stepsToGo;
// Here we store a random image loaded from the net
PImage img; 
void setup() {
  size(600, 600);
  background(0);
  frameRate(300);
  stroke(255, 10);

  stepSize = 1;
  stepsToGo = 0;
  println("Loading random image...");
  img = loadImage("https://unsplash.it/600/600?image=1", "jpg");
  println("Image loaded. Position your mouse to draw lines.");
}

void draw() { 
  // "while loop"
  // Repeat the following lines as long as stepsToGo is larger than 1
  while (stepsToGo > 1) {
    
    // The purpose of this while loop is to increase the drawing speed.
    // We don't want to draw just one point per animation frame, but
    // 250 points per animation frame (a full line). It works without
    // this while loop, it's just 250 times slower.
    
    point(x, y);

    // We let the hue of the pixels on an image
    // control the direction. The hue is a number
    // between 0 and 255. Angles are normally between
    // 0 and TWO_PI.
    float theHue = hue(img.get(int(x), int(y)));
    float theAngle = map(theHue, 0, 255, 0, TWO_PI);

    // take one step
    x = x + stepSize * cos(theAngle);
    y = y + stepSize * sin(theAngle);

    // decrease stepsToGo
    stepsToGo = stepsToGo - 1;
  }
  // Jump to random location near the mouse pointer.
  x = mouseX + random(-60, 60);
  y = mouseY + random(-60, 60);
  // Reset the steps counter. We get 250 steps to draw a line.
  stepsToGo = 250;
}
void keyPressed() {
  if (key == 's') {
    save(System.currentTimeMillis() + ".tif");
  }
}
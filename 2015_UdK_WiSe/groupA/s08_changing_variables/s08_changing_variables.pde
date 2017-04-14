// declare some variables
float x = 120;
float y = x + 20;
float circleSize = 140;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  ellipse(x, y, circleSize, circleSize);
  ellipse(x+20, y, circleSize, circleSize);
  ellipse(x+50, y, circleSize, circleSize);
  
  // reduce the value contained
  // in the x and circleSize variables
  x = x - 1;
  circleSize = circleSize - 1;
}

void keyPressed() {
  if(key == 's') {
    save("still.png");
  }
}
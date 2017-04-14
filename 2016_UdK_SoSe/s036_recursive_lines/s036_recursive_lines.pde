// Recursive function that draws a line.
// At the center of that line, start two new lines.
void recursiveLine(float x0, float y0, float x1, float y1) {
  // find out how long the line is
  float len = dist(x0, y0, x1, y1);
  float childLength = 0.65;

  // if short, use red color, otherwise white.
  if(len < 20) {
    stroke(#FF0000);
  } else {
    stroke(#FFFFFF);
  }
  // the line thickness depends on the length.
  strokeWeight(len / 40);
  
  // draw the line
  line(x0, y0, x1, y1);

  // if long enough, draw child lines
  if (len > 1) {
    // find the center of the line
    float midX = (x0+x1)/2;
    float midY = (y0+y1)/2;
    
    // choose a random angle
    float angle = random(TWO_PI);
    // draw a line half as long as the original
    // we use polar coordinates to find the second point
    // of the line.
    recursiveLine(
      midX, midY, 
      midX + childLength * len * cos(angle), 
      midY + childLength * len * sin(angle));

    // draw a secord child line in a different direction
    angle = random(TWO_PI);
    recursiveLine(
      midX, midY, 
      midX + childLength * len * cos(angle), 
      midY + childLength * len * sin(angle));
  }
}

void setup() {
  size(800, 800);
  background(0);
  recursiveLine(width*0.2, height*0.2, width*0.8, height*0.8);
}

void draw() {
}

void keyPressed() {
  if(key == 's') {
    save(System.currentTimeMillis() + ".png");
  }
}
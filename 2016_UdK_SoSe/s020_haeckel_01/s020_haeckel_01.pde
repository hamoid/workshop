// Based on Kunstformen der Natur
// https://en.wikipedia.org/wiki/Kunstformen_der_Natur#/media/File:Haeckel_Ascidiae.jpg

// Draw a set of circles laid out in a radial
// fashion, on top of a larger circle.

float angleInDegrees = 0;
float centerX;
float centerY;

void setup() {
  size(800, 800);
  background(0);

  centerX = width / 2;
  centerY = height / 2;

  // draw base circle
  strokeWeight(2);
  stroke(#C5993D);
  fill(#EECD6E);
  ellipse(centerX, centerY, 600, 600);
}

void draw() {
  if (angleInDegrees < 360) {
    float angleInRadians = radians(angleInDegrees);

    // find a point that is 200 pixels away from the center,
    // in the direction specifiend by angleInDegrees
    float x = centerX + 200 * cos(angleInRadians);
    float y = centerY + 200 * sin(angleInRadians);
    
    stroke(#9B5D00);
    fill(#842A01);
    ellipse(x, y, 100, 100);

    // By rotating 30 degrees we get 12 items 
    // (like the hours on an analog clock)
    angleInDegrees = angleInDegrees + 30;
  }
}
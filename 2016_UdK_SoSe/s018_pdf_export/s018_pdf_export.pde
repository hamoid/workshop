// See File > Examples > Libraries > PDF Export > OneFrame
// for a simpler example.

import processing.pdf.*;

float x, y, stepSize, angle;
float dotSize, decreaseRate;
float bri;
void setup() {
  size(600, 600);
  
  ellipse(0, 0, 300, 300);
  
  // Create PDF file for saving
  beginRecord(PDF, "plant.pdf");
  
  // Anything that was drawn before
  // beginRecord() is not included
  // in the PDF file (for instance
  // the ellipse above)

  background(255);
  noStroke();
  
  x = width/2;
  y = height/2;
  stepSize = 2;
  angle = TWO_PI;
  dotSize = 20;
  decreaseRate = random(0.1, 1);
  bri = 0;  
}

void draw() {
  // changing color
  fill(bri);
  
  ellipse(x, y, dotSize, dotSize);
  
  // mouse controls angle
  //angle = mouseX * 0.01;
  
  // randomness controls angle.
  // if the magnitudes are different, it turns more
  // in one direction
  angle = angle + random(-0.20, 0.20);
  
  x = x + stepSize * cos(angle);
  y = y + stepSize * sin(angle);
  
  dotSize = dotSize - decreaseRate;
  
  bri = bri + 1;
  
  // AND = &&
  //if(num > 10 && num < 30) { ... }
  
  // OR = ||
  if(x < 0 || x > width || y < 0 || y > height || dotSize < 1) {
    
    fill(255, 0, 0);
    ellipse(x, y, 10, 10);
    
    // jump to the center
    x = width/2;
    y = height/2;
    dotSize = 20;
    decreaseRate = random(0.1, 1);
    bri = 0;
    
    // bounce back
    //angle = angle + PI;
  }
}
void keyPressed() {
  // if I press q, end the PDF output
  // and quit Processing
  if(key == 'q') {
    endRecord();
    exit();
  }
  if(key == 's') {
    save("plant.png");
  }
}
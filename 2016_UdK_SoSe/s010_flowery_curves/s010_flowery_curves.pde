void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  // draw things only if the mouse is pressed
  if (mousePressed) {
    
    // start point at the center of the screen
    float startX = width/2;
    float startY = height/2;
    
    // end point somewhere around the mouse position
    float endX = mouseX + random(-30, 30);
    float endY = mouseY + random(-30, 30);
    
    // to draw bezier curves, we need 4 points!
    // we calculate two control points.
    // the first one is around the start point
    // the second one is around the end point
    float cp0x = startX + random(-40, 40);
    float cp0y = startY + random(-40, 40);

    float cp1x = endX + random(-40, 40);
    float cp1y = endY + random(-40, 40);

    // make a curve between start and end points
    // passing two random control points
    strokeWeight(3);
    stroke(20, random(100, 180), 40);
    noFill();
    bezier(startX, startY, cp0x, cp0y, cp1x, cp1y, endX, endY);

    // draw circle at the end point
    stroke(random(220, 250), random(180, 230), random(50));
    fill(random(220, 250), random(180, 230), random(50));
    ellipse(endX, endY, random(25, 30), random(25, 30));
  }
}

void keyPressed() {
  // clear the screen when we press the space bar
  if(key == ' ') {
    background(255);
  }
  // save the image when we press 's'
  if(key == 's') {
    save(System.currentTimeMillis() + ".png");
  }
}
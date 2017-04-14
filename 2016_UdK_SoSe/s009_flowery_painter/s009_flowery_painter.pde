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

    // make a line between start and end points
    strokeWeight(3);
    stroke(#40A520);
    line(startX, startY, endX, endY);

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
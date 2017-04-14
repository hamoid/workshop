// mouseX mouseY
void setup() {
  // this runs one time  
  size(600, 600);
  background(0);
}

void draw() {
  // erase the screen (optional)
  //background(0);
  
  // this runs 60 times per second
  strokeWeight(10);
  // fourth argument is opacity
  stroke(random(255), 0, 0, 10);
  ellipse(mouseX, mouseY, mouseX, mouseX);
}

void keyPressed() {
  // note the single quotes (not double!)
  if(key == 's') {
    save("result.png");
  }
}
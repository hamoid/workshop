// this program keeps running and drawing.

// this runs only once
void setup() {
  size(600, 400);
  background(#A2C3F0);
}

// this runs 60 times per second
void draw() {
  fill(20, random(100, 250), 50); // set the fill color
  //fill(255, 0, 0); // set the fill color
  
  ellipse(random(100, 300), 100, 30, 30);
}
void keyPressed() {
  save(System.currentTimeMillis() + ".png");
}
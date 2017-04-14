void recRec(float sz, int age, float colorHue) {
  fill(colorHue, 200, 255 - colorHue);
  rect(0, 0, sz, sz);
  
  // after drawing the rectangle, 
  // rotate the axes 45 degrees 
  rotate(radians(45));

  // the child size is half of the parent size
  sz = sz / 2;
  // child is 1 year older than the parent
  age = age + 1;

  if (age < 8) {
      pushMatrix();
      translate(0, sz); // Right
      recRec(sz, age, colorHue + random(30));
      popMatrix();

      pushMatrix();
      translate(0, -sz); // Left
      recRec(sz, age, colorHue + random(30));
      popMatrix();

      pushMatrix();
      translate(-sz, 0); // Up
      recRec(sz, age, colorHue + random(30));
      popMatrix();

      pushMatrix();
      translate(sz, 0); // Down
      recRec(sz, age, colorHue + random(30));
      popMatrix();
  }
}

void setup() {
  size(800, 800);
  background(0);
  noStroke();
  colorMode(HSB);
  rectMode(CENTER);
  
  // center the origin 
  // (0, 0 is now on the center 
  // instead of top-left corner)
  translate(width/2, height/2);
  recRec(400, 0, 0);
}

void draw() {
}
void setup() {
  size(800, 400);
}

void draw() {
  // formula to have something happen only 10% of the time
  if(random(100) < 10) {
    // these two lines will run sometimes
    fill(random(30), random(200, 255), random(100));
    ellipse(random(300, 500), random(height), 20, 20);
  }

  // 0.1% probability of erasing the screen
  if(random(100) < 0.1) {
    background(255);
  }
  
  // EXERCISE: try to make a program that does one kind of 
  // drawing most of the time (one shape or one color) and
  // sometimes (rarely) a different shape or color. 
}
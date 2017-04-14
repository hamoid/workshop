// how many generations of circles we want
int maxGenerations = 40;

// function that draws a dot, and requests another dot, maybe two.
// we pass a current position, a direction (angle), and the "age".
void recursiveCircle(float x, float y, float angle, float generation) {
  // calculate the dot size based on the generation.
  // newer generations are smaller.
  float sz = map(generation, 0, maxGenerations, 30, 1);
  ellipse(x, y, sz, sz);
  
  // if we don't have enough generations, keep going
  if(generation < maxGenerations) {
    // the branch turns a bit randomly
    float newAngle = angle + random(-0.5, 0.5);
    // the step is always the same size (10)
    float newX = x + 10 * cos(newAngle);
    float newY = y + 10 * sin(newAngle);
    recursiveCircle(newX, newY, newAngle, generation + 1);

    // 10% chance of starting a new branch
    if(random(100) < 10) {
      // the new branch has a more random direction
      newAngle = angle + random(-1, 1);
      newX = x + 10 * cos(newAngle);
      newY = y + 10 * sin(newAngle);
      recursiveCircle(newX, newY, newAngle, generation + 1);      
    }
  }
}

void setup() {
  size(800, 800);  
  background(255);
  fill(0);
  noStroke();
  rectMode(CENTER);

  // we start with 4 branches
  recursiveCircle(width/2, height/2, random(TWO_PI), 0);
  recursiveCircle(width/2, height/2, random(TWO_PI), 0);
  recursiveCircle(width/2, height/2, random(TWO_PI), 0);
  recursiveCircle(width/2, height/2, random(TWO_PI), 0);
}

void draw() {
}

void keyPressed() {
  if (key == 's') {
    save(System.currentTimeMillis() + ".png");
  }
}
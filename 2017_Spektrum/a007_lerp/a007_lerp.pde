float x, y;
float currR = 0, targetR = 0;
float currG = 0, targetG = 0;
float currB = 0, targetB = 0;

void setup() {
  size(600, 600);
}
void draw() {
  background(currR, currG, currB);
  fill(255);
  ellipse(x, y, 50, 50);
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);

  // interpolate a number towards another number by 5%
  currR = lerp(currR, targetR, 0.05);
  currG = lerp(currG, targetG, 0.05);
  currB = lerp(currB, targetB, 0.05);
  
  // Formula: difference between two numbers.
  // if the difference is low, we have reached
  // our destination.
  if(abs(targetR-currR) < 0.1) {
    targetR = random(255);
  }
  if(abs(targetG-currG) < 0.1) {
    targetG = random(255);
  }
  if(abs(targetB-currB) < 0.1) {
    targetB = random(255);
  }
  
  // visualize our colors as positions
  fill(#FF0000);
  line(0,100,255,100);
  ellipse(currR, 100, 10, 10);

  fill(#00FF00);
  line(0,120,255,120);
  ellipse(currG, 120, 10, 10);

  fill(#0000FF);
  line(0,140,255,140);
  ellipse(currB, 140, 10, 10);
}
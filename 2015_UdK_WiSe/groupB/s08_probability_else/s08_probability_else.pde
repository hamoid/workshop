float x = 0;
float y = 0;
void setup() {
  size(600, 600);
  background(#221133);
  noStroke();
}
void draw() {
  // high probability of small circle
  if(random(100) < 99) {
    ellipse(x, y, 10, 10);
  } else {
    ellipse(x, y, 30, 30);
  }
  
  x = x + 30;
  if(x > width) {
    x = 0;
    y = y + 30;
  }
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
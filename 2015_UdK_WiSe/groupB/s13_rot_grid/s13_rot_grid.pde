float x;
float y;
void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
  fill(0);
}
void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount * 0.3));
  rect(0, 0, 40, 10);
  popMatrix();
  
  x = x + 50;
  if(x > width) {
    x = 0;
    y = y + 50;
  }
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
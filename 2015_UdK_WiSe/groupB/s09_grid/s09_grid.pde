float x = 0;
float y = 0;
float rectColor = 0;
void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  fill(rectColor);
  
  rect(x, 0, 5, height);  
  x = x + random(50);
  if(x > width) {
    x = 0;
  }

  rect(0, y, width, 5);  
  y = y + random(50);
  if(y > height) {
    y = 0;
  }

  rectColor = rectColor + 1;
  if(rectColor > 255) {
    rectColor = 0;
  }
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
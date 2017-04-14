void setup() {
  colorEllipse(); 
}
void draw() {
}
void mousePressed() {
  int x = width - mouseX;
  int y = mouseY;
  colorEllipse(x, y); // (80, 33); 
}

// function that takes two arguments of type float
void colorEllipse() {
  colorEllipse(random(width), random(height));
}
void colorEllipse(float x, float y) {
  fill(random(255), random(255), random(255));
  ellipse(x, y, 50, 50);
}
float x, y;
void setup() {
  size(600, 600);
}

void draw() {
  background(#4477AA);
  
  // No easing
  //x = mouseX;
  //y = mouseY;
  
  // Easing
  x = lerp(x, mouseX, 0.1);
  y = lerp(y, mouseY, 0.1);
  
  ellipse(x, y, 50, 50);
}
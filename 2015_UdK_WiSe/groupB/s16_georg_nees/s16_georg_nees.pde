float x;
float y;
void setup() {
  size(600, 600);
   x = 0;
   y = 0;
}

void draw() {
  float r = map(x,  0, width,  0, 20);
  rect(x+random(-r, r), y+random(-r, r), 40, 40);
  
  x = x + 40;
  if(x > width) {
    x = 0;
    y = y + 40;
  }
}
void keyPressed () {
  if(key == 's') {
    // Save the image with a unique name
    save(System.currentTimeMillis() + ".png");
  }
}
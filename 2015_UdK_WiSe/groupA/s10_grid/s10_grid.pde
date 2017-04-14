float x = 0;
float y = 0;
float sz;
void setup() {
  size(600, 600);
  background(#992288);
}
void draw() {
  sz = random(50);
  ellipse(x, y, sz, sz);
  
  x = x + 50;
  
  if(x > width) {
    x = 0;
    y = y + 50;
  }
  //if( y...
  // did we touch the bottom
  // of the screen?
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
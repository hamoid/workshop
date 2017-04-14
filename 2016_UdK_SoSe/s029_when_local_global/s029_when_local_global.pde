// global
float x, y;

void mousePressed() {
  x = x + random(-20, 20);
  y = y + random(-20, 20);
}
void setup() {
  size(600, 600);
  // local
  //int y;
  y = 100;
  thisIsMyFunction();
}
void draw() {
  //int x = 0;
  //int y = 100;
  background(255);
  ellipse(x, y, 10, 10);
}
void thisIsMyFunction() {
  println("hei");
}
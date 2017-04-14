float x, y, px, py;
void setup() {
  size(600, 600);
  px = 0;
  py = 50;
  strokeWeight(40);
  background(255);
}

void draw() {
  stroke(255-y*0.5);
  // noise() is related to random,
  // but provides smoothed out values.
  line(x, y + 80*noise(x*.01, y*.01), 
    px, py + 80*noise(px*.01, py*.01));
  px = x;
  py = y;
  x = x + 10;
  if(x > width) {
    x = 0;
    y = y + 20;
    px = x;
    py = y;
  }
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
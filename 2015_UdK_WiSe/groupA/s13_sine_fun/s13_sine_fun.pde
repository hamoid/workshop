void setup() {
  size(600, 600);
  background(0);
  stroke(255, 20);
}

void draw() {
  float t = frameCount * 0.05; // 0.05 sets the speed
  
  float x1 = width/2 + width/2 * sin(t); // 0 .. width
  float y1 = height/2 + height/2 * sin(t*1.1); // 0 .. height

  float x2 = width/2 + width/2 * sin(t*1.2);
  float y2 = height/2 + height/2 * sin(t*1.3);

  line(x1, y1, x2, y2);
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
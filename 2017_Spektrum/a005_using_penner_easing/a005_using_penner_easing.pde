import penner.easing.*;

void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  float t = constrain(frameCount, 0, 100);
  float x = Quint.easeInOut(t, 100, 200, 100);
  rect(x, 70, 10, 10);
  
  // boring
  x = map(t, 0, 100, 100, 300);
  rect(x, 100, 10, 10);
}
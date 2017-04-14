void setup() {
  size(600, 600);
  
  for(float x = 50; x < 500; x = x + 50) {
    fill(x / 2);
    rect(x, 100, 20, 20);
  }
}
void draw() {
}
void mousePressed() {
  for(float i=0; i<50; i=i+1) {
    ellipse(random(width), random(height), 20, 20);
  }
}
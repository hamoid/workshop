void branch(float x, float y, float len, float angle) {
  float endx = x + len * cos(radians(angle));
  float endy = y + len * sin(radians(angle));
  
  line(x, y, endx, endy);
  
  if(len > 10) {
    branch(endx, endy, len * random(0.3, 0.9), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.9), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.9), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.9), angle + random(-30, 30));
  }
}
void setup() {
  size(700, 700);
  branch(width/2, height * 0.9, 150, -90);
}

void draw() {
}
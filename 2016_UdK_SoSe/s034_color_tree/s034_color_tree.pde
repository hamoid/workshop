void branch(float x, float y, float len, float angle) {
  float endx = x + len * cos(radians(angle));
  float endy = y + len * sin(radians(angle));
  
  strokeWeight(len * 0.1);
  if(len > 20) {
    stroke(#7C5C3E);
  } else {
    stroke(#72BC4E);
  }
  line(x, y, endx, endy);
  
  if(len > 10) {
    branch(endx, endy, len * random(0.3, 0.85), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.85), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.85), angle + random(-30, 30));
    branch(endx, endy, len * random(0.3, 0.85), angle + random(-30, 30));
  }
}
void setup() {
  size(700, 700);
  background(255);
  branch(width/2, height * 0.9, 150, -90);
}

void draw() {
}
import processing.video.*;

Movie m;

void setup() {
  size(600, 400);
  noStroke();
  background(0);
  m = new Movie(this, "/home/funpro/Videos/2016/MAH05858.MP4");
  m.loop();
}

void draw() {
  if (m.available()) {
    m.read();
  }
  color c = m.get(m.width/2, m.height/2);
  fill(c);
  if(mousePressed) {
    ellipse(mouseX, mouseY, 20, 20);
  }
  
  if (frameCount % 60 == 0) {
    m.jump(random(m.duration()));
  }
}
void mousePressed() {
  m.jump(random(m.duration()));
}
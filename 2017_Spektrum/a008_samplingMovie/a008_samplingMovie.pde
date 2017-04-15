import processing.video.*;

Movie m;

void setup() {
  size(600, 400);
  m = new Movie(this, "/home/funpro/Videos/2016/MAH05727.MP4");
  m.loop();
}

void draw() {
  if (m.available()) {
    m.read();
  }
  color c = m.get(m.width/2, m.height/2);
  stroke(c);
  line(frameCount % width, 0, frameCount % width, height);
  
  if (frameCount % 60 == 0) {
    m.jump(random(m.duration()));
  }
}
void mousePressed() {
  m.jump(random(m.duration()));
}
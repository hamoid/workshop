// Improved version to "draw yourself" too, 
// not only others.
import oscP5.*;
import netP5.*;

OscP5 oscP5;

NetAddress other;
int other_x, other_y;

void setup() {
  size(400, 400);
  oscP5 = new OscP5(this, 12000);

  other = new NetAddress("127.0.0.1", 12000);

  background(0);
  noStroke();
}

void draw() {
  if (other_x > -1) {
    fill(255);
    ellipse(other_x, other_y, 30, 30);
    other_x = -1;
  }
}

void mouseDragged() {
  OscMessage msg = new OscMessage("/moved");  
  msg.add(mouseX);
  msg.add(mouseY);
  // send an OSC message to "other"
  oscP5.send(msg, other);

  // draw yourself
  fill(40);
  ellipse(mouseX, mouseY, 20, 20);
}
// oscEvent runs when we receive an OSC message from someone
void oscEvent(OscMessage msg) {
  other_x = msg.get(0).intValue();
  other_y = msg.get(1).intValue();
}
// Improved version to 
// * "draw yourself" too, not only others
// * Send your own color
import oscP5.*;
import netP5.*;

OscP5 oscP5;

NetAddress other;
int otherX, otherY, otherPressed;
color otherColor;

color myColor;

void setup() {
  size(400, 400);
  oscP5 = new OscP5(this, 12000);

  other = new NetAddress("127.0.0.1", 12000);

  myColor = color(random(255), 0, 255);
  background(255);
  noStroke();
}

void draw() {
  if (otherPressed == 1) {
    fill(otherColor);
    ellipse(otherX, otherY, 30, 30);
    otherPressed = 0;
  }
}

void mouseDragged() {
  OscMessage msg = new OscMessage("/drawMe");  
  msg.add(mouseX);
  msg.add(mouseY);
  msg.add(myColor);
  // send an OSC message to "other"
  oscP5.send(msg, other);

  // draw yourself
  fill(myColor);
  ellipse(mouseX, mouseY, 20, 20);
}
// oscEvent runs when we receive an OSC message from someone
void oscEvent(OscMessage msg) {
  println(msg.address());
  otherX = msg.get(0).intValue();
  otherY = msg.get(1).intValue();
  otherColor = msg.get(2).intValue();
  otherPressed = 1;
}
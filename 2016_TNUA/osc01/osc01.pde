// We need to import the oscP5 
// library so Processing knows
// what "OscP5" and "NetAddress" means.
import oscP5.*;
import netP5.*;

// Here we create two variables.
// The variable type is on the left,
// the variable name is on the right.
OscP5 oscP5;
NetAddress other;

// two variables to store the mouse
// position of the "other" person
int other_x, other_y;

void setup() {
  size(400, 400);
  oscP5 = new OscP5(this, 12000);

  // "127.0.0.1" is our own computer's address.
  // We need to replace it with the IP address 
  // of the computer we want to talk to.
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
}
// oscEvent runs when we receive an OSC message from someone
void oscEvent(OscMessage msg) {
  other_x = msg.get(0).intValue();
  other_y = msg.get(1).intValue();
}
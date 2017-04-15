Envelope sz;

void setup() {
  size(600, 600, P2D);
  fill(#FF66FF);
  noStroke();
  
  // Create an envelope and give it an initial value
  sz = new Envelope(100);
}

void draw() {
  background(255);
  
  // Tell the envelope to update itself using the current time
  sz.next();
  
  // Read the envelope value
  ellipse(width/2, height/2, sz.currVal, sz.currVal);
}
void mousePressed() {
  // Start a new new envelope, from the current value
  // to a random one in 500 milliseconds
  sz.initialize(new float[] {
    sz.currVal, 500, random(50, 400), 100, sz.currVal
  }, 3);
}
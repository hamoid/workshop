Envelope gray;

void setup() {
  size(600, 600);

  gray = new Envelope(0);
}

void draw() {
  background(gray.currVal);

  gray.next();
}
void keyPressed() {
  gray.initialize(new float[] {
    gray.currVal, 200, random(255)
    }, 1);
}
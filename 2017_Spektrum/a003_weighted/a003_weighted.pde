WeightedRandom type;
float x, y;
float separation = 50;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  x = 50;
  y = 50;
  type = new WeightedRandom(
    new int[] {0, 1, 2},
    new int[] {80, 20, 10}
  );
}
void draw() {
  int theType = type.findValue();

  if (theType == 0) {
    fill(#1234F6);
    rect(x, y, 40, 20);
  } else if(theType == 1) {
    fill(#F54321);
    rect(x, y, 20, 40);
  } else if(theType == 2) {
    fill(#66F299);
    rect(x, y, 20, 20);
  }

  x = x + separation;
  if (x > width) {
    x = 50;
    y = y + separation;
  }
  if (y > height) {
    stop();
    println("done");
  }
}
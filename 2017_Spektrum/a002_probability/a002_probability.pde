float x, y;
float separation = 50;
void setup() {
  size(600, 600);
  rectMode(CENTER);
  x = 50;
  y = 50;
}
void draw() {
  // random sizes for circles
  //float sz = random(10, 40);
  //ellipse(x, y, sz, sz);

  if (random(100) < 97) {
    rect(x, y, 20, 20);
  } else {
    rect(x, y, 50, 50);
  }

  if (random(100) < 97) {
    fill(255);
  } else {
    fill(#FF0000);
  }

  // move right
  x = x + separation;
  // if too far right...
  if (x > width) {
    // jump left and down
    x = 50;
    y = y + separation;
  }
  // if too far down...
  if (y > height) {
    stop();
    println("done");
  }
}
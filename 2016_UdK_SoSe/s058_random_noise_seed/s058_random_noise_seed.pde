// Press 'j' and 'k' to browse random designs

int seed = 1983;

void setup() {
  size(1200, 300);
  background(44);
  rectMode(CENTER);
}
void draw() {
}
void keyPressed() {
  if(key == 'j') {
    seed = seed - 1;
    drawThing();
  }
  if(key == 'k') {
    seed = seed + 1;
    drawThing();
  }
  if(key == 's') {
    save("result.png");
  }
}

// You can use a "seed" with random() and noise().
// The seed pre-defines the numbers which you get
// out of random() and noise(). That means that they
// are not truly random. That's why they are known as
// "pseudorandom".

// seed enables to reproduce (repeat) the sequence of
// random numbers you get. Reproducibility
// is sometimes a requirement in your project.

// Notice how this program produces always the same random design for
// each seed. If you change the seed, you get a different design.
// You could write down the seed value to repeat the design.
void drawThing() {
  background(44);

  fill(255);
  text(seed, 20, height - 10);
  randomSeed(seed);

  for (int i=0; i<50; i=i+1) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(random(TWO_PI));
    translate(random(100), 0);
    if (random(100) < 5) {
      fill(random(255), 0, 0);
    } else {
      fill(random(255));
    }
    rect(0, 0, random(100), random(50));
    popMatrix();
  }
}
PShader scroll;
float w2, h2, lastx=0, lasty=0;
int alpha = 255;
int alphaOffset = 0;
boolean run = false;

void setup() {
  size(800, 600, P2D);
  frameRate(30);
  colorMode(HSB);
  noCursor();
  w2 = width/2.0;
  h2 = height/2.0;
  // change bg color for very different results
  background(0);
  noStroke();
  /*
  for (int i=0; i<150; i++) {
    fill(random(255), random(40), random(80), 100);
    ellipse(random(width), random(height), random(100, 200), random(100, 200));
  }
  */
}

void draw() {
  if (run) {
    scroll.set("n", frameCount/100.0);
    filter(scroll);

    if (random(1) > 0.93) {
      fill(0, 255, random(255));
    }
    ellipse(random(width), random(height), random(4), random(4));

    fill(random(255), random(0, 30), random(255)*random(1), random(100, 255));

    float sz = random(20, 50);
    float r = (cos(frameCount/(131.9+50.0*sin(frameCount/237.0))) + 1) * h2;
    float d = (1+sin(frameCount/89.0))*5.0;
    float x = w2+r*sin(frameCount/(33.7+d));
    float y = h2+r*cos(frameCount/(31.7+d));

    strokeWeight(2);
    stroke(255, 2*dist(x, y, lastx, lasty));
    line(x, y, lastx, lasty);
    noStroke();

    beginShape();
    for (float a = 0; a<TWO_PI; a+=0.3) {
      float j = random(1.0, 1.5);
      curveVertex(x + j*sz*sin(a), y + j*sz*cos(a));
    }
    endShape(CLOSE);

    lastx = x;
    lasty = y;

    if (frameCount > 200 && frameCount < 2000) {
      //saveFrame("/home/funpro/Desktop/dark/####.tif");
    }
    fill(0, alpha);
    rect(0, 0, width, height);
    alpha += alphaOffset;
    if (alpha == 0 || alpha == 255) {
      alphaOffset = 0;
    }
  }
}
void mousePressed() {
  if (!run) {
    scroll = loadShader("scroll.glsl");
    run = true;
  }
  if (alpha == 255) {
    alphaOffset = -1;
  }
  if (alpha == 0) {
    alphaOffset = 1;
  }
}
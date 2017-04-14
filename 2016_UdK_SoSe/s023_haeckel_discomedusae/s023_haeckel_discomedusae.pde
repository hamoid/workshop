// inspired by
// https://en.wikipedia.org/wiki/Kunstformen_der_Natur#/media/File:Haeckel_Discomedusae_8.jpg

// store some colors in variables so we can
// reuse them later
int white       = #FEFEFE; 
int lightBlue   = #7CA6B7;
int darkBlue    = #0C273C;
int lightYellow = #FAB13E;
int darkYellow  = #C45F09;
int lightRed    = #A82801;
int darkRed     = #981519;

// these variables contain the current state (the drawing pen location)
float angle, x, y, distance;

void setup() {
  size(700, 700);
  background(white);

  // blue body
  stroke(darkBlue);
  fill(lightBlue);
  ellipse(width/2, height/2, 200, 200);

  reset();
}

void draw() {
  // make the angle oscillate (increase, decrease, increase...)
  angle = angle + 0.03 * sin(frameCount * 0.1);
  // increase the distance
  distance = distance + 1;
  // calculate the pen position based on distance and angle
  x = width / 2 + distance * cos(angle);
  y = height / 2 + distance * sin(angle);

  // if we went too far...
  if (distance > 200) {
    reset();
  }
  
  // draw an ellipse on the point we calculated above
  // using polar coordinates
  ellipse(x, y, 10, 10);
}
void reset() {
  // a random direction
  angle = radians(random(360));
  // we start at this distance, and increase it
  distance = 80;

  // randomly choose a color set (90% yellow probability, 10% red)
  if (random(100) < 90) {
    stroke(darkYellow);
    fill(lightYellow);
  } else {
    stroke(darkRed);
    fill(lightRed);
  }
}
void keyPressed() {
  if (key == 's') {
    save(System.currentTimeMillis() + ".jpg");
  }
}
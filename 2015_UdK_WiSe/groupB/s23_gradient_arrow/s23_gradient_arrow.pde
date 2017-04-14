int x = 0;
float bri = 0;
float briInc;
void setup() {
  fullScreen();
  briInc = random(1, 10);
  noStroke();
}
void draw() {
  fill(bri);
  float y = map(x, 0, width, 0, height/2);
  rect(x, y, 1, height-y*2);
  x = x + 1;
  bri = bri + briInc;
  
  if(bri > 255) {
    if(random(100) < 10) {
      briInc = random(-2, -1); // 10%
    } else {
      briInc = random(-10, -5); // 90%
    }
  }
  
  if(bri < 0) {
    if(random(100) < 10) {
      briInc = random(5, 10); // 10%
    } else {
      briInc = random(1, 2); // 90%
    }
  }
}
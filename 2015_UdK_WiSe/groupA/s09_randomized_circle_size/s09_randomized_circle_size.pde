float sz;
void setup() {
  size(400, 400);
  noStroke();
  //frameRate(60); // default frame rate is 60 fps
}
void draw() {
  sz = random(400);
  fill(random(255), 50);
  ellipse(width/2, height/2, sz, sz);
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
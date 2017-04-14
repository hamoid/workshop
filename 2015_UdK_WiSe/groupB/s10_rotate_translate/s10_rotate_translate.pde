void setup() {
  size(600, 600);
  rectMode(CENTER);
  fill(0);
}
void draw() {
  background(255);

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  rect(0, 0, 100, 50);
  popMatrix();

  pushMatrix();
  translate(width*0.75, height/2);
  rotate(radians(frameCount * 2));
  rect(0, 0, 100, 50);
  popMatrix();
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
float px, py;
void setup() {
  size(600, 600);
  background(255);
}
void draw() {
  
  //float x = width/2 + width/2 * sin(frameCount * 0.03) * sin(frameCount * 0.17);
  //float y = height/2 + height/2 * sin(frameCount * 0.033) * sin(frameCount * 0.11);
  //strokeWeight(10 + 10 * sin(frameCount * 0.1));

  float val = sin(frameCount * 0.03) * sin(frameCount * 0.17);
  float x = map(val, -1, 1, 0, width);
  
  val = sin(frameCount * 0.033) * sin(frameCount * 0.11);
  float y = map(val, -1, 1, 0, height);
  
  val = sin(frameCount * 0.1);
  strokeWeight(map(val, -1, 1, 1, 20));

  line(px, py, x, y);
  
  px = x;
  py = y;
}
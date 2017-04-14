void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  // map the result of sin(), which is between -1 and 1,
  // into values between 450 and 500.
  float x = map(sin(frameCount * 0.1), -1, 1, 450, 500);
  
  // you can do it without map(), but you need to think more about
  // the math operations:
  //float x = 475 + 25 * sin(frameCount * 0.01);
  
  ellipse(x, 200, 20, 20);
}
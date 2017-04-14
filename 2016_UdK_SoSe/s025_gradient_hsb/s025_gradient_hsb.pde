void setup() {
  size(600, 200);
  background(255);
  strokeWeight(3);
  colorMode(HSB); // hue saturation brightness
}
void draw() {
  //background(255);
  float x = frameCount;
  
  // 20 controls the amplitude
  // 0.4 sets the frequency
  // float y = height/2 + 20 * cos(x * 0.4);
  // ellipse(x, y, 20, 20);
  
  float h = map(sin(x * 0.001), -1, 1, 0, 255);
  int c = color(h, 255, 255);
  stroke(c);
  line(x, 0, x, height);
}
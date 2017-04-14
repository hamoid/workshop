PShader shader1;

void setup() {
  size(800, 600, P2D);
  colorMode(HSB);

  shader1 = loadShader("frag.glsl");
}
void draw() {
  float t = frameCount * 0.03;

  shader1.set("time", t);
  shader(shader1);

  for (float i=0; i<1; i+=1.0/20) {
    noStroke();
    fill(i * 255, 255, 255);
    rect(0, i * height, width, height / 20 + 1);
  }
}
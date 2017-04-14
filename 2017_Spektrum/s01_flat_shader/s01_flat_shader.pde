PShader shader1;

void setup() {
  size(800, 600, P2D);
  colorMode(HSB);

  shader1 = loadShader("frag.glsl");
}
void draw() {
  background(255);
  shader(shader1);
  fill(#FF0000);
  ellipse(width*0.4, height*0.4, 200, 200);
  fill(#00FF00);
  ellipse(width*0.6, height*0.6, 200, 200);
}
PShader shader1;

void setup() {
  size(800, 600, P3D);
  noStroke();

  shader1 = loadShader("frag.glsl", "vert.glsl");
}
void draw() {
  //float a = frameCount * 0.01;
  //float x = sin(a);
  //float y = cos(a);
  directionalLight(255, 255, 255, -1, -1, -1);   
  
  float t = frameCount * 0.03;

  shader1.set("time", t);
  shader(shader1);

  translate(width/2, height/2);
  sphere(200);
}
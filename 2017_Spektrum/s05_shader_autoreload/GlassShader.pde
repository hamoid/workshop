// http://www.lighthouse3d.com/tutorials/glsl-tutorial/toon-shader-version-ii/

import org.funprogramming.P5Helper;

ShaderReloader toon;

void setup() {
  fullScreen(P3D);
  colorMode(HSB);
  noStroke();
  toon = new ShaderReloader(this, "ToonFrag.glsl", "ToonVert.glsl");
}

void draw() {
  hint(DISABLE_DEPTH_TEST);
  background(0); 
  blendMode(ADD);

  toon.apply();
  pushMatrix();
  rotateX(-0.25);
  directionalLight(204, 204, 204, 0, 0, -1);
  popMatrix();

  translate(width/2, height/2);

  for (int i=0; i<10; i++) {
    pushMatrix();
    rotateZ((frameCount + i * 15) * 0.003);
    translate(100*sin((-frameCount + i * 15)*0.0337), 0);
    fill(i * 30, 100, 90);
    sphere(20 + i * 30);
    popMatrix();
  }
}  
void keyPressed() {
  if(key == 's') {
    P5Helper.save(this);
  }
}
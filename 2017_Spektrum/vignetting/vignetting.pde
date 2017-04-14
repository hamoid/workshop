int w2, h2;
PShader vignetting, soft;

void setup() {
  fullScreen(P2D);
  background(0);
  w2 = width/2;
  h2 = height/2;
  vignetting = loadShader("vignetting.glsl");
  vignetting.set("strength", 0.33);
  vignetting.set("tint", 1.0, 0.97, 0.8);
  soft = loadShader("soft.glsl"); 
  noStroke();
}

void draw() {
  background(100);
  
  translate(w2, h2);
  
  for(int i=0; i<30; i++) {
    rotate(i * frameCount * 0.0001);
    fill(i % 2 == 0 ? 255 : 100);
    rectMode(CENTER);
    float sz = 900 - i * 30;
    rect(0, 0, sz, sz);
  }
  
  if(!mousePressed) {
    filter(vignetting);
    filter(soft);
  }
}
void keyPressed() {
  if (key == 's') {
    saveFrame();
  }
}
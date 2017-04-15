import wblut.math.*;
import wblut.processing.*;
import wblut.core.*;
import wblut.hemesh.*;
import wblut.geom.*;

HE_Mesh mesh;
WB_Render render;
HEC_Archimedes creator;
WB_AABB box;

int currentType;

PShader shader1;

void setup() {
  size(800, 600, P3D);
  noStroke();
  fill(255);
  box=new WB_AABB(-150, -150, -150, 150, 150, 150);
  makeShape();
  render=new WB_Render(this);

  shader1 = loadShader("frag.glsl", "vert.glsl");
}
void draw() {
  background(#0971B2);
  shader(shader1);
  directionalLight(255, 255, 255, -1, -1, -1);

  pushMatrix();
  translate(width*0.33, height*0.33, 0);
  rotateY(map(mouseX, 0, width, -PI/2, PI/2));
  rotateX(map(mouseY, 0, height, PI/2, -PI/2));
  fill(#FF0000);
  render.drawFaces(mesh);
  popMatrix();

  pushMatrix();
  translate(width*0.66, height*0.66, 0);
  rotateY(map(mouseX, 0, width, -PI/2, PI/2));
  rotateX(map(mouseY, 0, height, -PI/2, PI/2));
  fill(#FF8800);
  render.drawFaces(mesh);
  popMatrix();
}
void mousePressed() {
  makeShape();
}
void keyPressed() {
  save("stripes.png");
}
void makeShape() {
  currentType=(currentType+1)%13;
  creator=new HEC_Archimedes();
  creator.setEdge(100); 
  creator.setType(currentType+1);
  mesh=new HE_Mesh(creator); 
  mesh.fitInAABBConstrained(box);
}
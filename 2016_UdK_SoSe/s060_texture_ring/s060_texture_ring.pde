PImage tex;

// Example using textures.
// Not recommended for the final project because it involves using bitmap images
// instead of vector shapes, which will make the poster heavy and potentially pixelated.

void setup() {
  size(800, 800, P2D);
  tex = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120830_002317.jpg");
  noStroke();
  //textureMode(NORMAL);
}
void draw() {
  beginShape(TRIANGLE_STRIP);
  texture(tex);
  for (float angle=0; angle<=360; angle=angle+5) {
    float a = radians(angle);
    // point on inner ring
    float x0 = width/2 + 200 * cos(a);
    float y0 = height/2 + 200 * sin(a);
    // point on outer ring
    float x1 = width/2 + 250 * cos(a);
    float y1 = height/2 + 250 * sin(a);

    // A. If using textureMode(NORMAL) ...
    // we are using normalized coordinates for the texture
    // so 0,0 is top-left, 0.5,0.5 is center, 
    // and 1,1 is bottom-right
    //float texX = angle / 360.0; // this gives a number between 0 and 1 
    //float texY0 = 0.49; // a bit above the vertical center
    //float texY1 = 0.51; // a bit below the vertical center
    
    // B. If not using textureMode(NORMAL)
    float texX = map(angle, 0, 360, 0, tex.width); 
    float texY0 = tex.height * 0.49; // a bit above the vertical center
    float texY1 = tex.height * 0.51; // a bit below the vertical center

    vertex(x0, y0, texX, texY0);
    vertex(x1, y1, texX, texY1);
  }
  endShape();
}
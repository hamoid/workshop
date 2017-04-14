PImage tex;

// Example using textures.
// Not recommended for the final project because it involves using bitmap images
// instead of vector shapes, which will make the poster heavy and potentially pixelated.

void setup() {
  size(800, 800, P2D);

  // How to load a random image from a folder
  //File path = new File("/home/funpro/Pictures/n1/Instagram/");
  //File[] files = path.listFiles();
  //tex = loadImage(files[int(random(files.length))].getAbsolutePath());
  
  tex = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120915_003747.jpg");
  
  noStroke();
}
void draw() {
  beginShape(TRIANGLE_STRIP);
  texture(tex);
  for (float angle=0; angle<=360; angle=angle+5) {
    float a = radians(angle);
    
    // animated increasing radius
    float r1 = 400 + 400 * sin(frameCount * 0.01);
    float r2 = r1 + 50;
    
    // point on inner ring
    float x0 = width/2 + r1 * cos(a);
    float y0 = height/2 + r1 * sin(a);
    // point on outer ring
    float x1 = width/2 + r2 * cos(a);
    float y1 = height/2 + r2 * sin(a);

    float texX = map(angle, 0, 360, 0, tex.width); 
    float texY0 = tex.height * noise(frameCount * 0.01); 
    float texY1 = tex.height * noise(frameCount * 0.01, 0.5);

    vertex(x0, y0, texX, texY0);
    vertex(x1, y1, texX, texY1);
  }
  endShape();
}
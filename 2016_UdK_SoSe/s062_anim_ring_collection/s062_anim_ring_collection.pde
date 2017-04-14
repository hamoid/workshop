import processing.video.*;
Movie movie;
int theX = 100, theY = 50;

// Example using textures.
// Not recommended for the final project because it involves using bitmap images
// instead of vector shapes, which will make the poster heavy and potentially pixelated.

void setup() {
  size(1200, 600, P2D);
  background(255);

  movie = new Movie(this, "/home/funpro/Desktop/work/2015_altsoundtrack/alternativesoundtrack/version4_eclipse/movies/t2-na.mp4");
  movie.loop();
  
  noStroke();
  println(sketchPath());
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }
  translate(theX, theY);
  rotate(frameCount * 0.01);
  
  beginShape(TRIANGLE_STRIP);
  texture(movie);
  for (float angle=0; angle<=360; angle=angle+5) {
    float a = radians(angle);
    
    // animated increasing radius
    float r1 = 100 * sin(frameCount * 0.02) * noise(sin(a/2), frameCount * 0.01);
    float r2 = r1 + 8;

    // point on inner ring
    float x0 = r1 * cos(a);
    float y0 = r1 * sin(a);
    // point on outer ring
    float x1 = r2 * cos(a);
    float y1 = r2 * sin(a);

    float texX = map(angle, 0, 360, 0, movie.width); 
    float texY0 = movie.height * noise(frameCount * 0.01); 
    float texY1 = movie.height * noise(frameCount * 0.01, 0.5);

    vertex(x0, y0, texX, texY0);
    vertex(x1, y1, texX, texY1);
  }
  endShape();
  
  theY += 5;
  if(theY > height - 50) {
    theY = 50;
    theX += 100;
  }
}
import processing.video.*;
import processing.pdf.*;

Movie movie;

float x, y;

void setup() {
  size(800, 800);
  background(255);
  movie = new Movie(this, "/home/funpro/Desktop/work/2015_altsoundtrack/alternativesoundtrack/version4_eclipse/movies/t2-na.mp4");
  movie.loop();

  x = width/2;
  y = height/2;
  noStroke();
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }

  for (int i=0; i<50; i=i+1) {
    // we need to map the position because the size of 
    // our sketch and the video are probably different
    int videoX = int(map(x, 0, width, 0, movie.width));
    int videoY = int(map(y, 0, height, 0, movie.height));

    // grab a color from the video
    color aPixel = movie.get(videoX, videoY);

    // get the hue of that color
    float hu = hue(aPixel);
    // map the hue into an angle in degrees
    // this angle will define in which direction our
    // point moves
    float angle = map(hu, 0, 255, 0, 360);

    float sat = saturation(aPixel);
    float sz = map(sat, 0, 255, 1, 40);

    float bri = brightness(aPixel);
    float stepSize = map(bri, 0, 255, 0.2, 10);

    // lets move 5 pixels away in direction "angle"
    x = x + stepSize * cos(radians(angle));
    y = y + stepSize * sin(radians(angle));

    stroke(aPixel);
    
    // we had ellipse before, but the PDF becomes very heavy with thousands
    // of ellipses:
    // ellipse(x, y, sz, sz);
    
    // instead of ellipses we can draw points, which make the PDF much smaller:
    strokeWeight(sz);
    point(x, y);

    if (x<0 || x > width || y < 0 || y > height) {
      x = width/2;
      y = height/2;
    }
  }
  // Try: 
  // - use brightness to define the step size (instead of 0.3). 
  //   Watch out for the range! 255 is too large for a step (it would end up outside of the screen)
  // - use saturation for the size of the ellipse
  // - check if x and y are out of the screen. jump back to center if they are.
  // - draw the ellipse with the color from aPixel
  // - put the lines starting with "ellipse().." in a loop, so you draw 100 points per frame instead of just one.
  // - try different videos to produce different results
}
void mousePressed() {
  beginRecord(PDF, "Movie.pdf"); 
  background(255);
}

void mouseReleased() {
  endRecord();
  background(255);
}
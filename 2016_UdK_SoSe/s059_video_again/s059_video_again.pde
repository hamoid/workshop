import processing.video.*;
import processing.pdf.*;

Movie movie;
float x, y;

void setup() {
  size(800, 800);
  background(255);
  movie = new Movie(this, "/home/funpro/Desktop/work/2015_altsoundtrack/alternativesoundtrack/version4_eclipse/movies/t2-na.mp4");
  movie.loop();
  strokeWeight(5);

  x = width/2;
  y = height/2;
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }

  color colorT = movie.get(int(movie.width * 0.5), int(movie.height * 0.25));
  color colorB = movie.get(int(movie.width * 0.5), int(movie.height * 0.75));
  color colorL = movie.get(int(movie.width * 0.25), int(movie.height * 0.5));
  color colorR = movie.get(int(movie.width * 0.75), int(movie.height * 0.5));
  
  x = x + (brightness(colorL) - brightness(colorR)) * 0.1;
  y = y + (brightness(colorT) - brightness(colorB)) * 0.1;
  
  point(x, y);
  
  if(x < 0 || x > width || y < 0 || y > height) {
    x = width/2;
    y = height/2;
  }
}
void mousePressed() {
  beginRecord(PDF, "Movie.pdf"); 
  background(255);
}

void mouseReleased() {
  endRecord();
  background(255);
}
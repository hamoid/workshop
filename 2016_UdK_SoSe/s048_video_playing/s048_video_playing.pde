import processing.video.*;

Movie movie;

void setup() {
  size(1000, 400);
  movie = new Movie(this, "/home/funpro/Videos/2016/MAQ05315.MP4");
  movie.loop();
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }
  //image(movie, 0, 0);
  color aColor = movie.get(movie.width/2, movie.height/2);
  stroke(aColor);
  
  int x = frameCount % width; // % = modulo, useful for looping
                 // it wraps values around width (in this case)
    
  line(x, 0, x, height);
}
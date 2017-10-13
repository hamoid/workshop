import java.io.FilenameFilter;
import processing.video.*;

Movie movie;
int x;

void setup() {
  size(640, 360);
  String file = getRandom("MP4", "/home/funpro/Videos/2015/");
  movie = new Movie(this, file);
  movie.loop();
  noStroke();
}


void draw() {
  if (movie.available()) {
    movie.read();
    color c = movie.get(movie.width/2, movie.height/2);
    fill(c);
  }
  if (mousePressed) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}

// A function that returns the path of a random file
// in the specified folder, with the requested file extension.
String getRandom(final String ext, String path) {
  File f = new File(path);
  File[] files = f.listFiles(new FilenameFilter() {
    public boolean accept(File dir, String name) {
      return name.toLowerCase().endsWith(ext.toLowerCase());
    }
  }
  );
  String randomFile = files[(int)random(files.length)].getAbsolutePath();
  println(randomFile);
  return randomFile;
}
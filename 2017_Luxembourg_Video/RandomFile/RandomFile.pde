// This program shows how to load a random video file
// from a folder when the program starts.

// For it to work, it imports FilenameFilter.

// The code is more advanced and maybe harder to understand,
// but you can just add the import line and the getRandom
// function found at the end of the program and then 
// use getRandom() in your own programs to load random 
// images or videos from a folder in your hard drive.

// This import is used by getRandom()
import java.io.FilenameFilter;
import processing.video.*;

Movie movie;
int x;

void setup() {
  size(640, 360);
  // here we use getRandom(). First argument is the 
  // file extension we want (.MP4 in this case) and
  // the second argument is a path to a folder containing
  // files you want to load in your program.
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

// The getRandom function is defined here, and it
// returns the path of a random file in the 
// specified folder, with the requested file extension.
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
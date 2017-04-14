import com.hamoid.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.spi.*;

VideoExport videoExport;

String audioFilePath = "../../audioAnalyze/data/Zikrayat_-_03_-_Drum_Solo.mp3";

String SEP = "|";
float movieFPS = 30;
float frameDuration = 1 / movieFPS;
BufferedReader reader;

void setup() {
  size(600, 600);

  // Open the text file we just created for reading
  reader = createReader(audioFilePath + ".txt");

  // Set up the video exporting
  videoExport = new VideoExport(this);
  videoExport.setFrameRate(movieFPS);
  videoExport.setAudioFileName(audioFilePath);
  videoExport.startMovie();
}
void draw() {
  String line;
  try {
    line = reader.readLine();
  }
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line == null) {
    // Done reading the file.
    // Close the video file.
    videoExport.endMovie();
    exit();
  } else {
    String[] p = split(line, SEP);
    // The first column indicates 
    // the sound time in seconds.
    float soundTime = float(p[0]);

    // Our movie will have 30 frames per second.
    // Our FFT analysis probably produces 
    // 43 rows per second (44100 / fftSize) or 
    // 46.875 rows per second (48000 / fftSize).
    // We have two different data rates: 30fps vs 43rps.
    // How to deal with that? We render frames as
    // long as the movie time is less than the latest
    // data (sound) time. 
    // I added an offset of half frame duration, 
    // but I'm not sure if it's useful nor what 
    // would be the ideal value. Please experiment :)
    while (videoExport.getCurrentTime() < soundTime + frameDuration * 0.5) {
      background(0);
      noStroke();
      // Iterate over all our data points (different
      // audio frequencies. First bass, then hihats)
      for (int i=1; i<p.length; i++) {
        float value = float(p[i]);
        pushMatrix();
        translate(width/2, height/2);
        if(i%2 == 1) {
          // Left channel value
          fill(255, 50, 20);
          rotate(i * 0.05);
          translate(50, 0);
          rect(value * 5, -5, value * 4, 10);
        } else {
          // Right channel value
          fill(20, 100, 250);
          rotate(-i * 0.05);
          translate(50, 0);
          rect(value * 5, -5, value * 4, 10);
        }
        popMatrix();
      }
      videoExport.saveFrame();
    }
  }
}
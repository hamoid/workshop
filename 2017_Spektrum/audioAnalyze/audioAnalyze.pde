import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.spi.*;


String audioFilePath = "Wilhelm_Matthies_and_Jared_C_Balogh_-_58_-_Left_mic_unused_piece.mp3";

String SEP = "|";
float movieFPS = 30;
float frameDuration = 1 / movieFPS;
BufferedReader reader;

void setup() {
  size(600, 600);

  // Read a sound file and output a txt file
  // with the FFT analysis.
  // It uses Minim, because the standard
  // Sound library did not work in my system.

  // You could comment out this line once you
  // have produced the txt file to speed up
  // experimentation. Otherwise every time you
  // run this program it re-generates the FFT
  // analysis.
  audioToTextFile(audioFilePath);
}
void draw() {
}

// Minim based audio FFT to data text file conversion.
// You can look at the txt file in the data folder
// after running this program to see how it looks like.
void audioToTextFile(String fileName) {
  PrintWriter output;

  Minim minim = new Minim(this);
  output = createWriter(dataPath(fileName + ".txt"));

  AudioSample track = minim.loadSample(fileName, 2048);

  int fftSize = 1024;
  float sampleRate = track.sampleRate();

  float[] fftSamplesL = new float[fftSize];
  float[] fftSamplesR = new float[fftSize];

  float[] samplesL = track.getChannel(AudioSample.LEFT);
  float[] samplesR = track.getChannel(AudioSample.RIGHT);  

  FFT fftL = new FFT(fftSize, sampleRate);
  FFT fftR = new FFT(fftSize, sampleRate);

  fftL.logAverages(22, 3);
  fftR.logAverages(22, 3);

  int totalChunks = (samplesL.length / fftSize) + 1;
  int fftSlices = fftL.avgSize();

  for (int ci = 0; ci < totalChunks; ++ci) {
    int chunkStartIndex = ci * fftSize;   
    int chunkSize = min( samplesL.length - chunkStartIndex, fftSize );

    System.arraycopy( samplesL, chunkStartIndex, fftSamplesL, 0, chunkSize);      
    System.arraycopy( samplesR, chunkStartIndex, fftSamplesR, 0, chunkSize);      
    if ( chunkSize < fftSize ) {
      java.util.Arrays.fill( fftSamplesL, chunkSize, fftSamplesL.length - 1, 0.0 );
      java.util.Arrays.fill( fftSamplesR, chunkSize, fftSamplesR.length - 1, 0.0 );
    }

    fftL.forward( fftSamplesL );
    fftR.forward( fftSamplesL );

    // The format of the saved txt file.
    // The file contains many rows. Each row looks like this:
    // T|L|R|L|R|L|R|... etc
    // where T is the time in seconds
    // Then we alternate left and right channel FFT values
    // The first L and R values in each row are low frequencies (bass)
    // and they go towards high frequency as we advance towards
    // the end of the line.
    StringBuilder msg = new StringBuilder(nf(chunkStartIndex/sampleRate, 0, 3));
    for (int i=0; i<fftSlices; ++i) {
      msg.append(SEP + nf(fftL.getAvg(i), 0, 4));
      msg.append(SEP + nf(fftR.getAvg(i), 0, 4));
    }
    output.println(msg.toString());
  }
  track.close();
  output.flush();
  output.close();
  println("Sound analysis done");
}
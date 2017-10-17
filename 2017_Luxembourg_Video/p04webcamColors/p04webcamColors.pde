// using the webcam

// drawing the webcam twice on the screen
// plus an ellipse, whose size depends on the brightness
// of the center pixel of the webcam.

import processing.video.*;

Capture mywebcam;

void setup() {
  size(800, 400);
  String[] cameras = Capture.list();
  // This prints a list of cameras in the console.
  // Each entry has a number (1, 2, 3, 4...)
  printArray(cameras);
  
  // Normally I choose the number that is next to 640 pixels wide,
  // and has 30 frames per second. I write that number in the next
  // line inside the square brackets [...]
  
  // If you have several webcams connected, they should show up
  // in that list.
  
  // standard version.  
  mywebcam = new Capture(this, cameras[0]);
  
  mywebcam.start();
}
void draw() {
  if (mywebcam.available()) {
    mywebcam.read();
  }
  // show the webcam image
  image(mywebcam, mouseX, mouseY, 100, 80);
  image(mywebcam, width-mouseX, height-mouseY, 100, 80);
 
  // grab the color of center pixel of the webcam:
  color webcamcolor = mywebcam.get(mywebcam.width/2, mywebcam.height/2);
  // calculate the brightness of the color we got in the previous line
  float colorBri = brightness(webcamcolor);
  fill(webcamcolor);

  if (mousePressed) {
    noStroke();
    // use the brightness to control the size of a circle
    ellipse(mouseX, mouseY, colorBri, colorBri);
  }  
}
void keyPressed() {
  if(key == 's') {
    // this saves the screen with a UNIQUE FILE NAME
    // It does that by getting the current system time (a long number) and appending ".jpg" to that number.
    // This way we create a file name like "123456780.jpg". Since the system time always goes forward
    // we can never get the same file name twice. A nice benefit of using the system time is that all the
    // files we save are nicely sorted by time.
    save(System.currentTimeMillis() + ".jpg");
    // I suggest you use either ".jpg" (faster, lighter) or ".png" (better quality, slower, heavier)
  }
}
import processing.video.*;

Capture mywebcam;

void setup() {
  size(800, 400);
  String[] cameras = Capture.list();
  printArray(cameras);
  // 640 pixels wide 30 fps. change the 0!
  mywebcam = new Capture(this, cameras[0]);
  abe only version: mywebcam = new Capture(this);
  mywebcam.start();
}
void draw() {
  if (mywebcam.available()) {
    mywebcam.read();
  }
  // show the webcam image
  //image(mywebcam, 0, 0);
  
  // grab color of center pixel of the webcam:
  color webcamcolor = mywebcam.get(mywebcam.width/2, mywebcam.height/2);
  fill(webcamcolor);

  if (mousePressed) {
    noStroke();
    ellipse(mouseX, mouseY, random(50), random(50));
  }  
}
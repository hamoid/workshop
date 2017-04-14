import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  printArray(cameras);
  cam = new Capture(this, cameras[2]);
  cam.start();
}

void draw() {
  //background(255);
  if (cam.available() == true) {
    cam.read();
  }
  //image(cam, 0, 0, 40, 40);
  
  color onePixel = cam.get(cam.width/2, cam.height/2); // color = int
  
  float bri = brightness(onePixel); // 0 .. 255
  float hu = hue(onePixel);
  float sa = saturation(onePixel);

  float sz = map(bri, 0, 255, 0, 50);
  float x = map(hu, 0, 255, 0, width); 
  float y = map(sa, 0, 255, 0, height);
  
  ellipse(x, y, sz, sz);  
}
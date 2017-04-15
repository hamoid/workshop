import processing.video.*;

Movie m;

void setup() {
  size(600, 400);
  noStroke();
  background(0);
  m = new Movie(this, "/home/funpro/Videos/2016/MAH06110.MP4");
  m.loop();
}

void draw() {
  if (m.available()) {
    m.read();
  }
  // copy the first column of pixels of the video to a variable column on the screen
  background(0);
  blendMode(ADD);
  // avoid using copy if video is not ready
  if (m.height > 0) {
    // read vertical, draw horizontal stripes
    copy(m, 
      m.width/2, 0, 1, m.height, // video coordinates 
      0, 0, width, height); // screen coordinates
    // read horizontal, draw vertical stripes
    copy(m, 
      0, m.height/2, m.width, 1,  
      0, 0, width, height);
  }
}
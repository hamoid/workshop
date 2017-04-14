PImage img;
void setup() {
  size(600, 600);
  img = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120720_214440.jpg");
  
  image(img, 0, 0);
}

void draw() {
  if(mousePressed) {
    ellipse(mouseX, mouseY, 10, 10);
  }
}

void keyPressed() {
  // when pressing the space bar, randomly load one of two available images
  if(key == ' ') {
    // choose the first image with a probability of 30%
    if(random(100) < 30) {
      img = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120720_214440.jpg");
    } else {
      // the second image is loaded 70% of the times we press the space bar
      img = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120726_050534.jpg");
    }
    // finally display the loaded image
    image(img, 0, 0);
  }
}
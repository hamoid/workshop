PImage img;
// configuration variables at the top
int numberOfImages = 20;

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
  // when pressing the space bar, randomly load one of many available images
  if(key == ' ') {
    // assuming we have images named photo0.jpg to photo19.jpg
    // configure the numberOfImages at the top of the program
    int num = int(random(numberOfImages));
    img = loadImage("/path/to/img/photo" + num + ".jpg");
    // use nf() if your numbering has a fixed number of digits
    //img = loadImage("/path/to/img/photo" + nf(num, 4) + ".jpg");
    image(img, 0, 0);
  }
}
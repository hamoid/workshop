PImage img;
int x = 0;
void setup() {
  size(600, 600);
  background(255);
  stroke(0);
  img = loadImage("/home/funpro/Pictures/n1/Instagram/IMG_20120715_213257.jpg");
}
void draw() {
  if (x < img.width) {
    int co = img.get(x, 100);
    
    // declare variables
    float endX, endY, startY;
    
    strokeWeight(5);
    
    endX = 2 * brightness(co);
    endY = 2 * hue(co);
    startY = height - 2 * saturation(co);
 
    stroke(0, 20);
    line(width/2, startY, endX, endY);
    
    noStroke();
    fill(co);
    ellipse(endX, endY, 20, 20);
    
    x = x + 1;
  }
}
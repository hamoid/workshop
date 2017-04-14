// Paper image license: https://creativecommons.org/licenses/by/2.0/
// Author: https://www.flickr.com/photos/playingwithpsp/2546732439/in/photolist-4T3EPZ-pqtQVx-967hhV-D5Lni-56w7fr-9GQoRK-ceYdrh-cfpaRA-7WTN4N-edPe1G-cfyhGs-4y4Xxy-h6R8go-cfpFKh-7hWDdS-ceXNc3-9fDYjN-ceXEu1-dhcgcP-cfu61E-cfuDgS-9GQp44-cfsNCW-7ABUQY-4U1ZjW-8TmMHk-b2PrN2-cfvB5G-edXbAk-7WPTAV-cfp47w-ceYpbJ-edQb7s-9QFc5i-cfpKDo-84Gw2S-cfpzVJ-b8xgAr-cftcfs-cf14sm-qKtyH1-b3Yz1M-odZmq1-99TAz5-2V2uSq-b1zSw2-bC37Hi-8EVRmL-8ykv7K-rBbna

void setup() {
  size(700, 700);
  background(#F6F6F6);
  
  // Load an image from the data/ folder found in the
  // sketch folder.
  PImage paper = loadImage("paper.jpg");
  
  // Draw the image on the center of the window
  float x = width / 2 - paper.width / 2;
  float y = height / 2 - paper.height / 2;
  // alternative
  //imageMode(CENTER);
  image(paper, x, y);
  
  noFill();
}

void draw() {
  if(mousePressed) {
    // calculate a transparency value between 0 and 60.
    // It oscillates between those two values over time.
    // The multiplied value sets the oscillation speed.
    float alpha = map(sin(frameCount * 0.03), -1, 1, 0, 60);
    stroke(40, 20, 5, alpha);

    // We will draw a curve starting at the center
    // of the window
    float x = width / 2;
    float y = height / 2;
 
    // The line ends at the mouse position
    // The other two points are in this case a mix
    // between the start and end points.
    bezier(x, y, // start 
      x, mouseY, // control point 1
      mouseX, y, // control point 2
      mouseX, mouseY); // end
  }
}
void keyPressed() {
  if(key == 's') {
    save(System.currentTimeMillis() + ".jpg");
  }
}
// mouse interaction

// drawing lines from the mouse position to a random
// point on the right border of the screen

// the 's' key is used for saving an image

// this is called only once
void setup() {
  // the curly brackets define a block of code
  // it starts above with the { and ends below with }
  size(600, 400);
  background(255, 0, 0);
}

// this is called 60 times per second
void draw() {
  // lines from top left corner
  // to somewhere on the right border of the window
  stroke(random(255), random(255), random(255));
  line(mouseX, mouseY, width, random(height) );
}

// Next: how to save the image to share
void keyPressed() {
  // println is used for debugging, it shows
  // stuff on the console (black area at bottom)
  println("key pressed");
  // if the pressed key is 's', then save the
  // screen image as "beauty.png". It is saved
  // inside the sketch folder (press CTRL+K to find it)
  if(key == 's') {
    save("beauty.png");
    println("image saved!");
    // notice: it will overwrite old versions of the image!
  }
}
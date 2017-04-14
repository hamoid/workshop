// Code online: https://github.com/hamoid/tnua/

// A global variable can be accessed from anywhere
// in your program
float sz;

// setup runs one time when starting the program
void setup() {
  size(600, 600);
  background(#C6A520);
}
// draw runs 60 times per second
void draw() {  
  noStroke();
}
// mouseDragged runs when you move the mouse while
// pressing a mouse button
void mouseDragged() {
  // if is used for doing things when a certain
  // condition is true. For instance: is the mouse
  // on the left side of the screen?
  //if(mouseX < 200) {
    
  // When doing generative design, sometimes we
  // want that things happen with some uncertainty.
  // You can use the next expression to make things
  // happen with a certain probability (10% in this case)
  if(random(100) < 10) {
    ellipse( mouseX, mouseY, sz, sz );
  }
}
// mousePressed runs when we click the mouse
void mousePressed() {
  // Random amount of Red, Green and Blue
  fill(random(255), random(255), random(255));
  
  // Choose a random size for the ellipse,
  // store it in the global variable "sz"
  sz = random(10, 50);
}
// keyPressed runs when we press a key on the keyboard
void keyPressed() {
  save("nameOfImage.png"); // png gif jpg tif tga
}
import processing.pdf.*;
void setup() {
  size(600, 600);
  // Start exporting a PDF as soon as the program starts
  beginRecord(PDF, "lines-" + System.currentTimeMillis() + ".pdf");
  // It's important to set colors, line width, etc AFTER
  // starting the PDF. Otherwise those adjustments don't make it
  // to the PDF and you may wonder why colors are wrong.
  background(255, 0, 0);
  println("Started PDF");
}
void draw() {
  stroke(0, 20);
  strokeWeight(20.0);
  line(mouseX, 0, width, mouseY);
}
void keyPressed() {
  if(key == '1') {
    endRecord();
    println("PDF done");
    exit(); // exit() quits your program
  }
}
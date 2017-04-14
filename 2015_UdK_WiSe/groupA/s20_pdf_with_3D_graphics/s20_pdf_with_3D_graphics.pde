// PDF with 3D
// Press "s" to save a PDF.

import processing.opengl.*;
import processing.pdf.*;

void setup() {
  size(600, 600, OPENGL);

  // Advanced PDF mode
  PGraphicsPDF pdf = (PGraphicsPDF)beginRaw(PDF, "3D.pdf"); 

  // set default Illustrator stroke styles and paint background rect.
  pdf.strokeJoin(MITER);
  pdf.strokeCap(SQUARE);
  pdf.fill(0); // PDF background color
  pdf.noStroke();
  pdf.rect(0, 0, width, height);
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  rotateX(random(TWO_PI));
  rotateY(random(TWO_PI));
  box(random(100), random(100), random(100)); 
}

void keyPressed() {
  if (key == '1') { 
    endRaw();
    exit();
  }
}
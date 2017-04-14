

void setup() {
  size(300, 300);
  strokeWeight(5);
}
void draw() {
  // decide a random vertical 
  // position for the line
  float my = random(300);

  // set random color for lines
  stroke(random(255));

  // draw a horizontal line
  line(0, my, my, height);
  line(my, 0, width, my);
  
  ellipse(width/2, height/2, 100, 100);
}
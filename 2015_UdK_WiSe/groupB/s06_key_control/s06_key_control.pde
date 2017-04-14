// declare a variable
float x;
float y;
void setup() {
  size(600, 600);
  background(random(255), 0, random(255));
  // initialize the variable
  x = width/2;
  y = height/2;
}

void draw() {
  // use the variable
  stroke(random(255));
  ellipse(x, y, 50, 50);  
}
void keyPressed() {
  if(key == 'a') {
    x = x - 10;
  }
  if(key == 'o') {
    x = x + 10;
  }
  if(key == ' ') {
    x = random(width);
    y = random(height);
  }
  if(key == 's') {
    save("result.png");
  }
}
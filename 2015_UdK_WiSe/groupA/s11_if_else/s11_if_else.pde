void setup() {
  size(600, 600);
  background(random(255), random(255), random(255));
}

void draw() {
  
  // && means "and"
  // || means "or"
  
  // We can use these operators to write
  // more complex conditions. For instance
  // if x is more than 20 
  // and (x is) less than 40, which means
  // that x is between 20 and 40.
   
  if (mouseX < 200 && mouseY < 200) {
    ellipse(mouseX, mouseY, 20, 20);
  } else {
    line(mouseX, mouseY, width, height);
  }
}

void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}
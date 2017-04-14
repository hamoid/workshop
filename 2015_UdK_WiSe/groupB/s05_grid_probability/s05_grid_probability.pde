void setup() {
  size(480, 480);
  colorMode(HSB);
  background(0);
}

void draw(){
  noStroke();
  
  if(random(100) < 2) { // 2% chance
    fill(random(0, 40), 250, random(200, 250));    
  } else {
    fill(random(100, 140), 250, random(100, 250));
  }
  
  // floor() finds the next lowest integer.
  // For 3.7 it would return 3.
  // For 1.1 it would return 1.
  // Using floor(12) we can get only 12
  // different values (0 .. 11) which we
  // multiply by 40, which gives us
  // 0, 40, 80, 120 ... 400, 440
  rect(
    floor(random(12)) * 40, 
    floor(random(12)) * 40, 
    35, 35);
}

void keyPressed() {
  // note the single quotes (not double!)
  if(key == 's') {
    save("result.png");
  }
}
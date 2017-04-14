void setup() {
  size(600, 600);
  
  int i=10;
  while(i > 0) {
    println(i);
    i = i - 1;
  }

  while(random(100) < 90) {
    println("lucky");
  }
}

void draw() {
  int i=0;
  while(i < 1000) {
    ellipse(random(width), random(height), 2, 2);
    
    // 50 lines of code
    
    i = i + 1;
  }
  
  
}
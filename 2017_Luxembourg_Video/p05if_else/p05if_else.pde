// if-else example (conditionals)

// with if/else you can make code run if
// certain condition is true, and run a different
// code if the condition is not true (else case).

void draw() {
  background(255);
  
  // if the mouse is on the right side of the screen
  // use red, otherwise green
  if(mouseY > 80) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  
  // if/else can be used to make things happen some times,
  // with a given probability
  
  // what we do here is to compare a random number with another
  // number. To give a less computer-like example, imagine you
  // roll a dice that has the numbers 1, 2, 3, 4, 5 and 6.

  // Your condition would be something like: if the number is
  // less than 2, I win. I hope you can see that this is less
  // probable than "if the number is less than 5".
  
  // By changing the "5" in that sentence, you control how
  // likely the event is to happen. A full list:
  // if the number is less than 1...  0.0% probability
  // if the number is less than 2... 16.6% probability
  // if the number is less than 3... 33.3% probability
  // if the number is less than 4... 50.0% probability
  // if the number is less than 5... 66.6% probability
  // if the number is less than 6... 83.3% probability
  // if the number is less than 7...100.0% probability
  
  // 90% probability
  if(random(100) < 90) {
    ellipse(20, 20, 50, 50);
  }
}
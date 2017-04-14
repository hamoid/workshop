// random()
// horizontal and vertical lines
// float variables

// ways of specifying colors and transparency
// animating: setup + draw functions
// repetition: for loop

size(600, 600);
background(255);

// red, not random
fill(255, 0, 0);
ellipse(random(width), random(height), 30, 50);

// random color, probably with more red than green and blue
fill(random(255), random(50), random(20));
ellipse(random(width), random(height), 30, 50);

// random shade of gray
fill(random(255));
ellipse(random(width), random(height), 30, 50);

// print text to the console (just out of curiosity) 
println(random(100));

//save("result.png");
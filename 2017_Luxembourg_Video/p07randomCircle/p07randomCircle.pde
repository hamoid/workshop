// reusing a variable

// this program draws a circle of random size.

// to draw circles, the width must be equal to the height.

// run this program multiple times to see different results

size(800, 800);
// white, opacity = 100
fill(255, 100);

// come up with a random size
float circleSize = random(400);

// a circle
// use the random size twice to draw a circle
ellipse(400, 400, circleSize, circleSize);

// probably not a circle! because width and height
// are probably different.
ellipse(400, 400, random(400), random(400));
size(800, 800);

// This program shows how to draw a circle that
// is tangent to another circle

float x = 233;
float y = 333;
float rad = 120;

ellipse(x, y, rad*2, rad*2);

// a 2nd circle tangent to the first one
float rad2 = 30;
float angle = random(TWO_PI);
float x2 = x + (rad + rad2) * cos(angle);  
float y2 = y + (rad + rad2) * sin(angle);  
fill(#FFFF00);
ellipse(x2, y2, rad2*2, rad2*2);

// a 3rd circle, tangent on the inside of the 1st one
float rad3 = 40;
angle = random(TWO_PI);
float x3 = x + (rad - rad3) * cos(angle);  
float y3 = y + (rad - rad3) * sin(angle);  

fill(#FF00FF);
ellipse(x3, y3, rad3*2, rad3*2);
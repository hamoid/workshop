size(300, 200);
background(#FFCC00);
noStroke();
fill(255, 180);
rect(0, 0, width/2, height);

stroke(0);
fill(#92E81C);
// top left
ellipse(0, 0, 100, 100);

// don't fill the shape
noFill();
// middle
strokeWeight(10);
ellipse(width/2, height/2, 100, 100);
stroke(#FFFFFF);
line(width/2, 0, width/2, height);
line(0, height/2, width, height/2);

// no border in the next shapes
noStroke();
fill(#F14C63);
// bottom right
ellipse(width, height, 100, 100);

//save("result.png");
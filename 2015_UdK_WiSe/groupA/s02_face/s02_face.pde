size(500, 500);
background(#FFCC00);

ellipse(width/2, height/2, 100, 100);

// dark eyes
fill(0);
ellipse(width/2 - 20, height/2 - 30, 20, 20);
ellipse(width/2 + 20, height/2 - 30, 20, 20);

// mouth
rectMode(CENTER);
rect(width/2, height/2, 40, 10);

// white eyes
fill(255);
ellipse(width/2 - 20, height/2 - 30, 10, 10);
ellipse(width/2 + 20, height/2 - 30, 10, 10);

//save("result.png");

size(800, 500);
background(#FFCC00);

fill(#2AC0F5);   
ellipse(width/2, height/2, 200, 200);

fill(#223388);   
ellipse(width/2, height/2, 150, 150);

fill(#448822);   
ellipse(width/2, height/2, 100, 100);

fill(#113399);   
ellipse(width/2, height/2, 50, 50);

// print is useful to debug your programs, and find out
// what is actually happening.
println(width/2);

// eyes
fill(#FFFFFF);
ellipse(width/2-20, height/2-20, 60, 80);
ellipse(width/2+20, height/2-20, 60, 80);
fill(#000000);
ellipse(width/2-20, height/2-30, 20, 20);
ellipse(width/2+20, height/2-10, 10, 10);

// mouth
strokeWeight(5);
fill(#FFFFFF);
arc(width/2, height/2+40, 160, 90, 0, PI, CLOSE);

// tongue
noStroke();
fill(#FF0000);
arc(width/2, height/2+80, 30, 40, 0, PI, CLOSE);

save("result.png");
// horizontal & vertical lines

size(600, 400);
background(255);

strokeWeight(2);
line(0, 50, width, 50);

strokeWeight(4);
line(0, 100, width, 100);

strokeWeight(8);
line(0, 150, width, 150);

strokeWeight(16);
line(0, 200, width, 200);

strokeWeight(32);
line(0, 250, width, 250);

save("result.png");
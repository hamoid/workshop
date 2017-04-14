size(600, 600);

colorMode(HSB);
background(255);
noStroke();

// counting from 0 to 19
for (float i=0; i<20; i=i+1) {
  float sz = 500 - 20 * i;
  fill(random(255), 155, 255);
  ellipse(300, 300, sz, sz);
}

save("result.png");
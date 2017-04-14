size(600, 600);
for(int x=0; x<width; x=x+50) {
  for(int y=0; y<height; y=y+50) {
    if(y<height*0.25) {
      ellipse(x, y, 20, 20);
    }
    if(y>=height*0.25 && y < height*0.5) {
      rect(x, y, 20, 20);
    }
    if(y>=height*0.5 && y<height*0.75) {
      triangle(x, y, x+20, y, x, y+20);
    }
  }
}
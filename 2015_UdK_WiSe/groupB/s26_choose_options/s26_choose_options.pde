// choosing between 6 options
int option = floor(random(6));

if (option == 0) {
  fill(#FF0000);
} else if (option == 1) {
  fill(#FF00FF);
} else if (option == 2) {
  fill(#00FF00);
} else if (option == 3) {
  fill(#0000FF);
} else if (option == 4) {
  fill(0);
} else if (option == 5) {
  fill(255);
}
println(option);
ellipse(width/2, height/2, width, height);
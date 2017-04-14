void setup() {
  size(800, 600);
}

void draw() {
  noStroke();
  fill(100 + 100 * sin(frameCount*0.09), 
    100 + 100 * sin(frameCount*0.10), 
    100 + 100 * sin(frameCount*0.11)
    );
  ellipse(width/2 + 200*sin(frameCount*0.08), 
    height/2 + 200*sin(frameCount*0.05), 
    50 + 30 * sin(frameCount * 0.03), 
    50 + 30 * sin(frameCount * 0.07));
}
// How to get a number that oscillates in value
// up and down:
// Think of the center value: 8
// Think how much to go up and down: 2
// 8+2 = 10 and 8-2 = 6 We move between 6 and 10.
// Finally think how fast to move: 0.02
// 8 + 2 * sin(frameCount * 0.02);
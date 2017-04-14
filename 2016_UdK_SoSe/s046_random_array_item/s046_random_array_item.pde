//int[] colors = { #125025, #227088, #028832 };
int[] colors;

void setup() {
  size(800, 400);
  noStroke();
  colors = new int[4];
  colors[0] = #1250FF;
  colors[1] = #22FF88;
  colors[2] = #FF8832;
  colors[3] = #FFFFFF;
}

void draw() {
  // randomly choose an item from the array
  fill(colors[int(random(colors.length))]);
  rect(random(width), 0, random(100), height);
}
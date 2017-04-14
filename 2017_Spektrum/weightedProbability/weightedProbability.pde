WeightedRandom randomColor;
int parts = 16;

void setup() {
  size(512, 512);
  randomColor = new WeightedRandom(
    new int[] {#B2B588, #D9BD73, #C49E53, #A16414, #4E1A1E}, 
    new int[] {100, 3, 1, 11, 33}
    );
  noStroke();
}

void draw() {  
  fill(randomColor.getValue());

  int x = (int)random(parts);
  int y = (int)random(parts);
  rect(x * width/parts, y * height/parts, width/parts, height/parts);
}
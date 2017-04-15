class WeightedRandom {
  int[] values;
  int[] weights;
  int weightsAdded = 0;

  // constructor
  WeightedRandom(int[] values, int[] weights) {
    this.values = values;
    this.weights = weights;
    for (int n : weights) {
      weightsAdded += n;
    }
  }
  int findValue() {
    int itemIndex = 0;
    float rnd = random(weightsAdded);
    float sum = 0;
    for (int n : weights) {
      sum += n;    
      if (sum > rnd) {
        break;
      }
      itemIndex++;
    }
    return values[itemIndex];
  }
}
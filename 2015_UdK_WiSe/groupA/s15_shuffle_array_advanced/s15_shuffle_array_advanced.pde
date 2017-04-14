int[] arr = new int[12];
int len = arr.length;

for(int i=0; i<len; i++) {
  arr[i] = i;
}
// randomize array
for(int i=0; i<len; i++) {
  int from = (int) random(len);
  int to = (int) random(len);
  int tmp = arr[to];
  arr[to] = arr[from];
  arr[from] = tmp;
}
printArray(arr);
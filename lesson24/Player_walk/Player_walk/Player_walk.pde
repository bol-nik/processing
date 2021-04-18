int[] arr = new int[25];
int count = 0;

void setup() {
  size(500, 500);
  for (int i = 0; i < arr.length; i++) {
    arr[i] = (int)random(10, 51);
  }
  background(0);
  noStroke();
  for (int y = 50; y < height; y += 100) {
    for (int x = 50; x < width; x += 100) {
      fill(random(256), random(256), random(256));
      ellipse(x, y, arr[count], arr[count]);
      count++;
    }
  }
  arrayPrint(arr);
}

void draw() {

}

void arrayPrint(int[] arr) {
  // Вывод массива
  print("[");
  for (int i = 0; i < arr.length; i++) {
    if (i != arr.length - 1) print(arr[i] + ", ");
    else print(arr[i]);
  }
  print("]");
}

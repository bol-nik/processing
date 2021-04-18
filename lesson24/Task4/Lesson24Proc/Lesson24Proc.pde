int numBalls = 100;
ArrayList<Ball> b = new ArrayList<Ball>();

void setup() {
  size(900, 900);
  for (int i = 0; i < numBalls; i++) {
    b.add(new Ball(250, 250, 20, 20));
  }
  frameRate(120);
}

void draw() {
  background(255);
  for (int i = 0; i < numBalls; i++) {
    b.get(i).display();
    b.get(i).move();
    b.get(i).checkEdges();
  }
}

void mousePressed() {
  numBalls++;
  b.add(new Ball(mouseX, mouseY, 20, 20));
}

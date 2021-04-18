PImage[] player = new PImage[8];
void setup() {
  size(800, 800);
  for (int i=0; i< player.length; i++) {
    int frame = i+1;
    player[i] = loadImage("Walk (" + frame + ").png");
    player[i].resize(0, 300);
  }
  frameRate(120);
}
int x;
int needFrame =0;
void draw() {
  background(255);
  fill(0);
  rect(0, 400, width, height);
  image(player[needFrame], x, 100);
  x+=2;
  if (x>width) {
    x=0;
  }
  if (x%40 == 0) {
    needFrame++;
    if (needFrame>7) {
      needFrame = 0;
    }
  }
}

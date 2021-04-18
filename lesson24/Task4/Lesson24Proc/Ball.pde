class Ball {
  float x;
  float y;
  float w;
  float h;
  float moveX;
  float moveY;
  color ballColor;// = color(0, 0, 0);;

  Ball(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    moveX = random(2, 4);
    moveY = random(2, 4);
    ballColor = color(random(255), random(255), random(255));
  }

  void display() {
    noStroke();
    fill(ballColor);
    ellipse(x, y, w, h);
  }

  void move() {
    x += moveX;
    y += moveY;
  }

  void checkEdges() {
    if (x > width - w/2) {
      x = width - w/2;
      moveX = -moveX;
    } else if (x < w/2) {
      x = w/2;
      moveX = -moveX;
    } else if (y < h/2) {
      y = h/2;
      moveY = -moveY;
    } else if (y > width - h/2) {
      y = height - h/2;
      moveY = -moveY;
    }
  }
}

class defender {
  int x, y;
  PImage f2;

  defender() {
    x = width/4;
    y = height-100;
    f2 = loadImage("defender.gif");
  }

  void display() {
    f2.resize(80, 80);
    image(f2, x, y);
  }
  void move() {
    if(x>width) {
      x = 0;
      y=int(random(height));
    }
    x = x + 5;
  }
}

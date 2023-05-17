class football {
  int x, y;
  PImage f1;

  football() {
    x = 400;
    y = height/2;
    f1 = loadImage("retrofootball.png");
  }

  void display() {
    //imageMode(CENTER);
    f1.resize(80, 80);
    image(f1, x, y);
  }

  void move() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        y = y - 3;
      } else if (key == 's' || key == 'S') {
        y = y + 3;
      }
    }
  }
}

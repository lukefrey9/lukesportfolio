// Luke Frey and Sam Simos| April 26 2023 | retrofootball App
boolean play;
football josh;
PImage bg;
int y;
int score;
defender jerry;
defender d2;
float defenderDist;

void setup () {
  size(512, 250);
  play = false;
  josh = new football();
  bg = loadImage("footballfield.png.jpg");
  score = 0;
  jerry = new defender();
  bg = loadImage("footballfield.png.jpg");
  //tyler = new defender2();
  bg = loadImage("footballfield.png.jpg");
}

void draw() {
  println(defenderDist);
  if (!play) {
    startScreen();
  } else {
    defenderDist = dist (josh.x, josh.y,jerry.x,jerry.y);
    background(bg);
    jerry.display();
    jerry.move();
    josh.display();
    josh.move();
    //d2.display();
   // d2.move();
    infoPanel();
    if(josh.y > height) {
      gameover();
    }
    if(josh.x > width){
      gameover();
    }
    if(defenderDist<20){
      josh.x = jerry.x;
      score = score -100;
    }
  }

  y++;
  if (y > height) {
    y = 0;
  }
}


void keyPressed() {
  if (key == ' ') {
    play = true;
  }
}
void drawBackground () {
}

void startScreen() {
  background(0);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Welcome to retrofootball!", width/2, 100);
  text("press space to start", width/2, 150);
  textSize(15);
  text("Luke Frey Sam Simos", width/2, 190);
}

void gameover () {
  background(0);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Game Over!", width/2, 100);
  text("Score: ", width/2, 145);
  noLoop();
}
void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 30);
  fill(0);
  textSize(8);
  text("Score: " +  score, 20, 10);
}

//Sophie O'Bryant | April 26, | Clean your room game
boolean play;
PImage bg;
int x, y, score, tarX, tarY;
float d;

void setup() {
  size(500, 500);
  play = false;
  x = 50;
  y = 50;
  score = 0;
  tarX = int(random(width));
  tarY = int(random(height));
  d = 0;
  // ti.start();
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(#B99B83);
    drawBackground();
    d = dist(x, y, tarX, tarY);
    target();
    textSize(20);
    score();
    println(d);
    ellipse(x, y, 20, 20);
    rectMode(CENTER);
    rect(tarX, tarY, 20, 20);
  }
}


void keyPressed() {

  if (key == CODED) {
    if (keyCode == UP) {
      y = y -10 ;
    } else if (keyCode == DOWN) {
      y = y +10;
    } else if (keyCode == RIGHT) {
      x = x +10;
    } else if (keyCode == LEFT) {
      x = x -10;
    }
  }
  if (key == ' ') {
    play = true;
  }
}

void score() {
  rectMode(CORNER);
  fill(#ED88D7, 128);
  fill(#553C06);
  rect(0, 0, width, 30);
  fill(#FFFFFF);
  text("Score: " + score, 10, 25);
  text("Dist: " + d, width-100, 25);
}

void target() {
  if (d<20) {
    score = score + 100;
    tarX = int(random(width));
    tarY = int(random(height));
  }
}
void drawBackground() {
}
void startScreen() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Welcome to Clean Your Room", width/2, 200);
  textSize(35);
  text("Press space bar to start the game!", width/2, 350);
}
void gameOver() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Game Over", width/2, 400);
  text("You Won!", width/2, 440);
  noLoop();
}
void infoPanel() {
  fill(128, 128);
}

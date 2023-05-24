// Sophie O'Bryant | April 17, 2023 | Etch-A-Sketch

int x, y;
PImage pic;

void setup() {
  // size(displayWidth,displayHeight);
  size(800, 658);
  x = width/2;
  y = height/2;
  background(128);
  pic = loadImage("Etch.png");
}

void draw() {
  image(pic, 0, 0);
  strokeWeight(int(random(2, 10)));
  //background(255);
  fill(int(random(50, 200)), int(random(50, 200)), int(random(50, 200)));
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(10);
    }
    if (key == 's' || key == 'S') {
      y = y + 3;
      moveLeft(10);
    }
    if (key == 'a' || key == 'a') {
      x = x - 3;
      moveDown(10);
    }
    if (key == 'd' || key == 'D') {
      moveRight(10);
    }
  }
  }



void mousePressed() {
  saveFrame("line-asses.png");
}

void KeyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(10);
    } else if (keyCode == DOWN) {
      moveDown(10);
    } else if (keyCode == RIGHT) {
      moveRight(10);
    } else if (keyCode == LEFT) {
      moveLeft(10);
    }
  }
}

void moveRight (int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i =i+1) {
    point(x-i, y);
  }
  x = x - rep;
}
void moveUp(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x, y -i);
  }
  y = y - rep;
}
void moveDown(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x, y + i);
  }
  y =y + rep;
}

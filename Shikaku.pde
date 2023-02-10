int playerX = 500;
int playerY = 500;
int speed = 50;

void setup() {
  fullScreen();
  background(#000000);
}

void keyPressed() {
  movement();
}

void movement() {
  if (key == 'w') {
    playerY -= speed;
  }
  if (key == 'a') {
    playerX -= speed;
  }
    if (key == 's') {
    playerY += speed;
  }
  if (key == 'd') {
    playerX += speed;
  }
}

void display() {
  square(playerX, playerY, 50);
}

void draw() {
  display();
}

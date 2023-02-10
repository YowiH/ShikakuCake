float squareX, squareY;
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
    squareY -= speed;
  }
  if (key == 'a') {
    squareX -= speed;
  }
    if (key == 's') {
    squareY += speed;
  }
  if (key == 'd') {
    squareX += speed;
  }
}

void mousePressed() {
  squareX = round(mouseX/speed)*speed;
  squareY = round(mouseY/speed)*speed;
}

void mouseDragged() {
  squareX = round(mouseX/speed)*speed;
  squareY = round(mouseY/speed)*speed;
}

void draw() {
  square(squareX, squareY, 50);
}

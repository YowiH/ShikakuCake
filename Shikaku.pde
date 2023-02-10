float squareX = -50;
float squareY = -50;
int speed = 50;
int leftColor = #FFFFFF;
int rightColor = #000000;

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
  if (mouseButton == LEFT) {
    fill(leftColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
  }
  squareX = round(mouseX/speed)*speed;
  squareY = round(mouseY/speed)*speed;
}

void mouseDragged() {
    if (mouseButton == LEFT) {
    fill(leftColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
  }
  squareX = round(mouseX/speed)*speed;
  squareY = round(mouseY/speed)*speed;
}

void draw() {
  square(squareX, squareY, 50);
}

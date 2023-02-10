float squareX = -50;
float squareY = -50;
int gridDistance = 50;
int leftColor = #FFFFFF;
int rightColor = #000000;
int lineX, lineY = gridDistance;

void movement() {
  if (key == 'w') {
    squareY -= gridDistance;
  }
  if (key == 'a') {
    squareX -= gridDistance;
  }
    if (key == 's') {
    squareY += gridDistance;
  }
  if (key == 'd') {
    squareX += gridDistance;
  }
}

void gridCreation() {
  while (lineX < displayWidth) {
    stroke(leftColor);
    line(lineX, 0, lineX, displayHeight);
    lineX += 50;
  }
  while (lineY < displayHeight) {
    stroke(leftColor);
    line(0, lineY, displayWidth, lineY);
    lineY += 50;
  }
}

void setup() {
  fullScreen();
  background(#000000);
}

void keyPressed() {
  movement();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(leftColor);
    stroke(rightColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
    stroke(leftColor);
  }
  squareX = round(mouseX/gridDistance)*gridDistance;
  squareY = round(mouseY/gridDistance)*gridDistance;
}

void mouseDragged() {
    if (mouseButton == LEFT) {
    fill(leftColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
  }
  squareX = round(mouseX/gridDistance)*gridDistance;
  squareY = round(mouseY/gridDistance)*gridDistance;
}

void draw() {
  square(squareX, squareY, 50);
  gridCreation();
}

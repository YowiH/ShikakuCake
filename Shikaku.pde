float squareX = -50;
float squareY = -50;
int gridDistance = 50;
int leftColor = #FFFFFF;
int rightColor = #000000;
int backgroundColor = #000000;
int gridColor = backgroundColor;
int lineX, lineY = gridDistance;
boolean gridON = false;

void setup() {
  fullScreen();
  background(backgroundColor);
}

void draw() {
  square(squareX, squareY, 50);
  if (gridON == true) {
    gridColor = #808080;
    gridCreation();
    gridON = false;
  }
}

void movement() {
  if (keyCode == UP) {
    squareY -= gridDistance;
  }
  if (keyCode == LEFT) {
    squareX -= gridDistance;
  }
    if (keyCode == DOWN) {
    squareY += gridDistance;
  }
  if (keyCode == RIGHT) {
    squareX += gridDistance;
  }
}

void gridCreation() {
  while (lineX < displayWidth) {
    stroke(gridColor);
    line(lineX, 0, lineX, displayHeight);
    lineX += 50;
  }
  while (lineY < displayHeight) {
    stroke(gridColor);
    line(0, lineY, displayWidth, lineY);
    lineY += 50;
  }
}

void keyPressed() {
  movement();
  if (key == 'g') {
    gridON = true;
  }
  if (key == 'r') {
    background(backgroundColor);
    gridColor = backgroundColor;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(leftColor);
    stroke(gridColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
    stroke(gridColor);
  }
  squareX = round(mouseX/gridDistance)*gridDistance;
  squareY = round(mouseY/gridDistance)*gridDistance;
}

void mouseDragged() {
    if (mouseButton == LEFT) {
    fill(leftColor);
    stroke(gridColor);
  }
  else if (mouseButton == RIGHT) {
    fill(rightColor);
    stroke(gridColor);
  }
  squareX = round(mouseX/gridDistance)*gridDistance;
  squareY = round(mouseY/gridDistance)*gridDistance;
}

class Color {
  int leftClick, rightClick, background, grid;
  Color(int l, int r, int b) {
    this.leftClick = l;
    this.rightClick = r;
    this.background = b;
    this.grid = b;
  }
}
Color color1 = new Color(#FFFFFF, #000000, #000000);

class Grid {
  int distance;
  boolean active;
  Grid(int d, boolean a) {
    this.distance = d;
    this.active = a;
  }
}
Grid grid = new Grid(50, false);

float squareX = -50;
float squareY = -50;
int lineX, lineY = grid.distance;

void setup() {
  fullScreen();
  background(color1.background);
}

void draw() {
  square(squareX, squareY, 50);
  if (grid.active == true) {
    color1.grid = #808080;
    gridCreation();
    grid.active = false;
  }
}

void movement() {
  if (keyCode == UP) {
    squareY -= grid.distance;
  }
  if (keyCode == LEFT) {
    squareX -= grid.distance;
  }
    if (keyCode == DOWN) {
    squareY += grid.distance;
  }
  if (keyCode == RIGHT) {
    squareX += grid.distance;
  }
}

void gridCreation() {
  while (lineX < displayWidth) {
    stroke(color1.grid);
    line(lineX, 0, lineX, displayHeight);
    lineX += 50;
  }
  while (lineY < displayHeight) {
    stroke(color1.grid);
    line(0, lineY, displayWidth, lineY);
    lineY += 50;
  }
}

void keyPressed() {
  movement();
  if (key == 'g') {
    grid.active = true;
  }
  if (key == 'r') {
    background(color1.background);
    color1.grid = color1.background;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(color1.leftClick);
    stroke(color1.grid);
  }
  else if (mouseButton == RIGHT) {
    fill(color1.rightClick);
    stroke(color1.grid);
  }
  squareX = round(mouseX/grid.distance)*grid.distance;
  squareY = round(mouseY/grid.distance)*grid.distance;
}

void mouseDragged() {
    if (mouseButton == LEFT) {
    fill(color1.leftClick);
    stroke(color1.grid);
  }
  else if (mouseButton == RIGHT) {
    fill(color1.rightClick);
    stroke(color1.grid);
  }
  squareX = round(mouseX/grid.distance)*grid.distance;
  squareY = round(mouseY/grid.distance)*grid.distance;
}

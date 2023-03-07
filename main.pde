void setup() {
    fullScreen();
    player.loadSprite();
}

void draw() {
    grid.rubik();
    player.displaySprite();
}

void keyPressed() {
    player.move();
}
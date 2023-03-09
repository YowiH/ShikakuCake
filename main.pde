void setup() {
    fullScreen();
    player.loadSprite();
}

void draw() {
    rubik();
    player.displaySprite();
}

void keyPressed() {
    player.move();
}
void setup() {
    fullScreen();
    player.loadSprite();
    stone.loadSprite();
    grass.loadSprite();
}

void draw() {
    grid.rubik();
    player.displaySprite();
    blockUI.ui();
}

void keyPressed() {
    player.move();
}

void mousePressed() {
    createBlock();
}
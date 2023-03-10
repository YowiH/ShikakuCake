void setup() {
    fullScreen();
    player.loadSprite();
    stone.loadSprite();
    grass.loadSprite();
    cake.loadSprite();
    cake.generate();
}

void draw() {
    grid.rubik();
    ui();
    cake.displaySprite();
    cake.regenerate();
    player.displaySprite();
}

void keyPressed() {
    player.move();
}

void mousePressed() {
    createBlock();
}
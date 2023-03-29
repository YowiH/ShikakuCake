void setup() {
    fullScreen();
    player.loadSprite();
    stone.loadSprite();
    grass.loadSprite();
    cake.loadSprite();
    cake.generate();
    generateEnemy();
}

void draw() {
    grid.rubik();
    ui();
    player.displaySprite();
    appearEnemy();
    cake.displaySprite();
    cake.regenerate();
}

void keyPressed() {
    player.move();
}
void setup() {
    fullScreen();
    player.loadSprite();
    stone.loadSprite();
    grass.loadSprite();
    cake.loadSprite();
    cake.generate();

    enemy1.loadSprite();
    enemy1.generate();
    enemy2.loadSprite();
    enemy2.generate();
    enemy3.loadSprite();
    enemy3.generate();
    enemy4.loadSprite();
    enemy4.generate();
    enemy5.loadSprite();
    enemy5.generate();
    enemy6.loadSprite();
    enemy6.generate();
    enemy7.loadSprite();
    enemy7.generate();
    enemy8.loadSprite();
    enemy8.generate();
    enemy9.loadSprite();
    enemy9.generate();
    enemy10.loadSprite();
    enemy10.generate();
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
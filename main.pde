void setup() {
    fullScreen();
    player.sprite();
    wood.sprite();
    grass.sprite();
    cake.sprite();
    cake.generate();
}

void draw() {
    background(background.iro);
    cake.regenerate();
    // The display order acts like z-index
    grass.display();
    cake.display();
    player.display();
    wood.display();
    grid.display();
}

void keyPressed() {
    player.move();
}

void mousePressed() {
    newBlock();
}

void mouseDragged() {
    newBlock();
}
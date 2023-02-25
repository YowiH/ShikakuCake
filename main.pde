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
    // The display order acts like z-index
    grass.display();
    cake.display();
    player.display();
    wood.display();
}

void keyPressed() {
    player.move();
}

void mousePressed() {
    change();
}

void mouseDragged() {
    change();
}
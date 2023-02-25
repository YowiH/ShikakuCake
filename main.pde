void setup() {
    fullScreen();
    player.sprite();
}

void draw() {
    background(background.iro);
    player.spawn();
}

void keyPressed() {
    player.move();
}
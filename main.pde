void setup() {
    fullScreen();
}

void draw() {
    background(background.iro);
    player.spawn();
}

void keyPressed() {
    player.move();
}
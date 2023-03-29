boolean playing = false;
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
    if (playing == false) {
        background(#000000);
        textSize(100);
        text("Shikaku Cake", displayWidth/3, displayHeight/3);
        triangle(820, 500, 820, 700, 1045, 600);
    }
    if (playing == true) {
        grid.rubik();
        ui();
        player.displaySprite();
        appearEnemy();
        cake.displaySprite();
        cake.regenerate();
    }
}

void keyPressed() {
    if (playing == true) {
        player.move();
    }
}

void mouseClicked() {
    if (playing == false) {
        if (820 < mouseX && mouseX < 1045) {
            if (500 < mouseY && mouseY < 700) {
                playing = true;
            }
        }
    }
}
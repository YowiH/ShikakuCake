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
        background(#ED1C24);
        textSize(100);
        text("Shikaku Cake", displayWidth/3, displayHeight/3);
        triangle(620, 400, 620, 600, 845, 500);
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
        if (620 < mouseX && mouseX < 845) {
            if (400 < mouseY && mouseY < 600) {
                playing = true;
            }
        }
    }
}

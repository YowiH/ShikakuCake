public int shikaku_size = 50;

public class Shikaku {
    PImage img;
    int imgNumber;
    String type;
    color iro;
    int x, y;
    int speed;
    Shikaku(String type_, int imgNumber_, int speed_, int x_, int y_) {
        this.type = type_;
        this.imgNumber = imgNumber_;
        this.speed = speed_;
        this.x = x_;
        this.y = y_;
    }

    void loadSprite() {
        this.img = loadImage("sprites/"+this.type+"/"+this.imgNumber+".png");
    }

    void displaySprite() {
        image(this.img, this.x, this.y, shikaku_size, shikaku_size);
    }

    void move() {
        switch (keyCode) {
            case LEFT :
                this.x -= this.speed;
            break;
            case UP :
                this.y -= this.speed;
            break;
            case RIGHT :
                this.x += this.speed;
            break;
            case DOWN :
                this.y += this.speed;
            break;	
        }
    }

    void positionBlock() {
        this.x = round(mouseX/shikaku_size)*shikaku_size;
        this.y = round(mouseY/shikaku_size)*shikaku_size;
    }

}

Shikaku player = new Shikaku("player", 1, shikaku_size, 900, 550);
Shikaku stone = new Shikaku("ground", 1, 0, 0, 0);
Shikaku grass = new Shikaku("ground", 2, 0, 0, 0);

void createBlock() {
        if (mouseButton == LEFT) {
            grass.positionBlock();
            grass.displaySprite();
            for (int i = 0; i < 30; i++) {
                if (grid_arraylist.get(i).x == grass.x) {
                    grid_arraylist.get(i).img = grass.img;
                }
            }
        }
        else if (mouseButton == RIGHT) {

        }
    }
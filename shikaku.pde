public int shikaku_size = 50;

class Shikaku {
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

    void createBlock() {
        if (mouseButton == LEFT) {

        }
        else if (mouseButton == RIGHT) {

        }
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

}

Shikaku player = new Shikaku("player", 1, shikaku_size, 900, 550);
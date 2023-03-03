class Shikaku {
    PImage img;
    int imgNumber;
    String type;
    color iro;
    int x, y;
    int size = 50;
    int speed;
    Shikaku(String type_, int imgNumber_) {
        this.type = type_;
        this.imgNumber = imgNumber_;
    }
 
    void newBlock() {
        if (mouseButton == LEFT) {
            grass.position();
        }
        else if (mouseButton == RIGHT) {
        }
    }

}

Shikaku player = new Shikaku("player", 1);
public int shikaku_size = 50;
public int score;

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

    void generate() {
        this.x = round(random(100, displayWidth-300)/shikaku_size)*shikaku_size;
        this.y = round(random(100, displayHeight-300)/shikaku_size)*shikaku_size;
    }

    void regenerate() {
        if (player.x == this.x && player.y == this.y) {
            score++;
            this.generate();
            if (score >= 5) {
                enemy1.generate();
            }
            if (score >= 10) {
                enemy2.generate();
            }
            if (score >= 15) {
                enemy3.generate();
            }
            if (score >= 20) {
                enemy4.generate();
            }
            if (score >= 25) {
                enemy5.generate();
            }
            if (score >= 30) {
                enemy6.generate();
            }
            if (score >= 35) {
                enemy7.generate();
            }
            if (score >= 40) {
                enemy8.generate();
            }
            if (score >= 45) {
                enemy9.generate();
            }
            if (score >= 50) {
                enemy10.generate();
            }
        }
    }

}

Shikaku player = new Shikaku("player", 1, shikaku_size, 900, 550);
Shikaku stone = new Shikaku("ground", 1, 0, 0, 0);
Shikaku grass = new Shikaku("ground", 2, 0, 0, 0);
Shikaku cake = new Shikaku("prize", 1, 0, 0, 0);

Shikaku enemy1 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy2 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy3 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy4 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy5 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy6 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy7 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy8 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy9 = new Shikaku("enemy", 1, 0, 0, 0);
Shikaku enemy10 = new Shikaku("enemy", 1, 0, 0, 0);

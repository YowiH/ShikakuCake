class Player {
    PImage img;
    color iro;
    int size, x, y, speed;
    boolean up, left, down, right;
    Player(int size_, int speed_, color iro_) {
        this.size = size_;
        this.speed = speed_;
        this.iro = iro_;
    }
    void sprite() {
        this.img = loadImage("sprites/p2.png");
    }
    void display() {
        image(this.img, this.x, this.y, this.size, this.size);
    }
    void move() {
        if (keyCode == LEFT) {
            this.x -= this.speed;
        }
        else if (keyCode == UP) {
            this.y -= this.speed;
        }
        else if (keyCode == RIGHT) {
            this.x += this.speed;
        }
        else if (keyCode == DOWN) {
            this.y += this.speed;
        }
    }
}
Player player = new Player(50, 50, #a71d31);
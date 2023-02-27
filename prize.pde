class Prize {
    PImage img;
    int imgNumber;
    int size, x, y;
    boolean active;
    Prize(int size_, boolean active_, int imgNumber_) {
        this.size = size_;
        this.active = active_;
        this.imgNumber = imgNumber_;
    }
    void sprite() {
        this.img = loadImage("sprites/prizes/"+this.imgNumber+".png");
    }
    void display() {
        image(this.img, this.x, this.y, this.size, this.size);
    }
    void generate() {
        this.x = round(random(100, 900)/grid.size)*grid.size;
        this.y = round(random(100, 900)/grid.size)*grid.size;
    }
    void regenerate() {
        if (player.x == this.x && player.y == this.y) {
            this.generate();
        }
    }
}
Prize cake = new Prize(50, true, 1);
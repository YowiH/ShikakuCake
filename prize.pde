class Prize {
    PImage img;
    int size, x, y;
    boolean active;
    Prize(int size_, boolean active_) {
        this.size = size_;
        this.active = active_;
    }
    void sprite() {
        this.img = loadImage("sprites/pr1.png");
    }
    void generate() {
        this.x = round(random(100, 900)/grid.size)*grid.size;
        this.y = round(random(100, 900)/grid.size)*grid.size;
    }
    void display() {
        image(this.img, this.x, this.y, this.size, this.size);
    }
}
Prize cake = new Prize(50, true);
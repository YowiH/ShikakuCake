class Ground {
    PImage img;
    int imgNumber;
    int size, x, y;
    Ground(int size_, int imgNumber_) {
        this.size = size_;
        this.imgNumber = imgNumber_;
    }
    void sprite() {
        this.img = loadImage("sprites/grounds/"+this.imgNumber+".png");
    }
    void display() {
        image(this.img, this.x, this.y, this.size, this.size);
    }
    void aim() {
        this.x = round(mouseX/grid.size)*grid.size;
        this.y = round(mouseY/grid.size)*grid.size;
    }
}
Ground grass = new Ground(50, 1);
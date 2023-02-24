class Player {
    color iro;
    int size;
    float x, y;
    Player(int size_, color iro_, float x_, float y_) {
        this.size = size_;
        this.iro = iro_;
        this.x = x_;
        this.y = y_;
    }
    void spawn() {
        fill(this.iro);
        square(this.x, this.y, this.size);
    }
}
Player player = new Player(50, #a71d31, 500, 500);
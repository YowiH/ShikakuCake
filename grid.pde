class Grid {
    color iro;
    int size, lineX, lineY;
    Grid(int size_, color iro_) {
        this.size = size_;
        this.lineX = size_;
        this.lineY = size_;
        this.iro = iro_;
    }
    void display() {
        // Vertical lines
        while (lineX < displayWidth) {
            stroke(this.iro);
            line(lineX, 0, lineX, displayHeight);
            lineX += this.size;
        }
        // Horizontal lines
        while (lineY < displayHeight) {
            stroke(this.iro);
            line(0, lineY, displayWidth, lineY);
            lineY += this.size;
        }
    }
}
Grid grid = new Grid(50, #959392);
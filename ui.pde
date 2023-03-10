class UI {
    color iro;
    int x, y, w, h;
    UI(int x_, int y_, int w_, int h_, color iro_) {
        this.iro = iro_;
        this.x = x_;
        this.y = y_;
        this.w = w_;
        this.h = h_;
    }

    void ui() {
        fill(this.iro);
        rect(this.x, this.y, this.w, this.h);
    }
}

UI blockUI = new UI(0, displayHeight-130, displayWidth, 130, #809080);
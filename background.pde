class Background {
    color iro;
    Background(color iro_) {
        this.iro = iro_;
    }
}
Background background = new Background(#308030);

class Grid {
    int x, y;
    color grid_color;
    Grid(int x_, int y_, color grid_color_) {
        this.x = x_;
        this.y = y_;
        this.grid_color = grid_color_;
    }

    void rubik() {
        int rx = 0;
        int ry = 0;
        for (int i = 0; i < displayHeight/shikaku_size-1; i++) {
            for (int[] n = new int[displayHeight/shikaku_size-1]; n[i] < displayWidth/shikaku_size; n[i]++) {
                grid_arraylist.add(new Grid(rx, ry, this.grid_color));
                fill(this.grid_color);
                square(rx, ry, shikaku_size);
                rx += shikaku_size;
            }
            rx = 0;
            ry += shikaku_size;
        }
    }
}

Grid grid = new Grid(0, 0, #202020);
ArrayList<Grid> grid_arraylist = new ArrayList<Grid>();
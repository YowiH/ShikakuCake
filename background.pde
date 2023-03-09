class Background {
    color iro;
    Background(color iro_) {
        this.iro = iro_;
    }
}
Background background = new Background(#308030);

class Grid {
    int x, y;
    Grid(int x_, int y_) {
        this.x = x_;
        this.y = y_;
    }
}

Grid grid = new Grid(0, 0);

void rubik() {
        ArrayList<Grid> grid_arraylist = new ArrayList<Grid>();
        int rx = 0;
        int ry = 0;
        for (int i = 0; i < displayHeight/shikaku_size+1; i++) {
            for (int[] n = new int[displayHeight/shikaku_size+1]; n[i] < displayWidth/shikaku_size+1; n[i]++) {
                grid_arraylist.add(new Grid(rx, ry));
                square(rx, ry, shikaku_size);
                rx += shikaku_size;
            }
            rx = 0;
            ry += shikaku_size;
        }
    }
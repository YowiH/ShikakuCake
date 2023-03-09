class Background {
    color iro;
    Background(color iro_) {
        this.iro = iro_;
    }
}
Background background = new Background(#308030);

class Grid {
    PImage img;
    int x, y;
    Grid(int x_, int y_, PImage img_) {
        this.x = x_;
        this.y = y_;
        this.img = img_;
    }

    void rubik() {
        int rx = 0;
        int ry = 0;
        for (int i = 0; i < displayHeight/shikaku_size+1; i++) {
            for (int[] n = new int[displayHeight/shikaku_size+1]; n[i] < displayWidth/shikaku_size+1; n[i]++) {
                grid_arraylist.add(new Grid(rx, ry));
                image(this.img, rx, ry, shikaku_size, shikaku_size);
                rx += shikaku_size;
            }
            rx = 0;
            ry += shikaku_size;
        }
    }
}

Grid grid = new Grid(0, 0, stone.img);
ArrayList<Grid> grid_arraylist = new ArrayList<Grid>();
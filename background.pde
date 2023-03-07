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
    
    void rubik() {
        ArrayList<Grid> grid_block = new ArrayList<Grid>();
        for (int i = 0; i < 21; i++) {
            for (int[] n = new int[21]; n[i] < 39; n[i]++) {
                grid_block.add(new Grid(0, 0));
                Grid miniGrid = grid_block.get(i);
                square(grid_block.x, grid_block.y, shikaku_size);
                this.x += 50;
            }
            this.x = 0;
            this.y += 50;
        }
    }
}

Grid grid = new Grid(0, 0);
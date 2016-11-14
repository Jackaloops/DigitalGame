for(xx = -2; xx<=1; xx = xx+1) {
    for(yy = -2; yy<=1; yy = yy+1) {
        instance_create(x+xx*32,y+yy*32,obj_tetris_block);
    }
}
instance_destroy();

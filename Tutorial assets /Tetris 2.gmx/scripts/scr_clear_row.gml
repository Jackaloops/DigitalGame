var xx = x, yy = y, row_full = true;
// check to the left
while (place_meeting(xx-32,y,obj_wall)==false) {
    xx -= 32;
    if (place_meeting(xx,y,obj_tetris_block)==0) {
        row_full = false;
        break;
    }
}
// check to the right
xx = x;
while (place_meeting(xx+32,y,obj_wall)==false) {
    xx += 32;
    if (place_meeting(xx,y,obj_tetris_block)==0) {
        row_full = false;
        break;
    }
}
// if the row is full, clear it
if (row_full == true) {
    obj_controller.rows_left--;
    obj_controller.rows_cleared++;
    score += 100*obj_controller.rows_cleared;
    with obj_tetris_block {
        if (y==yy) instance_destroy()
        else if (y<yy) y+=32;
    }
}

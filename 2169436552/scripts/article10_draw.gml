//draw_debug_text(x,y,"HELLO, GORDON! "+string(timer))

//draw_set_alpha(.3);
draw_set_alpha(1);
if debug {
    //draw_circle_color(x,y,grav_radius,debug_color,debug_color,c_black);
    for(var _i = 0; _i < array_length(path);_i++) {
        var _j = cell_to_grid(path[_i],cell_pos);
        draw_circle_color(_j[0],_j[1],5,c_blue,c_blue,false);
        draw_debug_text(_j[0],_j[1],string(targ_id)+": "+string(_i));
    }
    draw_debug_text(x,y,string(targ_id));
}
draw_set_alpha(1);

//Functions for getting position
#define real_to_grid(_pos) //Translate real coordinates into coordinates on the basegame grid 
with room_manager return [_pos[0] - init_cam_pos[0]+true_pos[0], _pos[1] - init_cam_pos[1]+true_pos[1]];
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
with room_manager return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0] != 0))*cell_size, (_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1] != 0))*cell_size];
#define cell_to_grid(_pos, _cell_pos) //Translate cell coordinates to the basegame grid system
with room_manager return real_to_grid(cell_to_real(_pos,_cell_pos));
#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with room_manager {
    var _cell_pos_temp = [-floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size)), -floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))];
    return [[cell_dim[0]*16 - (_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)), cell_dim[1]*16 - (_pos[1] % ((cell_dim[1]-grid_offset)*cell_size))],_cell_pos_temp];
}
#define real_to_cell(_pos)
with room_manager return grid_to_cell(real_to_grid(_pos));
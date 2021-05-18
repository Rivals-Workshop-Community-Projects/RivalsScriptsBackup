//
if get_gameplay_time() == 2 { //Initialize things on the first gameplay frame
    //with obj_stage_article if num == 3 other.action_manager = id;
    /*cam_pos_left = [view_get_xview(),view_get_yview()];
    cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
    true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
    */
    
	old_cell_pos = cell_pos;
    last_pos[0] = follow_player.x;
    last_pos[1] = follow_player.y;
    with obj_stage_main g_cam_pos = [other.follow_point.x,other.follow_point.y];
    smoothing = 3/5;
}
with obj_stage_main other.follow_player = follow_player;
follow_objects  = [follow_player];

//if get_gameplay_time() == 3 { //Move the cam to position
	//set_view_position(follow_player.x,follow_player.y);
	//with obj_stage_main g_cam_pos = [other.follow_point.x,other.follow_point.y];
//}

with oPlayer { //Respawn Code
	if state == PS_DEAD || state == PS_RESPAWN {
		// x = (respawn_point[0][0]+respawn_point[1][0]*cell_dim[0])*cell_size;
		// y = (respawn_point[0][1]+respawn_point[1][1]*cell_dim[1])*cell_size;	
		// with other other.x = cell_to_grid(other.respawn_point[0],other.respawn_point[1])[0];
		// y = cell_to_grid(other.respawn_point[0],other.respawn_point[1])[1];
		// if (state_timer >= 89) {
		// 	set_state(PS_IDLE);
		// 	free = false;
		// 	visible = false;
		// 	x = 5500;
		// 	y = 5300;
		// 	with other {
		// 		if !room_switch_on {
		// 			print(other.player);
		// 			room_switch_type = 1;
		//   		switch_to_room_pos = cell_to_grid(other.respawn_point[0],other.respawn_point[1]);
		// 		    // print_debug(string(other.respawn_point));
		// 		    room_switch(other.respawn_point[2]);
		// 	        room_switch_oIn all n = true;
		// 	        room_switch_timer = 0;
		// 		}
		// 	}
		// }
	}
	if state == PS_SPAWN respawn_point = [x,y,other.cur_room]; //Spawn state sets checkpoint?
}

if get_gameplay_time() > 2 { //Scrolling Room
    /*cam_pos_left = [view_get_xview(),view_get_yview()];
    cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
    true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
    */
    if (instance_exists(follow_player))
    	if follow_player.state != PS_DEAD 
    	&& (follow_player.state != PS_RESPAWN || follow_player.state == PS_RESPAWN && follow_player.state_timer > 89)
    	set_follow_point(follow_objects);
    //Frame Cleanups
    last_pos[0] = follow_point.x;
    last_pos[1] = follow_point.y;
    scroll_horiz = true;
    scroll_vert = true;
    pos_in_cell = grid_to_cell([follow_point.x,follow_point.y]);
}

cur_room_time++;
#define set_follow_point(_obj_array) //Set the point the world cam will follow to
var _x_avg = 0;
var _y_avg = 0;
var _count = 0;
var cam_vel_influence = obj_stage_main.cam_vel_influence;
for (var i = 0; i < array_length_1d(_obj_array);i++) {
    with _obj_array[i] {
    	avg_vel = array_create(2);
    	avg_vel = [(cam_vel_influence*avg_vel[0]+hsp)/(cam_vel_influence+1),(cam_vel_influence*avg_vel[1]+vsp)/(cam_vel_influence+1)];
    	//else avg_vel = [hsp, vsp];
        _x_avg += x+avg_vel[0]*2;
        _y_avg += y+avg_vel[1]*2;
        //_x_avg += _obj_array[i].x+_obj_array[i].hsp*10;
        //_y_avg += _obj_array[i].y+_obj_array[i].vsp*5;
        _count++;
    }
}
_x_avg /= _count;
_y_avg /= _count;
follow_point.x = _x_avg + obj_stage_main.cam_offset[0];//+ follow_player.hsp*10;
follow_point.y = _y_avg + obj_stage_main.cam_offset[1];//+ follow_player.vsp*10; //+(follow_player.down_held > 20)*50-(follow_player.up_held > 20)*50;
follow_point.x = clamp(follow_point.x, 10*32, room_width - 10*32);
follow_point.y = clamp(follow_point.y, 10*32, room_height - 10*32);

#define real_to_grid(_pos) //Translate real coordinates into coordinates on the basegame grid 
//return [_pos[0] - init_cam_pos[0]+true_pos[0], _pos[1] - init_cam_pos[1]+true_pos[1]]; 
//return [_pos[0] - render_offset[0], _pos[1] - render_offset[1]]; 
return _pos;
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
//_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0]))*cell_size + render_offset[0], 
		(_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1]))*cell_size + render_offset[1]];
#define cell_to_grid(_pos, _cell_pos) //Translate cell coordinates to the basegame grid system
with room_manager return cell_to_real(_pos,_cell_pos);
#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	var _sub_pos_x = [(_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)),floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size))];
	var _sub_pos_y = [(_pos[1] % ((cell_dim[1]-grid_offset)*cell_size)),floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))];
	if sign(_sub_pos_x[0]) == -1 _sub_pos_x[0] += ((cell_dim[0]-grid_offset)*cell_size); 
	if sign(_sub_pos_y[0]) == -1 _sub_pos_y[0] += ((cell_dim[1]-grid_offset)*cell_size);
    return [[_sub_pos_x[0], //Subcell
		    _sub_pos_y[0]],
		   [_sub_pos_x[1], //Cell
			_sub_pos_y[1]]];
}

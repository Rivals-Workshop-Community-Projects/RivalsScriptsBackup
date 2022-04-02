//article9_update, Checkpoint

if !_init {
    trigger_shape = spawn_variables[0];
    trigger_w = spawn_variables[1];
    trigger_h = spawn_variables[2];
    destroy_on_trigger = spawn_variables[3];
    respawn_pos = spawn_variables[4];
    // checkpoint_id = spawn_variables[3];
    // stock_type = spawn_variables[4];
    // stock_limit = spawn_variables[5];
    dont_despawn = true;
    visible = true;
}

switch trigger_shape {
    case 0:
        collis_obj = collision_rectangle(x,y,x+trigger_w,y+trigger_h,oPlayer,false,true);
        break;
    case 1:
        collis_obj = collision_circle(x,y,trigger_w,oPlayer,true,true);
        break;
    case 2:
        collis_obj  = instance_place(x,y,oPlayer);
        break;
}
if collis_obj != noone  {
	if (collis_obj.state != PS_DEAD) {
	    with oPlayer respawn_point = [other.respawn_pos[0], other.respawn_pos[1], room_manager.cur_room]; //All players get the checkpoint by default
	    if destroy_on_trigger {
	        instance_destroy();
	        exit;
	    }
	}
}
#define base_to_am(_pos) //Translate base-game coordinates to AM coordinates
with (obj_stage_main.room_manager) {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	var _sub_pos_x = [(_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)),floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size))];
	var _sub_pos_y = [(_pos[1] % ((cell_dim[1])*cell_size)),floor(_pos[1]/((cell_dim[1])*cell_size))];
	if sign(_sub_pos_x[0]) == -1 _sub_pos_x[0] += ((cell_dim[0]-grid_offset)*cell_size); 
	if sign(_sub_pos_y[0]) == -1 _sub_pos_y[0] += ((cell_dim[1])*cell_size);
    return [[_sub_pos_x[0], //Subcell
		    _sub_pos_y[0]],
		   [_sub_pos_x[1], //Cell
			_sub_pos_y[1]]];
}
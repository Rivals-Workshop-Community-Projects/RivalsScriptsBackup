//article8_update, Room Transition

if !_init {
    active_scene = spawn_variables[0];
    to_room = spawn_variables[1];
    extra_room_vars = spawn_variables[2]; //same as respawn_pos
    warp_dir = spawn_variables[3];
    warp_out = spawn_variables[4];
    action_id = spawn_variables[5];
    change_level = spawn_variables[6];
    visible = true;
    image_xscale = 2;
    image_yscale = 2;
    _init = 1;
}
state_timer++;

if state == 0 { //trigger active
    with action_manager other.cur_scene = scene_id;
    collis_obj = collision_rectangle(x-(64/2),y-(64/2),x+(64/2),y+(64/2),oPlayer,false,true);
    var dir_held = collis_obj != noone && ((warp_dir == 0 && collis_obj.down_down) || (warp_dir == 1 && collis_obj.right_down) 
        || (warp_dir == 2 && collis_obj.up_down) || (warp_dir == 3 && collis_obj.left_down)) && (warp_dir == 2 || !collis_obj.free);
    if collis_obj != noone && dir_held
    && (active_scene == 0 || (active_scene > 0 && cur_scene >= active_scene) || (active_scene < 0 && cur_scene <= abs(active_scene))) {
        if ("am_mario_state" in collis_obj) && collis_obj.am_mario_state == 0 {
            if (is_array(extra_room_vars))
                collis_obj.am_mario_warp_vars = [extra_room_vars[0], extra_room_vars[1], extra_room_vars[2], to_room];
            else
                collis_obj.am_mario_warp_vars = change_level;
            clear_button_buffer(PC_LEFT_HARD_PRESSED)
            clear_button_buffer(PC_RIGHT_HARD_PRESSED)
            clear_button_buffer(PC_UP_HARD_PRESSED)
            clear_button_buffer(PC_DOWN_HARD_PRESSED)
		    with (obj_stage_main) sound_play(sound_get("sfx_warp"),0, other);
            switch (warp_dir) {
                case 1:
                    collis_obj.am_mario_warp_pos_s = [x - 32, y+32]
                    collis_obj.am_mario_warp_pos_e = [x + 64, y + 32]
                    collis_obj.spr_dir = 1;
                break;
                case 2:
                    collis_obj.am_mario_warp_pos_s = [x, y]
                    collis_obj.am_mario_warp_pos_e = [x, y - 64]
                break;
                case 3:
                    collis_obj.am_mario_warp_pos_s = [x + 32, y + 32]
                    collis_obj.am_mario_warp_pos_e = [x - 64, y + 32]
                    collis_obj.spr_dir = -1;
                break;
                default:
                    collis_obj.am_mario_warp_pos_s = [x, y]
                    collis_obj.am_mario_warp_pos_e = [x, y + 64]
                break;
            }
            with (oPlayer) am_mario_warp_out = other.warp_out;
            collis_obj.am_mario_state = 4;
            collis_obj.am_mario_state_timer = 0;
        }
        
        if action_id != 0 {
            with action_manager array_push(action_queue, [room_id, other.active_scene, other.action_id]);
        }
        //state = 2;
    }
}


if state != state_old { //Placed at end to make sure it updates after changes
    state_timer = 0;
    image_index = 0;
    state_old = state;
    
}
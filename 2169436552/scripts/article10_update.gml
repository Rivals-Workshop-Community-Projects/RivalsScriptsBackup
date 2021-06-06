//article10_update, Targets

if !_init {
    targ_id = spawn_variables[0];
    event_id = spawn_variables[1];
    move_vel = spawn_variables[2];
    path = spawn_variables[3];
    idle_sprite = spawn_variables[4];
    destroy_sprite = spawn_variables[5];
    if path != 0 {
        path_pos = path[0];
        path_index_ = 0;
    }
    sprite_index = sprite_get("article10_0_spawn"); //art_sprite_get(targ_id,"spawn");
    state = 0;
    _init = 1;
    with obj_stage_article if num == 5 other.room_manager = id;
} else {
    //print_debug(string(state));
    state_timer++;
    if state == 0 { //Spawn
        //print_debug(string(image_index));
        if state_timer > state_timer_max[state] {
            if !idle_sprite sprite_index = sprite_get("article10_0_idle"); //art_sprite_get(targ_id,"idle");
            else sprite_index = idle_sprite; 
            switch_state(1);
        } else image_index = (state_timer/state_timer_max[state])*image_number;
        
    }
    if state == 1 { //Normal Operations
        image_index += anim_speed;
        collis_obj = instance_place(x,y,pHitBox);
        if (collis_obj != noone && collis_obj.hit_priority > 0 && collis_obj.player != 5) || try_event {
                with collis_obj {
                spawn_hit_fx(x + (spr_dir * hit_effect_x), y + hit_effect_y, hit_effect);
                sound_play(sound_effect);
                if type != 2 {
                    player_id.hitstop = hitpause+damage*hitpause_growth*.05;
               } else with player_id if get_hitbox_value(other.attack,other.hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR) == 0 other.destroyed = true;
                with player_id {
                    if other.type != 2 {
                       hitpause = true;
                       old_hsp = hsp;
                       old_vsp = vsp;
                    }
                   has_hit = true;
                   hit_obj = other.id;
                }
               //other.hsp = kb_value*sin(get_hitbox_angle(id));
               //other.vsp = -kb_value*cos(get_hitbox_angle(id));
            }
            sound_play(asset_get("sfx_ice_shatter_big"));
            if !destroy_sprite sprite_index = sprite_get("article10_0_break");//art_sprite_get(targ_id,"break");
            else sprite_index = destroy_sprite; 
            with obj_stage_article if num == 3 {
                if event_triggered other.try_event = true;
                else {
                    trigger_id = other.id;
                    obj_triggered = other.collis_obj;
                    event_id = other.event_id;
                    event_triggered = true;
                    other.try_event = false;
                }
            }
            if !try_event switch_state(2);
            else collis_store = collis_obj;
        }
    }
    
    if state == 2 { //Destroy
        if state_timer == state_timer_max[state] {
            instance_destroy();
            exit;
        }
        //vsp *= .9;
        //hsp *= .9;
        image_index = (state_timer/state_timer_max[state])*image_number;
    }
    if path != 0 { // if path is an array
        if !is_array(move_vel) {
            grid_pos = cell_to_grid(path_pos,cell_pos);
            angle_diff = point_direction(x,y,grid_pos[0],grid_pos[1]);
            vsp = -move_vel*dsin(angle_diff);
            hsp = move_vel*dcos(angle_diff);
            if point_distance(x,y,grid_pos[0],grid_pos[1]) < move_vel {
                x = grid_pos[0];
                y= grid_pos[1];
                vsp = 0;
                hsp = 0;
                //path_index__prev = path_index_;
                //path_pos_prev = path[path_index__prev];
                path_index_++;
                if path_index_ >= array_length_1d(path) path_index_ = 0;
                path_pos = path[path_index_];
                //path_timer = 0;
            } else {
                vsp = -move_vel*dsin(angle_diff);
                hsp = move_vel*dcos(angle_diff);
            }
        } else {
            var grid_pos = cell_to_grid(path_pos,cell_pos);
            var angle_diff = point_direction(x,y,grid_pos[0],grid_pos[1]);
            if point_distance(x,y,grid_pos[0],grid_pos[1]) < move_vel[path_index_] {
                x = grid_pos[0];
                y= grid_pos[1];
                vsp = 0;
                hsp = 0;
                //path_index__prev = path_index_;
                //path_pos_prev = path[path_index__prev];
                path_index_++;
                if path_index_ >= array_length_1d(path) path_index_ = 0;
                path_pos = path[path_index_];
                //path_timer = 0;
            } else {
                vsp = -move_vel[path_index_]*dsin(angle_diff);
                hsp = move_vel[path_index_]*dcos(angle_diff);
            }
        }
        /*if !is_array(move_time) {
            
            if path_timer < move_time {
                hsp = -(path_pos_prev[0] - path_pos[0])*16/move_time;
                vsp = -(path_pos_prev[1] - path_pos[1])*16/move_time;
                path_timer++;
            } else {
                //if debug print_debug("PATH INDEX: "+string(path_index_));
                path_index__prev = path_index_;
                path_pos_prev = path[path_index__prev];
                path_index_++;
                if path_index_ >= array_length_1d(path) path_index_ = 0;
                path_pos = path[path_index_];
                path_timer = 0;
            }
        } else {
            if path_timer < move_time[path_index_] {
                hsp = -(path_pos_prev[0] - path_pos[0])*16/move_time[path_index_];
                vsp = -(path_pos_prev[1] - path_pos[1])*16/move_time[path_index_];
                path_timer++;
            } else {
                //if debug print_debug("PATH INDEX: "+string(path_index_));
                path_index__prev = path_index_;
                path_pos_prev = path[path_index__prev];
                path_index_++;
                if path_index_ >= array_length_1d(path) path_index_ = 0;
                path_pos = path[path_index_];
                path_timer = 0;
            }
        }*/
    }

}
#define art_sprite_get(_num,_sprite) //Get the sprite of this article
print_debug("article10_"+string(_num)+"_"+string(_sprite));
return sprite_get("article10_"+string(_num)+"_"+string(_sprite));

#define switch_state(_state)
state_timer = 0;
state = _state;
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
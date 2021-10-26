//article7_update, Camera Controller

if !_init {
    trigger_shape = spawn_variables[0];
    trigger_w = spawn_variables[1];
    trigger_h = spawn_variables[2];
    lock_type = spawn_variables[3];
    if spawn_variables[4] == 0 cam_lock_x = trigger_w/2;
    else cam_lock_x = spawn_variables[4];
    if spawn_variables[5] == 0 cam_lock_y = trigger_h/2;
    else cam_lock_y = spawn_variables[5];
    cam_pos = [x+cam_lock_x, y+cam_lock_y];
    // cam_pos = [init_pos[0]+cam_lock_x/cell_size,
    //                     init_pos[1]+cam_lock_y/cell_size];
                        
    active_scene = spawn_variables[6];
    // follow_player = obj_stage_main.follow_player;
    visible = true;
    _init = 1;
    //print_debug(string(cam_pos));
}
state_timer++;

if state == 0 && (active_scene == 0 || active_scene == room_manager.cur_scene){ //trigger active
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
    if collis_obj != noone && room_manager.cur_room_time > 30 {
        if abs((collis_obj.x)-(x+cam_lock_x)) < 960/2 && abs((collis_obj.y)-(y+cam_lock_y)) < 540/2 in_cam = true; //Don't want people mercing themselves!
        if in_cam {
            with obj_stage_main {
                cam_override_obj = other;
                cam_state = 2; //Controlled by Camera
            }
            with oPlayer {
                hit_pos = [other.x+other.cam_lock_x,other.y+other.cam_lock_y]; //Set the centerpoint of the player's death location
            }
        }
        
    }
    
    if collis_obj == noone && obj_stage_main.cam_override_obj == self {
        in_cam = false;
        with obj_stage_main {
            cam_override_obj = noone;
            cam_state = 0; //Controlled by the Room Manager
        }
    }
    exit; //Only run one state per loop, no need to check
}

if state == 2 { //destroy
    with obj_stage_main {
        cam_override_obj = noone;
        cam_state = 0; //Controlled by the Room Manager
    }
    instance_destroy();
    exit;
}



// if state != state_old { //Placed at end to make sure it updates after changes; NOT NEEDED FOR CAMERAS
//     state_timer = 0;
//     state_old = state;
    
// }
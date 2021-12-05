///

if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/8,2);
    
}

if (state == PS_PRATFALL) {
    
    if state_timer < 20 {
    sprite_index = sprite_get("doublejump");
    image_index = min(state_timer/4,5);
        
    }
}


if get_gameplay_time() < 50 {
    sprite_index = sprite_get("empty")
} else {
if get_gameplay_time() < 90 {
    sprite_index = sprite_get("crouch")
    image_index = 3
}

if get_gameplay_time() >= 90 &&  get_gameplay_time() < 95{
    sprite_index = sprite_get("crouch")
    image_index = 4
}
}

if invis == false {
    
walk_speed = 4;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 9;
dash_speed = 9
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 8;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
jump_frames = 6;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 9; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.28;



  
   draw_y = 999


} else {
    
walk_speed = 4;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6.5;
dash_speed = 6.5
dash_turn_time = 8;
dash_turn_accel = .5;
dash_stop_time = 8;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
jump_frames = 6;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.28;

    draw_y = 0
}

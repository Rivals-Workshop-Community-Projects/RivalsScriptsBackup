//
//Camera
cam_left = view_get_xview();
cam_right = view_get_xview() + view_get_wview();
cam_up = view_get_yview();
cam_down = view_get_yview() + view_get_hview();
cam_offset = 36;

sprite_index = sprite_get("disco_ball_start"); 
mask_index = sprite_get("disco_ball");

depth = 0
free = true
can_be_grounded = true
ignores_walls = false

state = 0;
state_timer = 0;

hitstop = 0;

cant_hit_list = [];

disabled = false;
should_break = false;
//Barrel Cannon
sprite_index = sprite_get("bcannon");
state_timer = 0;
state = 1;
can_be_grounded = false;
ignores_walls = true;
free = true;
image_xscale = 2;
image_yscale = 2;
depth = -8;

//Barrel variables
caught_player = noone;
movement_style = 3;
movement_timer = 0;
front_limit = x - 50
back_limit = x + 50;
movement_change = 1;
movement_limiter = 2;
rotation_point = 2;
rotation_skip = 1;
barrel_hsp = 20;
barrel_vsp = 0;

//Barrel management
next_pos_x = 0;
next_pos_y = 0;
leave_pos_x = get_marker_x(10);
leave_pos_y = get_marker_y(10) + 500;
next_type = 0;
barrel_mode = 0;
leave_time = 620;
leave_max = 720;
launch_angle = 90;
launch_power = 15;

load_fx = hit_fx_create(sprite_get("bcannon_load"), 12)
explode_fx = hit_fx_create(sprite_get("bcannon_explode"), 12)

//Banana spawning
bananas_spawned = false;
banana_x_change = 0;
banana_y_change = 0;

final_stock_spawned = 0;
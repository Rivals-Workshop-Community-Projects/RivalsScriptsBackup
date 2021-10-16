image_alpha = 0;
//visible = false;

cam_destx = x;
cam_desty = y;

cam_x = x;
cam_y = y;

orig_x = x;
orig_y = y;
disable_movement = true;

overlay_start = 25;

camera_influence = 50 + clamp(spawn_variables[0], -100, 100)*0.5;

//Battle mode vars.
end_it = false;

amt_finished = 0;

amt_players = 0;

initted = 3;
kart_id = noone;

//For spoofing hitboxes.
have_collision = false;
collision_id = 0;
have_burn = false;
burn_id = 0;
have_bubble = false;
bubble_id = 0;
have_plant = false;
plant_id = 0;
have_ice = false;
ice_id = 0;
have_tree_plant = false;
tree_plant_id = 0;
dodging = false;
hit_prior = 0;
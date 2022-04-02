//article21_init, Flagpole

state = 0; //0 = idle, 1 = waiting, 2 = sliding down
state_timer = 0;

flag_spr_x = 16;
flag_spr_y = 0;
flag_wait_max = 300 //You have 5 seconds

next_level = spawn_variables[0];
_init = 0;

players_on = array_create(0);
points_array = array_create(0);
//collis_obj = noone;

disable_movement = true;
mask_index = sprite_get("flagpole_mask");
sprite_index = asset_get("empty_sprite");
physics_range = 480 + 160; //Range that physics live-updates
dont_despawn = true;
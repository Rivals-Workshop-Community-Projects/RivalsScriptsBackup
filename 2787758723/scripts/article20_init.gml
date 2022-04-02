//article20_init, Warp pipe

sprite_index = asset_get("empty_sprite");
mask_index = asset_get("solid_32x32")
disable_movement = true;
_init = 0;
init_pos = [0,0];
state = 0;
state_old = 0;
state_timer = 0;
debug = false;
debug_info = false;
debug_color = c_fuchsia;
anim_speed = 0;

custom_args = array_create(0);

collis_obj = noone;


trigger_w = 32;
trigger_h = 32;

active_scene = spawn_variables[0];
to_room = spawn_variables[1];
extra_room_vars = spawn_variables[2];
warp_out = spawn_variables[3];
event_id = spawn_variables[4];
warp_dir = spawn_variables[5]; //0 = down, 1 = right, 2 = up, 3 = left;
item_needed = 0;

//dir_arrow = asset_get("lead_arrow_spr");

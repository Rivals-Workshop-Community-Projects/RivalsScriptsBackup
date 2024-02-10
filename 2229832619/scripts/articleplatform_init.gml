//???

init = 0;
sprite_index = sprite_get("na_square_what_is_this_for");
mask_index = asset_get("empty_sprite");
image_alpha = 0;
image_blend = c_black;
image_xscale = room_width;
image_yscale = room_height;
depth = 25

state = 0;
state_timer = 0;
state_end = 0;

free = true;
can_be_grounded = false;
ignores_walls = true;
uses_shader = false;
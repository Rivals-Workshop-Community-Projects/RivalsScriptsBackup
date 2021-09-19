//article3_init - fakesolid/bouncy

init = 0;
sprite_index = asset_get("empty_sprite");
image_alpha = 1;
image_xscale = 2;
image_yscale = 2;

//mode = "nothin yet"

depth = 1;
moved = false;

state_timer = 0;
state_end = 60;

bouncy = false;
bouncy_power = 13;

display_expire = false;

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;
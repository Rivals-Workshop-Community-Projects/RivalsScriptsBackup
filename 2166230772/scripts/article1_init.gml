//article1 init

init = 0;
sprite_index = asset_get("empty_sprite");

state = 0;
state_timer = 0;

free = false;
can_be_grounded = true;
ignores_walls = true;

warp = false;
warp_marker = -4;

char = 0;

image_xscale = 2;
image_yscale = 2;

w_off_side_x = 25*2
w_off_side_y = -28*2

w_off_up_x = 21*2
w_off_up_y = -35*2
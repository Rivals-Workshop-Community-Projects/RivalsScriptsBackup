//screens

init = 0;
sprite_index = sprite_get("screen")

image_xscale = 2;
image_yscale = 2;

depth = 25;

/*
parallax_x = (20/100)*-1;
parallax_y = (10/100)*-1;
*/

state = 0;
state_timer = 0;
state_end = 0;

tvnum = -4;
tvread = 0;
tvdir = 0;

free = false;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

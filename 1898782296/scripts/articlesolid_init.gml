//door
sprite_index = sprite_get("dspecial_pole");
mask_index = sprite_get("dspecial_coll");
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
vsp = 10;
hsp = 0;
state = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
depth = -1

right_pressed = false;
left_pressed = false;
sg_window = 0;
sg_timer = 0;
sg_sprite = sprite_get("dspecial_draw");

free = false;
height_multiplier = 10;
step_speed = 0.16;
shoe_draw_mod = 0;

front_step = true;
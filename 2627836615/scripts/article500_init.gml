play = 0;

owner = noone;

init = 0;

collision_layer = false;
change_layer = false;

spd = 0;
found_wall = false;

wall_cool = 0;

cooldown = 1;

sprite_index = sprite_get("fireball");
mask_index = sprite_get("fireball_hurt");
image_xscale = 2;
image_yscale = 2;

bounces = 3;
spd = 10;

visible = false;

//disable_movement = true;
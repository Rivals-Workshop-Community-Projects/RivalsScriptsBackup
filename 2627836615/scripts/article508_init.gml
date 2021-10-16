//Clairen
play = 0;

owner = noone;

init = 0;

collision_layer = false;
change_layer = false;

spd = 0;
found_wall = false;
bits = 0;
hits = [1, 1, 1, 1, 1];
cooldown = 10;

sprite_index = sprite_get("plasma");
mask_index = sprite_index;
image_yscale = 2;

//disable_movement = true;
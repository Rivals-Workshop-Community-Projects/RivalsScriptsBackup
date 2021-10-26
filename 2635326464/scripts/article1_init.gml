can_be_grounded = true;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("banana");
mask_index =  sprite_get("banana_mask");
image_index = 0;
banana_timer = 0;
banana_timer_2 = 0; // this one is the timer for the second image_index
banana_lifetime = 900;
start_sliding = 0;
state = 0;
depth = -10;
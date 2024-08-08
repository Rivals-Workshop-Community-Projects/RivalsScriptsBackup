can_be_grounded = true;
ignores_walls = true; //changed later. useful if following kart
uses_shader = false;
touched_something_standing_still = false;

sprite_index = sprite_get("banana");
mask_index =  sprite_get("banana_mask");
image_index = 0;
banana_timer = 0;
banana_timer_2 = 0; // this one is the timer for the second image_index
banana_lifetime = 900;
start_sliding = 0;
state = 1; // skipping the part where the banana follows us
depth = -10;
hsp = -player_id.spr_dir * 10 // initial speed
vsp = -6 // initial speed
dir = -player_id.spr_dir
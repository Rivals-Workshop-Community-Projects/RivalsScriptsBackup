//Oooo banana
sprite_index = sprite_get("banana");
mask_index = sprite_get("banana");
image_xscale = 2;
image_yscale = 2;

state_timer = 10;
state = 1;

item = 0;

hitplayer = 0;
hitplayer_x = 0;
hitplayer_y = 0;
hitconnect = false;

can_be_grounded = false;
ignores_walls = true;
free = true;

collect_fx = hit_fx_create(sprite_get("collected_fx"), 30)

depth = -10;

start_x = 0;
start_y = 0;
goto_x = 0;
goto_y = 0;
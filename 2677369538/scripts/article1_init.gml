init = 0;
//sprite_index = sprite_get("confetti");
sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite"); 

free = true; //apparently this is needed cause it wouldn't know
can_be_grounded = false;
ignores_walls = true;

state = 0;
state_timer = 0;
throw_dir = 90;
hitbox_id = noone;
destroy = false; 
turntime = 0;
real_time = 0;
visual_num = random_func(0, 3, true);
visual_check = noone;

uptime = 0; //
stoptime = noone;

movement = random_func(10, 15, true); //Randomly stopping one of the confetti
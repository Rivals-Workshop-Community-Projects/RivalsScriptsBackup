//reznor
sprite_index = sprite_get("reznor");
vsp = 2;

depth = 1;

state = 0;
state_timer = 0;
hp = 20;
player_dist = 5000;
random_index = 0;

targetX = 0;
targetY = 0;

free = false;
can_be_grounded = true;

other_priority = 0;
active_hbox = 1000;
prev_hitbox_group = 1000;

prev_spr_dir = spr_dir;
turnaround_amount = 5;
turnaround_timer = turnaround_amount;
play_lava_sound = true;

fireball_speed = 5;

rotation = 0;
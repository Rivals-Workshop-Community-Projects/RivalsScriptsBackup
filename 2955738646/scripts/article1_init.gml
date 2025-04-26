//Article initializing

init = 0;
state = noone;
state_timer = 0;

uses_shader = false;
done = false;
bounced = 6; //Emerald bouncing

ChaosEmerald = random_func(0, 7, true);
//Somehow even with 0-7, making 8, it works (skipping the max number)

free = true;

GiveBack = false; //Give back the overall amount

hitplayer_x = noone;
hitplayer_y = noone;

last_pos_x = noone;
last_pos_y = noone;

prev_hsp = noone;
prev_vsp = noone;

destroyed = false;
teleporting_amount = 3;
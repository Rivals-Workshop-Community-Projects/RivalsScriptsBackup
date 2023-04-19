//hitbox_init.gml

blitzsteed_timer = 0;

pr_timer = 0;
idle_timer = 0;

spinned_on = 0;

propeller_time = 0;
propeller = 0;

is_rat_really_killed = 0;

attack_back = false;
hittable = false;

wall_turn = 0;

jumpy = false;
jumpytime = 0;
turn = false; turntime = 0;
turned = false; slapped = false;
removerat_time = 0;
timetoremove = false; //Getting to this point makes it just kill the rat
wall_turn = false;

hitbox_timer2 = 0; //Mainly for checking the beginning to push them away from each other

rathitbox = noone;
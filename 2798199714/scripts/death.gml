sound_play(sound_get("death"));

upb = false;move_cooldown[AT_USPECIAL] = 0;
fspec_stall = 0;ustrongstall = false;
fair_pin = false;
uairused = false;uairboost = 1;
if(instance_exists(time_rift)){
	time_rift.state = 5;time_rift.timer = 0;
}

if(alt == 29){
	sound_play(sound_get("YODADEATH"));
}
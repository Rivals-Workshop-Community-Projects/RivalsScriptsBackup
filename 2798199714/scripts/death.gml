sound_play(sound_get("death"));

upb = false;move_cooldown[AT_USPECIAL] = 0;
fspec_stall = 0;ustrongstall = false;
fair_pin = false;
uairused = false;uairboost = 1;

with(obj_article1){
	if(player_id == other && player == other.player){
		state = 5;timer = 0;
	}
}

if(alt == 29){
	sound_play(sound_get("YODADEATH"));
}
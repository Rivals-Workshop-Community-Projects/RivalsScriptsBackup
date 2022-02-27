if (random_func(0,99,true) == 1){
	sound_play(sound_get("rvx_egg"));
}
else if (random_func(0,2,true) == 1){
	if (get_player_color( player ) == 13){
		sound_play(sound_get("rvx_vegg"));
	}
	else sound_play(sound_get("rvx_whoops"));
}
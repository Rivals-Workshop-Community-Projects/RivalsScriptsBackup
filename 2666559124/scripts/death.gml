// called when the character gets KO'd

if(get_player_stocks(player) == 1 && get_player_color(player) == 10){ 
	sound_play(sound_get("dgr_death"));
}

if(get_player_color(player) == 9){ 
	if(get_player_stocks(player) == 1){ 
		sound_play(sound_get("wario_missed"));
	} else {
    		wario = random_func(0, 3, true);
		if(wario == 0){
			sound_play(sound_get("wario_die1"));
		}else if(wario == 1){
			sound_play(sound_get("wario_die2"));
		}
	}
}

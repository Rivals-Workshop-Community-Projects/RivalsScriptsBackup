// called when the character gets KO'd

// If the owner's barrel exists, delete it.
if (instance_exists(my_barrel)) {
	if (my_barrel.state == 0) {
		my_barrel.despawning = true;
	}
}

// Wario dies
if(alt == 10){ 
	if(get_player_stocks(player) == 1){ 
		sound_play(sound_get("wario_missed"));
	} else {
    		wario = random_func(0, 4, true);
		if(wario == 0){
			sound_play(sound_get("wario_die1"));
		}else if(wario == 1){
			sound_play(sound_get("wario_die2"));
		}
	}
}

// Classic DGR Scream
if(get_player_stocks(player) == 1 && alt == 18){
	sound_play(sound_get("dgr_death"));
}

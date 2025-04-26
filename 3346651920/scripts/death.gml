// called when the character gets KO'd

/*
with(oPlayer){
	if (id != other.id){
		if (slender_haunt == other.id){
			if (slender_haunt_timer>0){
				slender_haunt = -4;
				slender_haunt_timer = 0;
			}
		}
	}
}
*/ //decided not to


if (get_player_color( player ) == 22){//teletubby
	sound_play(sound_get("z_death_tubbies"));
}
if (get_player_color( player ) == 21){//ender
	sound_play(sound_get("z_death_ender"));
	
}
if (get_player_color( player ) == 20){//scarymaze
	sound_play(sound_get("z_death_scarymaze2_jumpscare_warning_please"),false,noone,1);
	
}
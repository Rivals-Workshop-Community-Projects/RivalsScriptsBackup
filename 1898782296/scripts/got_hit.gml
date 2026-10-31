//got_hit - called when you're hit by a hitbox


if(enemy_hitboxID == fire_shotID and fire_shotID.player == player){
	set_attack(AT_EXTRA_1);
	spr_dir = fire_shotID.spr_dir;
	var random_voice;
		random_voice = random_func( 0, 2, true);
		if (random_voice < 3){
			voice_cooldown = 30;
			sound_play(voice_hurt[random_voice+1]);
		} 
} else {
	char_height = 42;
	if(hitpause == true){
	    var random_voice;
			random_voice = random_func( 0, 12, true);
			if (random_voice < 3){
				voice_cooldown = 30;
				sound_play(voice_hurt[random_voice+1]);
			} 
	}
}
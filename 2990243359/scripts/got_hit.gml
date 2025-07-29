if (orig_knock > 11 && synced_vars[0]){
	var random_voice;
	random_voice = random_func( 0, 15, true);
	if (voice_cooldown == 0){ 
		voice_cooldown = 60;
		random_voice = random_func( 0, 6, true);
    	sound_play(voice_damage[random_voice+1]);
	}
}

if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2)){
    if (instance_exists(trident)){
        trident.starts_moving = false;
        trident.state = 1;
        trident.image_index = 0;
    }
}




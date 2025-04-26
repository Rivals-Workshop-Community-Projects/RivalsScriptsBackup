if (orig_knock > 12 && synced_vars[0] > 0){
	var random_voice;
	random_voice = random_func( 0, 17, true);
	if (voice_cooldown == 0 && synced_vars[0] > 0){ 
		voice_cooldown = 30;
		random_voice = random_func( 0, 6, true);
    	sound_play(voice_damage[random_voice+1]);
	}
}

if (orig_knock > 0){
	if (attack == AT_USPECIAL && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)){
		uspecial_charge = 0;
		uspecial_length = 20;
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED);
		reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME);
	}
	sound_stop(sound_get("fspecial_loop"));
}

/*
if (orig_knock > 0 && synced_vars[0] > 0){
    sound_stop(voice_grenade[1]);
    sound_stop(voice_grenade[2]);
    sound_stop(voice_grenade[3]);
    sound_stop(voice_kill[1]);
    sound_stop(voice_kill[2]);
    sound_stop(voice_kill[3]);
    sound_stop(voice_kill[4]);
    sound_stop(voice_out_ammo[1]);
    sound_stop(voice_laugh[1]);
}

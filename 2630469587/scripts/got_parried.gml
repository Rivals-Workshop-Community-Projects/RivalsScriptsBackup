// Sanitization: Other players' attacks
if (my_hitboxID.player != my_hitboxID.orig_player) exit;
// Sanitization: Kragg rock shards
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hit_priority == 1) exit;

// Destroys phantom throw hitbox if active
if (phantom.state == 5) {
	if (instance_exists(phantom.hitbox)) {
		phantom.hitbox.destroyed = true;
	}
}

// Forces phantom to return to youmu when parried
if (phantom.state == 2 || phantom.state == 5 || phantom.state == 8 || (phantom.state == 6 && phantom.last_state == 2)) {
	phantom.state = 7;
	phantom.state_timer = 10;
}

/*
if (voice_mode) {
		voice_rng = random_func(0, 2, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_pain3"));
}
*/
// Reflects NSpecial bullets if needed
if ((my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR) && my_hitboxID.orig_player == player) {
	with pHitBox {
		
		if ((attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) && hbox_num == 2 && player_id == other) {
			
			print_debug("Reflecting.");
			hitbox_timer = 0;
			hsp *= 1.5;
			
			if (self != other.my_hitboxID) {
				hsp *= -1;
				spr_dir *= -1;
				was_parried = true;
				player = other.hit_player;
			}
			
		} else if ((attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) && player_id == other) {
			destroyed = true;
		}
		
	}
}
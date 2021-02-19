if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2){
	with my_hitboxID{
		hitpause_timer = other.hit_player_obj.hitstop;
		in_hitpause = true;
		owner.hitstop = hitpause_timer;
	}
	
	if (my_hitboxID.hbox_num == 2 && false) with my_hitboxID.owner{ //disabled; boomerang behavior on uncharged fspecial
		state = 13;
		state_timer = 0;
		starting_x = x;
		starting_y = y;
	}
	
	if (my_hitboxID.hbox_num == 4 && my_hitboxID.owner.state != 16) with my_hitboxID.owner{
		state = 16;
		state_timer = 0;
		target = other.hit_player_obj;
		with player_id special_cooldown = special_cooldown_max;
	}
}



if (damage_multiplier > 1 || launch_multiplier > 1 || reverse_chord) && my_hitboxID.type == 1{
	// spawnPotFX();
	if my_hitboxID.kb_scale > 0{
		sound_play(asset_get((damage_multiplier == 1 && launch_multiplier == 1) ? "sfx_frog_nspecial_shove" : "sfx_war_horn"));
		hitstop *= max(damage_multiplier, launch_multiplier);
		hitstop_full *= max(damage_multiplier, launch_multiplier);
		hit_player_obj.hitstop *=  max(damage_multiplier, launch_multiplier);
		hit_player_obj.hitstop_full *=  max(damage_multiplier, launch_multiplier);
	}
}
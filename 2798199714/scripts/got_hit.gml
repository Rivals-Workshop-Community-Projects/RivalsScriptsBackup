if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	time_rift_dmg += enemy_hitboxID.damage;
	
	if (has_rune("K") || runeK) {
	    if(instance_exists(contacthitbox)){
			contacthitbox.destroyed = true;
	    }
	}
}

if(BossMode && !bossdead && !superop){
	//death
	if(get_player_damage(player) >= 300 && temp_level == 1 || get_player_damage(player) >= 600 && temp_level == 2 || get_player_damage(player) >= 900 && temp_level == 3){
		bossdead = true;set_state(PS_HITSTUN);hitstun = 20;hitstun_full = 20;sound_play(sound_get("death"));
		activated_kill_effect = true;should_make_shockwave = true;
		sound_stop(bossmusic);
	}
	//trigger boss attacks
	else if((get_player_damage(player) >= 150 && temp_level == 1 || get_player_damage(player) >= 300 && (temp_level == 2 || temp_level == 3)) && bossattack == 0
	|| get_player_damage(player) >= 600 && bossattack == 2 && temp_level == 3|| get_player_damage(player) >= 750 && bossattack == 4 && temp_level == 3){
		bossattack += 1;set_state(PS_HITSTUN);hitstun = 20;hitstun_full = 20;should_make_shockwave = true;
	}
}
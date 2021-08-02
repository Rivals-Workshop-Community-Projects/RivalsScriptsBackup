//Makes the Gust Wind Hitbox Grow
if (attack == AT_FSPECIAL && hbox_num == 6){
	if (hitbox_timer == 1){
		player_id.turbine_gustx = x;	
		player_id.turbine_gusty = y;
		player_id.turbine_gust_spr = spr_dir;
	}
}

//Allows the Whirlwind to hit Maverick
if (attack == AT_DSPECIAL){
	if (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR){
		can_hit_self = true;
	}
	else {
		can_hit_self = false;
	}
}

//DSpecial - Whirlwind
if (attack == AT_DSPECIAL){
	//If I'm getting hit by it, don't damage me
	if (player_id.whirlwind_myself == true){
		damage = 0;
		hitstun_factor = -1;
	}
	//The Explosion Hitbox for the opponent with the Whirlwind Effect
	if (player_id.whirlwind_punch_active == true && hbox_num > 1 && hbox_num < 10 
	&& player_id.whirlwind_myself == false){
		damage = 10;
		kb_value = kb_value-2;
		kb_scale = .9;
		hitpause = 15;
		hitpause_growth = 1.5;
		hit_effect = 143;
		sound_effect = asset_get("sfx_ell_strong_attack_explosion");
	}
	//The Launch hitbox can only hit those hit by the initial hitbox
	if (hbox_num > 1 && hbox_num < 10){
		for (var i = 0; i < 20; i++) {
			can_hit[i] = (i == player_id.stored_player);
		}
	}
}
//Makes the Gust Wind Hitbox Grow
if (attack == AT_FSPECIAL && hbox_num == 6){
	if (hitbox_timer > 2 && hitbox_timer < 5){
		image_xscale = 129/200;
		image_yscale = 78/200;
	}
	if (hitbox_timer >= 5){
		image_xscale = 171/200;
		image_yscale = 112/200;
	}
}

//Allows the Whirlwind to hit Maverick
if (attack == AT_DSPECIAL){
	can_hit_self = true;
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
		damage = 15;
		kb_scale = .7;
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
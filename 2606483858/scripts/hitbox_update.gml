//Makes the mic go back to you
if (attack == AT_FSPECIAL){
	if (hitbox_timer == length-10){
		hsp = -length * spr_dir;
	}
}
if (attack == AT_NSPECIAL){
	if (hitbox_timer == 59){
		destroyed = true;
	}
}

//Allows the Arrow to hit you
if (attack == AT_USPECIAL){
	if (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR){
		can_hit_self = true;
	}
	else {
		can_hit_self = false;
	}
}

//USpecial
if (attack == AT_USPECIAL){
	//If I'm getting hit by it, don't damage me
	if (player_id.arrow_myself == true){
		damage = 0;
		hitstun_factor = -1;
	}
	//The Launch hitbox can only hit those hit by the initial hitbox
	if (hbox_num > 1 && hbox_num < 10){
		for (var i = 0; i < 20; i++) {
			can_hit[i] = (i == player_id.stored_player);
		}
	}
}
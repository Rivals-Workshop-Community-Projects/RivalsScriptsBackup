// got_hit.gml

// resetting stuff if hit in hitstun
if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	/*
	if (sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")){
		//print("true...");
	}
	*/
	
	dspec_used_already = false;
	uspec_already_grabbed_wall = false;
	uspec_alr_grabbed_opp = false;
	
	
	if (attack == AT_NSPECIAL && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)){
		sd_card_number = 1;
	}
}
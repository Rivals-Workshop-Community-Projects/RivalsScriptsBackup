// unique visual effect while blastjumping
if (blastjumping == true) {
	if (state == PS_DOUBLE_JUMP) {
    sprite_index = sprite_get("doublejump_blast");
	}
	if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP) {
		sprite_index = sprite_get("jump_blast");
	}
	if (state == PS_WALL_JUMP) {
		sprite_index = sprite_get("walljump_blast");
	}
}

// originally i was gonna put it on every aerial state

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && blastjumping == true ) {
	
	/*
	if (attack == AT_NSPECIAL) {
		sprite_index = sprite_get("nspecial_blast");
	}
	
	if (attack == AT_USPECIAL) {
		sprite_index = sprite_get("uspecial_blast");
	}
	*/
	if (free) {
		
		if (attack == AT_FSPECIAL) {
			if (rj_anim_pos == 2) {// up
				sprite_index = sprite_get("fspecial_up_air_blast"); 	
			}
			else if (rj_anim_pos == 1) {// down
				sprite_index = sprite_get("fspecial_down_air_blast"); 	
			}
			else { // assuming 0
				sprite_index = sprite_get("fspecial_air_blast"); 	
			}
		}
		
		if (attack == AT_DSTRONG) {
			if (rj_dstrong_anim_pos == 2) {// left
				sprite_index = sprite_get("dstrong_left_air_blast"); 	
			}
			else if (rj_dstrong_anim_pos == 1) {// right
				sprite_index = sprite_get("dstrong_right_air_blast"); 	
			}
			else { // assuming 0
				sprite_index = sprite_get("dstrong_air_blast"); 	
			}
		}
		
	}
}



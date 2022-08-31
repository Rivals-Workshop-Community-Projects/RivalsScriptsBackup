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
/*
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && blastjumping == true ) {

	if (attack == AT_NSPECIAL) {
		sprite_index = sprite_get("nspecial_blast");
	}
	
	if (attack == AT_USPECIAL) {
		sprite_index = sprite_get("uspecial_blast");
	}
	
}
*/
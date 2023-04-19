
// enables air strongs while blast jumping
if (blastjumping) {
	if (state == PS_ATTACK_AIR) {
		
		
		if (up_strong_pressed || up_strong_down) {
			attack = AT_USTRONG;
		}
		else if (left_strong_pressed || left_strong_down) {
			spr_dir = -1;
			attack = AT_FSTRONG;
		}
		else if (right_strong_pressed || right_strong_down) {
			spr_dir = 1;
			attack = AT_FSTRONG;
		}
	}	
}

// dstrong can be activated whether or not you're blast jumping
if (down_strong_pressed || down_strong_down ) {
	if (rockets_clip > 0) {
		attack = AT_DSTRONG;	
	}
}

// uspecial 2 if uspecial 1 is on cooldown
if (move_cooldown[AT_USPECIAL] > 2) {
	if (is_special_pressed( DIR_UP ) ) {
		attack = AT_USPECIAL_2;
	}
}

// asymmetrical taunt
if (taunt_pressed || taunt_down) {
	if (spr_dir == -1) {
		attack = AT_TAUNT_2;
	}
	
	if (spr_dir == 1) {
		attack = AT_TAUNT;
	}

}

if (css_dspec == 1) {
	if (down_strong_pressed || down_strong_down ) {
		attack = AT_DSPECIAL;	
	}
	
	if (special_pressed || special_down ) {
		if (down_pressed || down_down) {
			attack = AT_DSTRONG;
		}		
	}
}
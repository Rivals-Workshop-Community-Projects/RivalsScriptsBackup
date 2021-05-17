//ai_update.gml

if (ai_recovering == true){
	ai_recoverything = 1
} else {
	ai_recoverything = 0
}

if (attack == AT_JAB){
	attack_pressed = true
}

if (attack == AT_DATTACK){
	if (can_jump == true){
		jump_pressed = true
	}
}

if (attack == AT_FSPECIAL){
	ai_needs_to_upb = true
	if (window == 3 && vsp > 3){
		jump_pressed = true
		ai_already_used_dive = true
		
	}
	special_pressed = true
	if (window > 5){
		if (can_jump == true){
			jump_pressed = true
			ai_dive_jc_attack = random_func( 0, 9, true );
			if (has_hit == true){
				if (ai_dive_jc_attack == 1){
					set_attack( AT_DSPECIAL	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 2){
					set_attack( AT_NAIR	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 3){
					set_attack( AT_FAIR	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 4){
					set_attack( AT_UAIR	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 5){
					set_attack( AT_BAIR	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 6){
					set_attack( AT_DAIR	);
					ai_dive_jc_attack = 0
				} else if (ai_dive_jc_attack == 7){
					set_attack( AT_USPECIAL	);
					ai_dive_jc_attack = 0
				}
			}
		}
	}
}	

if (attack == AT_USPECIAL){
	if (window == 1){
		ai_recovery_option = random_func( 0, 3, true );
		if (ai_recovering && ai_needs_to_upb == false){
			if (ai_recovering_has_used_dspec == false && ai_recovery_option == 1){
				set_attack( AT_DSPECIAL	);
				ai_recovering_has_used_dspec = true
			} else if (ai_recovery_option == 2 && ai_already_used_dive == false && ai_should_not_dive != true){
				set_attack( AT_FSPECIAL );
				ai_already_used_dive = true
			}
		}
	}
}

if (attack == AT_DSPECIAL){		
	ai_needs_to_upb = true
	if (window == 1 && ai_recovering == false){
		ai_dspecial_rise = random_func( 0, 2, true );
	}
	if (ai_dspecial_rise == 1){
		special_pressed = true
	}
}

if (!free || state == PS_HITSTUN || state == PS_PRATFALL){
	ai_recovering_has_used_dspec = false
	ai_already_used_dive = false
	ai_needs_to_upb = false
}

if (state == PS_WALL_JUMP){
	ai_should_not_dive = true
}
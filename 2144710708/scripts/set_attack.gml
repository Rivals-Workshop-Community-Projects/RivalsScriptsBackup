// set_attack
var shoe_moving = false;
var shoe_offstage = true;
var is_shoe = false;
var need_draw = false;

with (asset_get("pHitBox"))
{
    if (player_id == other)
    {
		if (attack == AT_DSPECIAL) {
			
			var is_shoe = true;
			
			if (hsp == 0) && (vsp == 0) {
				shoe_moving = false;
			}
			else {
				shoe_moving = true;
			}
			
			if (x >= 200) && (x <= 1200){
				shoe_offstage = false;
			}
			else if (x < 200) && (x > 1200){
				shoe_offstage = true;
			}
		}
		else {
			is_shoe = false;
		}
    }
}


// if nspecial is pressed with no ammo, reload
if (attack == AT_NSPECIAL && ammo == 0) {
	attack=AT_TAUNT_2;
}

// activated mirrored taunt if facing left

if (attack == AT_TAUNT) {
	
	if (!down_down) {
		if (spr_dir == -1) {
			//attack = AT_NTHROW;
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_mirrored"));
		}
		else if (spr_dir == 1) {
			set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
		}
	}
	
	else if (down_down) {
		
		if (runeM) {
			if (hype >= hype_max) {
				attack=AT_NSPECIAL_2;
			}
		}
		else if (!runeM) {
			if (!tf_stage) {
				attack=AT_EXTRA_2;	
				
			}
		}
	}
}


if (!ll_stage) {
	if (runeA) { // if rune A is active, move shoe
		if (down_down || down_pressed) && (special_down) {
			if (!runeB) {
				if (move_cooldown[AT_DSPECIAL] > 97) {
					attack=AT_NSPECIAL_AIR;
				}
			}
			else if (runeB) {
				if (move_cooldown[AT_DSPECIAL] > 1) {
					attack=AT_NSPECIAL_AIR;
				}
			}
		}
	}
	/*
	else if (!runeA) { // if rune A isn't active, delete shoe but only under these circumstances
		if (down_down || down_pressed) && (special_down) {
			
			if (!runeB) {
				
				if (move_cooldown[AT_DSPECIAL] > 97) { // shoe is on cooldown
					if (shoe_moving == false) { // shoe isn't moving
						if (shoe_offstage == true) { // shoe is offstage
							if (is_shoe) { // shoe exists
								attack=AT_USTRONG_2; // start shoe delete attack
							}
						}
					}
				}
				
			}
			else if (runeB) {
				if (move_cooldown[AT_DSPECIAL] > 1) {
					if (need_draw == true) {
						if (shoe_moving == false) {
							if (shoe_offstage == true) {
								if (is_shoe) {
									attack=AT_USTRONG_2;
								}
							}
						}
					}
				}
			}
		}
	}
	*/
}

/*
if (attack == AT_DTILT) {
	
	attack=AT_DSPECIAL_2;
}
*/

// someday...

if (phone_cheats[cheat_air_strongs] != 0) {
	if (state == PS_ATTACK_AIR) {
		
		
		if (up_strong_pressed || up_strong_down) {
			attack = AT_USTRONG;
		}
		else if (down_strong_pressed || down_strong_down ) {
			attack = AT_DSTRONG;	
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

// munophone touch support
	muno_event_type = 2;
	user_event(14);
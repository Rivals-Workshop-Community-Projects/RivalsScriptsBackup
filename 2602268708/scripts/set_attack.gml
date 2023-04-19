user_event(13);  
if attack = AT_TAUNT {
    if (alt >= 23 && alt <= 25) && !(phone_practice && joy_pad_idle) {
	    if !respawn_taunt {
	    attack = AT_TAUNT_2;
		} else {
		attack = AT_EXTRA_3;
		}
	}
	
if !respawn_taunt {
	if down_down  {
	attack = AT_EXTRA_2;
	}
	if up_down  {
	attack = AT_NTHROW;
	}
}
}

if nspecial_grabbed_player != noone {

    if has_rune("L"){
	    wobble_timer = 0;
	}

		attack_end();
	
		switch attack {
			//Forward throw
			case AT_FTILT:
			case AT_FSTRONG:
			case AT_FAIR:
			case AT_FSPECIAL:
			case AT_JAB:
			case AT_NSPECIAL:
			case AT_DATTACK:
			case AT_NAIR:
				attack = AT_FTHROW;
			break;
				
			//Down throw
			case AT_DAIR:
			case AT_DTILT:
			case AT_DSPECIAL:
			case AT_DSTRONG:
				attack = AT_DTHROW;
			break;
				
			//Up throw
			case AT_UAIR:
			case AT_UTILT:
			case AT_USPECIAL:
			case AT_USTRONG:
				attack = AT_UTHROW;
			break;
			
			//Back throw
			case AT_BAIR:
				attack = AT_EXTRA_1;
			break;
		}
}

if attack = AT_FTHROW {
    if ((left_stick_down && prev_dir > 0) || (right_stick_down && prev_dir < 0)) || (prev_state = PS_WALK_TURN) {
        stickbthrow = true;
        attack = AT_EXTRA_1;
	}
}

muno_event_type = 2;
user_event(14);
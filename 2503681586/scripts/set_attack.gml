//
if is_nana && !(nana_state == 5 || nana_state == 6) {
	if clownState = 0 {
		switch(attack){
		case AT_NAIR: //In Game
			attack = AT_NSPECIAL_AIR
		break;
		case AT_FAIR: //In Game
			attack = AT_FSPECIAL_AIR
		break;
		case AT_DAIR: //In Game
			attack = AT_DSPECIAL_AIR
		break;
		case AT_UAIR: //In Game
			attack = AT_USPECIAL_GROUND
		break;
		case AT_BAIR: //In Game
			attack = AT_EXTRA_1
		break;
		case AT_JAB: //In Game
			attack = AT_EXTRA_2
		break;
		case AT_DATTACK: //In Game
			attack = AT_NTHROW
		break;
		case AT_FAIR: //In Game
			attack = AT_FSPECIAL_AIR
		break;
		case AT_NSPECIAL: //In Game
			if move_cooldown[attack] == 0 {
				attack = AT_NSPECIAL_2
			}
		break;
		case AT_FSPECIAL: //In Game
			if move_cooldown[attack] == 0 {
				attack = AT_FSPECIAL_2
			}
		break;
		case AT_USPECIAL: //In Game
			if move_cooldown[attack] == 0 {
				attack = AT_USPECIAL_2
			}
		break;
		case AT_DSPECIAL: //In Game
			if move_cooldown[attack] == 0 {
				attack = AT_DSPECIAL_2
			}
		break;
		case AT_FSTRONG: //In Game
			attack = AT_FSTRONG_2
		break;
		case AT_DSTRONG: //In Game
			attack = AT_DSTRONG_2
		break;
		case AT_USTRONG: //In Game
			attack = AT_USTRONG_2
		break;
		case AT_FTILT: //In Game
			attack = AT_FTHROW
		break;
		case AT_UTILT: //In Game
			attack = AT_UTHROW
		break;
		case AT_DTILT: //In Game
			attack = AT_DTHROW
		break;
		//case AT_TAUNT:
		//	attack = AT_TAUNT_2
		//break;
		default: 
		break;
		}
	} else {
		y -= 4
		attack = 3
	}
}


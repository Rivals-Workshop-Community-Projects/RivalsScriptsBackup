switch attack {
    case AT_FSTRONG:
	    was_parried = true;
	break;
	case AT_NSPECIAL:
	    my_hitboxID.hitbox_timer = 0; // reset lifetime
		my_hitboxID.destroyed = false; // don't destroy, shouldn't be true anyway, but failsafe
		
		// group reflection
			var parried_hbox = my_hitboxID;
			var parried_player = hit_player_obj;
			with(asset_get("pHitBox")){
				if ("wow_hitbox_group" in self && player_id == other && wow_hitbox_group == parried_hbox.wow_hitbox_group && self != parried_hbox){ // is cofa nspecial and same group?
					player = parried_player.player; // set new owner
					hitbox_timer = 0; // reset lifetime
					destroyed = false; // don't destroy, shouldn't be true anyway, but failsafe
					hsp *= -1;
					vsp *= -1;
				}
			}
	break;
	
    case AT_FSPECIAL:
	    window = 11;
		parry_lag = 80;
	break;
}
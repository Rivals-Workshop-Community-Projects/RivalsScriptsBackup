// animation
if (state == PS_FIRST_JUMP && back_jump) {
	sprite_index = sprite_get( "jump" );
}

if (state == PS_PARRY && parry_spotdodge) {
	sprite_index = sprite_get("parry_spotdodge");
}

// Event Skin
if (get_player_color(player) == 15) {
	if (summer && state == PS_IDLE || state == PS_SPAWN || state == PS_RESPAWN) {
		sprite_index = sprite_get("foxcooking");
		image_index = (state_timer/8 - 1);
		summer_dir = spr_dir;
	}
	
	if (!summer && !summer_disappeared) {
		var cool_thing = spawn_hit_fx(x - 102 * summer_dir, y - 82, grill_gone);
		cool_thing.depth = depth-1;
		cool_thing.spr_dir = summer_dir;
		summer_disappeared = true;
	}
	if (attack = AT_DSPECIAL) {
		if (state == PS_ATTACK_AIR) {
			sprite_index = seasonal_shine_air;
		} else if (state == PS_ATTACK_GROUND) {
			sprite_index = seasonal_shine;
		}
	}
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL) {
	switch (get_player_color(player)) {
		case (6):
	    	sprite_index = sprite_get("uspecial_wolf");
	    	break;
	    case (10):
	        sprite_index = sprite_get("uspecial_black");
	        break;
	    case (11):
	        sprite_index = sprite_get("uspecial_yellow");
	        break;
	    case (9):
	    case (13):
	    	sprite_index = sprite_get("uspecial_red");
			break;
	     case (12):
	        sprite_index = sprite_get("uspecial_cyan");
	        break;
	    case (8):
	    	sprite_index = sprite_get("uspecial_blue");
	    	break;
	    case (14):
	        sprite_index = sprite_get("uspecial_green");
	        break;
	    case 15:
	    	switch (get_match_setting(SET_SEASON)) {
				case 1: // Valentines
					sprite_index = sprite_get("uspecial_pink");
				    break;
				case 2: // Summer
					sprite_index = sprite_get("uspecial_lightblue");
				    break;
				case 3: // Halloween
					sprite_index = sprite_get("uspecial");
				    break;
				case 4: // Christmas
					sprite_index = sprite_get("uspecial_green");
				    break;
			}
			break;
	}
}

if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && state == PS_LANDING_LAG) {
	if (!balanced_fox) {
		// Unecessary
	} else {
		if (!hit_fspecial) {
			image_index = round(lag_repeats/4.1);	
		} else {
			image_index = round(lag_repeats/2.6);
		}
	}
}

if (state == PS_PARRY && reflect_parry = true) {
    sprite_index = sprite_get("dspecial")
}

if (state == PS_JUMPSQUAT && state_timer >= 3) {
    image_index = 1;
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG) {
    if (hit_ustrong && window = 3 && window_timer < 8) {
        image_index = 2;
    }
}

if (!balanced_fox) {
    if (state == PS_AIR_DODGE) {
        sprite_index = sprite_get("airdodge");
    }
}

if (falco && prev_state == PS_DOUBLE_JUMP && state == PS_IDLE_AIR && window_timer == 0) {
    image_index = 7;
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL) {
    if (window = 1 && window_timer == 21) {
        image_index = 5;
    }
    if (!free && illusion_set) {
        sprite_index = sprite_get("fspecial");
    } else {
        sprite_index = sprite_get("fspecial_air");
    }
}
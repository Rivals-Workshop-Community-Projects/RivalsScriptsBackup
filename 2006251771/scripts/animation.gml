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
		sprite_index = sprite_get("falcotanning");
		image_index = (state_timer/8 - 1);
		summer_dir = spr_dir;
	}
	
	if (!summer && !summer_disappeared) {
		var cool_thing = spawn_hit_fx(x - 44 * summer_dir, y - 66, tan_gone);
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
		case 6:
	    	sprite_index = sprite_get("uspecial_wolf");
	    	break;
	    case 8:
	    case 10:
	    case 13:
	    	sprite_index = sprite_get("uspecial_red");
			break;
	     case 12:
	        sprite_index = sprite_get("uspecial_blue");
	        break;
	    case 14:
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


// Fair landing hitbox parry. Needs to be in animation so it runs super duper early
if (attack == AT_FAIR && was_parried) {
	fair_parry = true;
}

if (state == PS_PARRY && reflect_parry = true) {
	sprite_index = sprite_get("dspecial");
}

if (state == PS_JUMPSQUAT && state_timer >= 3) {
    image_index = 1;
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG) {
    if (hit_ustrong && window = 3 && window_timer < 8) {
        image_index = 2;
    }
}

if (!balanced_falco) {
    if (state == PS_AIR_DODGE) {
        sprite_index = sprite_get("airdodge");
    }
}

if (fox && prev_state == PS_DOUBLE_JUMP && state == PS_IDLE_AIR && window_timer == 0) {
    image_index = 7;
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL) {
    if (window = 1 && window_timer == 19) {
        image_index = 5;
    }
    if (!free && illusion_set) {
        sprite_index = sprite_get("fspecial");
    } else {
        sprite_index = sprite_get("fspecial_air");
    }
}
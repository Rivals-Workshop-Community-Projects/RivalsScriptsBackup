//set_attack

overtime_attacked = false;

switch (attack){
	case AT_JAB:
		jab_walk_hsp = 0;
	break;
    case AT_USPECIAL:
    switch (curr_uspec){
    	case -1:
    		attack = AT_USPECIAL_FAIL;
    	break;
    	case 0:
    	    sprite_change_offset("uspecial", 64, 79, true);
			draw_y = 0;
    		jetpack_dir = 90;
    		jetpack_spindex = 0;
    		jetpack_was_parried = 0;
    		jetpack_turn_rate = 0;
    		jetpack_turned_right = false;
    		jetpack_turned_left = false;
    		if ((is_double_jump && dj_state_timer < 5 //catches frame 1+ doublejumps
				|| (prev_state != PS_JUMPSQUAT && jump_down && !jump_counter && !jump_pressed && djumps != max_djumps))) //catches frame 0 doublejumps
			{
				djumps++;
			}
			if (move_cooldown[AT_USPECIAL] > 0){
    			attack = AT_USPECIAL_FAIL;
    		}
    	break;
    	case 1:
    		if (move_cooldown[AT_USPECIAL_2] > 0){
    			attack = AT_USPECIAL_FAIL;
    		} else {
    			attack = AT_USPECIAL_2;
    		}
    		reset_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY);
    		set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 0);
    		set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 0);
    		cruiser_charge = 0;
    		wheels_index = 0;
    	break;
    }
    break;
    case AT_FSPECIAL:
    	switch (curr_fspec){
    		case -1:
    			attack = AT_FSPECIAL_FAIL;
    		break;
    		case 0:
    			flashbang_detonate_timer = 0;
    			if (move_cooldown[AT_FSPECIAL] > 0){
    				attack = AT_FSPECIAL_FAIL;
    			}
    		break;
    		case 1:
    		    if (move_cooldown[AT_FSPECIAL_2] > 0){
    				attack = AT_FSPECIAL2_FAIL;
    			} else {
    				attack = AT_FSPECIAL_2;
    			}
    			zapgun_scan_success = false;
    			sound_stop(scan_sound)
    		break;
    	}
    break;
    case AT_FAIR:
    if (!has_scrap){
        switch (curr_melee){
            case 1:
                attack = AT_FAIR_2;
            break;
            case 2:
                attack = AT_FAIR_3;
            break;
        }
    }
    break;
    case AT_UAIR:
    if (!has_scrap){
        switch (curr_melee){
            case 1:
                attack = AT_UAIR_2;
            break;
            case 2:
                attack = AT_UAIR_3;
            break;
        }
    }
    break;
    case AT_FSTRONG:
    if (hsp == 0){
    	strong_walk_hsp = 0;
    } else {
    	strong_walk_hsp = clamp(hsp, -3, 3);
    }
	if (!has_scrap){
        switch (curr_melee){
        	case 0:
        	    sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
        	break;
            case 1:
                sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
                attack = AT_FSTRONG_2;
            break;
            case 2:
                sound_play(sound_get("shovel_grab"), false, noone, 0.9, 1);
                attack = AT_FSTRONG_3;
            break;
        }
	}
    break;
    case AT_USTRONG:
    if (hsp == 0){
    	strong_walk_hsp = 0;
    } else {
    	strong_walk_hsp = clamp(hsp, -3, 3);
    }
    if (!has_scrap){
        switch (curr_melee){
        	case 0:
        		sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
        	break;
            case 1:
            	sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
                attack = AT_USTRONG_2;
            break;
            case 2:
            	sound_play(sound_get("shovel_grab"), false, noone, 0.9, 1);
                attack = AT_USTRONG_3;
            break;
        }
    }
    break;
    case AT_DSTRONG:
    	if (instance_exists(ladder_obj)){
    		set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 0);
    		set_hitbox_value(AT_DSTRONG, 2, HG_OVERTIME_CREDIT, 0);
    		has_ladder = false;
    	} else {
    		reset_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME);
    		reset_hitbox_value(AT_DSTRONG, 2, HG_OVERTIME_CREDIT);
    		has_ladder = true;
    	}
    break;
    case AT_DSPECIAL:
    if (!has_scrap){
    	/*
		creature_x = 0;
		creature_y = 0;
		scanned_creature = false;
		player_scanned = noone;
		creature_timer = 0;
		creature_index = 0;
		creature_alpha = 0.8;
		*/
		scan_nofind = false;
		scanned_player_value = false;
    } 
    if (has_scrap && current_scrap != noone){
    	if ((instance_exists(jeb_obj)) && (!place_meeting(x, y, jeb_obj) || array_length(jeb_obj.scrap_on_counter) >= 5 || jeb_obj.state > 2)) || jeb_cooldown > 0 {
    		scan_nofind = true;
    	} else {
    		scan_nofind = false;
    	}
    	if ((!instance_exists(jeb_obj)) || (instance_exists(jeb_obj) && place_meeting(x, y, jeb_obj) && array_length(jeb_obj.scrap_on_counter) < 5 && jeb_obj.state <= 2)) && jeb_cooldown <= 0{
    		window = 6;
    		window_timer = 0;
    	}
    }
    break;
    case AT_TAUNT:
    	taunt_timer = 0;
    	if (down_down){
    		attack = AT_TAUNT_2;
    	}
    break;
}

if (has_scrap){
	scrap_throw_stuff();
}

#define scrap_throw_stuff

	switch (attack){
		case AT_JAB:
		case AT_FTILT:
		case AT_NAIR:
		case AT_FAIR:
		case AT_FSTRONG:
		case AT_DATTACK:
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW);
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X);
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y);
			
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW);
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X);
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y);
			attack = AT_DSPECIAL_2;
			if (current_scrap.size == 1){
				window = 10;
			}
		break;
		case AT_BAIR:
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW);
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X);
			reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y);
			
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW);
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X);
			reset_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y);
			spr_dir = -spr_dir;
			attack = AT_DSPECIAL_2;
			if (current_scrap.size == 1){
				window = 10;
			}
		break;
		case AT_UTILT:
		case AT_UAIR:
		case AT_USTRONG:
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 5);
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 16);
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -86);
			
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 14);
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -98);
			attack = AT_DSPECIAL_2;
			if (current_scrap.size == 0){
				window = 4;
			} else {
				window = 13;
			}
		break;
		case AT_DTILT:
		case AT_DAIR:
		case AT_DSTRONG:
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 8);
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 4);
			set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -6);
			
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 17);
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
			set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -12);
			attack = AT_DSPECIAL_2;
			if (current_scrap.size == 0){
				window = 7;
			} else {
				window = 16;
			}
		break;
	}
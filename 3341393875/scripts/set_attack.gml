grabp = noone;
set_window_value(attack, 2, AG_WINDOW_TYPE, 7);



if stance == "pizzahead"{
	if (has_rune("F")){
		if (attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL){
			hsp = ((right_down * 10) + (left_down * -10));
			vsp = ((up_down * -10) + (down_down * 10));
			spr_dir *= -1;
			attack = AT_NSPECIAL_AIR;
		}
	}



	switch(attack){
		case AT_JAB:
			attack = AT_EXTRA_1;
		break;
		case AT_DATTACK:
			attack = AT_EXTRA_2;
		break;
		case AT_FTILT:
			attack = AT_EXTRA_3;
			sound_play(asset_get("sfx_swipe_medium1"));
		break;
		case AT_DTILT:
			attack = AT_EXTRA_4;
		break;
		case AT_UTILT:
			attack = AT_EXTRA_5;
		break;
		case AT_FSTRONG:
			attack = AT_FSTRONG_2;
		break;
		case AT_DSTRONG:
			attack = AT_DSTRONG_2;
		break;
		case AT_USTRONG:
			attack = AT_USTRONG_2;
		break;
		case AT_NAIR:
			attack = AT_NTHROW;
		break;
		case AT_FAIR:
			attack = AT_FTHROW;
		break;
		case AT_BAIR:
			attack = AT_NSPECIAL_AIR;
		break;
		case AT_DAIR:
			attack = AT_DTHROW;
		break;
		case AT_UAIR:
			attack = AT_UTHROW;
		break;
		case AT_NSPECIAL:
			attack = AT_NSPECIAL_2;
    		nspecial2_charge = 0;
    		nspecial2_real_length = 0;
    		set_num_hitboxes(AT_NSPECIAL_2, 0);
			if (free) vsp -= 3;
		break;
		break;
		case AT_FSPECIAL:
			attack = AT_FSPECIAL_2;
		break;
		case AT_DSPECIAL:
			if (!has_rune("K")){
				if (free){
					attack = AT_DSPECIAL_AIR;
				} else {
					attack = AT_DSPECIAL_2;

					if (move_cooldown[attack] == 0){
						sound_play(sound_get("pizzaheadfishingbase"));
					}
				}
			} else {
				attack = AT_DSPECIAL;
			}
		break;
		case AT_USPECIAL:
			cameFromTaunt = false;
			attack = AT_USPECIAL_2;
			sound_play(sound_get("sfx_lapenter"));
			sprite_change_offset("pizzahead_uspecial", 45, 99, true);
		break;
		case AT_TAUNT:
			if (has_rune("N")){
				cameFromTaunt = true;
				attack = AT_USPECIAL_2;
				window = 2;
				window_timer = get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH)-1;
			} else {
				attack = AT_TAUNT_2;

				if (down_down){

					if (get_player_color(player) != 23 && get_player_color(player) != 28){
						set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("rizzahead"));

					} else {
						set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("rizzaheadSketch"));
					}
					sound_play(sound_get("rizz"));

				} else {
					reset_attack_value(AT_TAUNT_2, AG_SPRITE);
				}
			}
		break;
	}
}
else{
	switch(attack){
		case AT_USPECIAL:
			cameFromTaunt = false;
		break;
		case AT_DAIR:
			dair_angle = 0;
		break;
		case AT_TAUNT:
			if (has_rune("N")){
				cameFromTaunt = true;
				attack = AT_USPECIAL;
				window = 2;
				window_timer = get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
			} else {
				times_through = 0;

				if (down_down){
					set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("mogface"));
					sound_play(sound_get("rizz"));
	
				} else {
					reset_attack_value(AT_TAUNT, AG_SPRITE);
				}
			}
        break;
		case AT_DSPECIAL:
			if (has_rune("K")){
				if (free){
					attack = AT_DSPECIAL_AIR;
				} else {
					attack = AT_DSPECIAL_2;

					if (move_cooldown[attack] == 0){
						sound_play(sound_get("pizzaheadfishingbase"));
					}
				}
			}
		break;
	}
}



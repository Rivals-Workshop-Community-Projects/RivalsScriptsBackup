// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR){
	if (window == 2){
		move_cooldown[AT_DAIR] = 9999
        	can_shield = true;
        	can_jump = true;
		can_wall_jump = true;
		can_fast_fall = false;
		if (has_hit){
			window = 3;
			window_timer = 0;
		}
	        if(window_timer == 8 && free){
        		window = 2;
        		window_timer = 0;
        	}
	}
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 35;
}

if (attack == AT_FSPECIAL){
	super_armor = true;
	//Fun Voices :)
	if(get_player_color(player) == 9) {
		if (window == 2 && window_timer == 42) {
			sound_play(sound_get("wario_vc"));
		}
	}
	if(get_player_color(player) == 10) {
		if (window == 1 && window_timer == 4) {
			var charge_vc = random_func(0, 6, true);
			if(charge_vc == 0){
				sound_play(sound_get("mafia_charge_vc1"));
			}else if(charge_vc == 1){
				sound_play(sound_get("mafia_charge_vc2"));
			}else if(charge_vc == 2){
				sound_play(sound_get("mafia_charge_vc3"));
			}else if(charge_vc == 3){
				sound_play(sound_get("mafia_charge_vc4"));
			}else if(charge_vc == 4){
				sound_play(sound_get("mafia_charge_vc5"));
			}else if(charge_vc == 5){
				sound_play(sound_get("mafia_charge_vc6"));
			}
		}
		if (window == 2 && window_timer == 42) {
			var impact_vc = random_func(0, 8, true);
			if(impact_vc == 0){
				sound_play(sound_get("mafia_impact_vc1"));
			}else if(impact_vc == 1){
				sound_play(sound_get("mafia_impact_vc2"));
			}else if(impact_vc == 2){
				sound_play(sound_get("mafia_impact_vc3"));
			}else if(impact_vc == 3){
				sound_play(sound_get("mafia_impact_vc4"));
			}else if(impact_vc == 4){
				sound_play(sound_get("mafia_impact_vc5"));
			}else if(impact_vc == 5){
				sound_play(sound_get("mafia_impact_vc6"));
			}else if(impact_vc == 6){
				sound_play(sound_get("mafia_impact_vc7"));
			}else if(impact_vc == 7){
				sound_play(sound_get("mafia_impact_vc8"));
			}
		}
	}
}

if (attack == AT_DSPECIAL){
	if (window == 2 && window_timer == 1){
		instance_create( round(x), round(y) - 50, "obj_article1" );
	}
}

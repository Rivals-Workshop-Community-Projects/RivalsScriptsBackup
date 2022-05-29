//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL_2){
	if(!free){
	attack = AT_NSPECIAL;
	}else{
	attack = AT_NSPECIAL_2;
	}
}

if (attack == AT_USTRONG){
	if (window == 3 && has_hit){
		iasa_script();
	}
}

if (attack == AT_DTILT){
	if (window == 3 && has_hit){
		iasa_script();
	}
}

if (attack == AT_FTILT){
	if (window == 6 && has_hit){
		iasa_script();
	}
}


if (attack == AT_DAIR){
	if (window == 2 && state_timer >= 50){
		iasa_script();
	}
}


if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2){
	can_fast_fall = false;
	
	if ((shield_pressed) and (3 > window )){ //SHIELD CANCEL
		window = 7;
		window_timer = 0;
	}
    if (window == 2){ //CHARGING
		if (special_down) {
			if (window_timer == 4){ //Loop
				window_timer = 0;
			}
			if (111 > bustercharge) { //Adding charge
			bustercharge += 2;
				if (bustercharge == 999999999999){
					sound_play(asset_get("sfx_frog_fspecial_charge_full"));
					}
				
				if (bustercharge == 110){
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
					}				
			}
		}
		else { //Using move if special released
				if (bustercharge == 999999999999) { //FULLCHARGE
						bustercharge = 0;
						window = 5;
						window_timer = 0;
				}
				else {
					if (bustercharge > 110){ //MEDCHARGE
						bustercharge = 0;
						window = 4;
						window_timer = 0;
					}
					else { //NOCHARGE
						bustercharge = 0;
						window = 3;
						window_timer = 0;
					}
				}
			}
		}
	if ((window == 3) ) and (window_timer == 5) { //Endlag
		window = 5;
		window_timer = 0;
		}
	if ((window == 3) or (window == 4) ) and (window_timer == 20) { //Endlag
		window = 5;
		window_timer = 0;
		}
}

if (attack == AT_NSPECIAL){
	if (window == 2){
	super_gauge += 2.0;
	}
}

if (attack == AT_NSPECIAL_2){
	if (window == 2){
	super_gauge += 2.0;
	}
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 30;
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 80;
}

if (attack == AT_DSPECIAL_2){
	move_cooldown[AT_DSPECIAL_2] = 80;
}

if (attack == AT_FSPECIAL_2){
	move_cooldown[AT_FSPECIAL_2] = 250;
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

if (attack == AT_FSTRONG_2 && window == 1) {
	super_gauge = 0;
}

if (attack == AT_USTRONG_2 && window == 1) {
	super_gauge = 0;
}

if (attack == AT_DSTRONG_2 && window == 1) {
	super_gauge = 0;
}

if (attack == AT_EXTRA_1 && window == 1) {
	super_gauge = 0;
	bustercharge = 0;
}
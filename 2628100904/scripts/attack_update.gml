// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//cooldowns

if (attack == AT_USTRONG){
    move_cooldown[AT_USTRONG] = 80;
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 140;
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 80;
}

//badass weed move (heavily referncing bluey's charge shot for this hopefully i can get it to work :)

//charge

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if (window == 2){ //CHARGING
		can_jump = true;
		if (shield_pressed) { //Shield storing
			window = 6;
			window_timer = 0;
		}
		if (special_down) {
			if (window_timer == 20){ //loop
				window_timer = 1;
			}
			if (80 > weedcharge) { //Adding charge
			weedcharge += .5;
				if weedcharge == 0 || weedcharge == 45 || weedcharge == 80 {
					sound_play(asset_get("sfx_ell_fspecial_charge"), false, noone, 1, 1+(weedcharge/80));		
					}		
			}
		}
		else { //Releasing special to use the move		
				if (weedcharge >= 80) { //fully charged
						window = 5;
						window_timer = 0;
				}
				else if (weedcharge >= 45){ //partially charged
						window = 7;
						window_timer = 0;
					}
					else { //uncharged
						window = 3;
						window_timer = 0;
					}
				}
			}
	if (window == 3 || window == 4 || window == 5) { //cant jump during these windows
		can_jump = false;
		if window_timer == 6 {
			weedcharge = 0;
		}
	}
	if (window == 3 ) {
		if window_timer == 30 { //endlag
			window = 8; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
	}
	if (window == 7 ) {
		if window_timer == 10 { //transition from windup to actual attack ??
			window = 4;
			window_timer = 0;
		}
	}
	if (window == 4 ) {
		if window_timer == 36 { //endlag
			window = 8; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
	}
	if (window == 5 ) {
		if window_timer == 24 { //endlag
			window = 8; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
		if (window_timer == 22 && !hitpause) { //splosion
			create_hitbox(AT_DSPECIAL, 6, x, y-35);
            spawn_hit_fx(x, y-35, weednova);
            sound_play(sound_get("d_explode"))
		}
	}
	if (window == 6 ) {
		if window_timer == 16 { //endlag
			window = 8; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
	}
}

//im scared of making the weed explosion
//please god let it be easy i hate programming
//fuckign hate programming

//taunt loop
if (attack == AT_TAUNT){
	if window = 3 {
		if (window_timer == 3 && taunt_down) {
			window_timer = 1;
		}
	}
	if window = 4 {
		sound_stop(sound_get("vineboom"))
	}
}
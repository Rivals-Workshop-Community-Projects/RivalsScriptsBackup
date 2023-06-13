// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//cooldowns

if (attack == AT_FSTRONG){
    move_cooldown[AT_FSTRONG] = 30;
}

if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 140 * !has_rune("L");
    if(window == 2 && (weedcharge < mid_weedcharge || ((!special_down && state_timer <= 12) || state_timer >= 24))){
    	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
    	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
    	set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 99);
    	if(state_timer >= 24){
    		if(weedcharge == max_weedcharge){
    			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
		    	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
		    	set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
		    	weedcharge = 0;
    		} else if(weedcharge >= mid_weedcharge){
    			set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
		    	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
		    	set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 99);
		    	weedcharge = 0;
    		}
    	}
    	window = 3;
    	window_timer = 0;
    }
    if(special_pressed && has_rune("L")){
    	window = 2;
    	window_timer = 0;
    	clear_button_buffer(PC_SPECIAL_PRESSED);
    }
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 120;
}

if(attack == AT_JAB){
	if(window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("pistol_shoot"));
	}
} else {
	jabbing = false;
}

if(attack == AT_FAIR){
	if(window == 4){
		if(window_timer < 3){
			vsp = 0;
			hsp = 0;
			can_move = false;
			can_fast_fall = false;
		} else {
			can_move = true;
			can_fast_fall = true;
		}
	}
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
			if (max_weedcharge > weedcharge) { //Adding charge
			weedcharge += .5;
				if weedcharge == 0 || weedcharge == mid_weedcharge || weedcharge == max_weedcharge {
					sound_play(asset_get("sfx_ell_fspecial_charge"), false, noone, 1, 1+(weedcharge/max_weedcharge));		
					}		
			}
		}
		else { //Releasing special to use the move		
				if (weedcharge >= max_weedcharge) { //fully charged
						window = 5;
						window_timer = 0;
				}
				else if (weedcharge >= mid_weedcharge){ //partially charged
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
		if window_timer == 3 {
			weedcharge = 0;
		}
		if(window == 8){
			weedcharge = 0;
		}
	}
	if (window == 3 ) {
		vsp *= .85;
		hsp *= .85;
		move_cooldown[AT_DSPECIAL] = 15;
		if window_timer == 30 { //endlag
			window = 10; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
	}
	// if (window == 7 ) {
	// 	if window_timer == 10 { //transition from windup to actual attack ??
	// 		window = 4;
	// 		window_timer = 0;
	// 	}
	// }
	if (window == 4 || window == 8 || window == 9) {
		vsp *= .97;
		// if window_timer == 24 { //endlag
		// 	window = 10; //window 8 does not exist this just makes it end the attack i gues
		// 	window_timer = 0;
		// }
	}
	if (window == 5 ) {
		if(window_timer < 20){
			soft_armor = 18;
		}
		if(window_timer == 10 && !hitpause){
			sound_play(asset_get("sfx_abyss_portal_intro"));
		}
		if window_timer == 24 { //endlag
			window = 10; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
		if (window_timer == 22 && !hitpause) { //splosion
			soft_armor = 0;
			create_hitbox(AT_DSPECIAL, 6, x, y-35);
			create_hitbox(AT_DSPECIAL, 7, x, y-35);
            var hfx = spawn_hit_fx(x, y-35, weednova);
            hfx.depth = depth - 1;
            sound_play(sound_get("d_explode"))
		}
	}
	if (window == 6 ) {
		if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) { //endlag
			window = 10; //window 8 does not exist this just makes it end the attack i gues
			window_timer = 0;
		}
	}
}

//im scared of making the weed explosion
//please god let it be easy i hate programming
//fuckign hate programming

if(attack == AT_USPECIAL){
	if(window == 3){
		can_wall_jump = true;
	}
	if(window == 3 && window_timer == 8 && special_down && !hitpause){
		if(weedcharge == max_weedcharge){
			create_hitbox(AT_USPECIAL, 4, x, y - char_height/2);
			var hbox = create_hitbox(AT_USPECIAL, 3, x, y - char_height/2);
			hbox.can_hit_self = true;
			for(var i = 0; i < 20; i++){
				hbox.can_hit[i] = (i == player);
			}
			spawn_hit_fx(x, y - char_height/2, HFX_ELL_BOOM_BIG);
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			sound_play(asset_get("sfx_ell_strong_attack_explosion"));
			weedcharge = 0;
		} else if(weedcharge >= mid_weedcharge){
			create_hitbox(AT_USPECIAL, 6, x, y - char_height/2);
			var hbox = create_hitbox(AT_USPECIAL, 5, x, y - char_height/2);
			hbox.can_hit_self = true;
			for(var i = 0; i < 20; i++){
				hbox.can_hit[i] = (i == player);
			}
			spawn_hit_fx(x, y - char_height/2, HFX_ELL_FSPEC_BIG_MISS);
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			sound_play(asset_get("sfx_ell_strong_attack_explosion"));
			weedcharge = 0;
		}
		
	}
}

//taunt loop
if (attack == AT_TAUNT){
	if window = 3 {
		if (window_timer == 3 && (taunt_down || respawn_taunt >= 240)) {
			window_timer = 1;
		}
	}
	if window = 4 {
		sound_stop(sound_get("vineboom"))
	}
}
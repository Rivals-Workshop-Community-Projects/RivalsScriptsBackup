// attack_update.gml

// dust effect template
// spawn_base_dust( x + (16 * spr_dir), y, "dash_start", -spr_dir, 0);

// template for playing stuff at a window's last frame
/*
if (attack == AT_WHATEVER){
	if (window == NUM){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// do stuff here
		}
	}
}
*/

// Taunt
if (attack == AT_TAUNT){
	if (window == 1 || window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_nsmbwii_bah)
		}
	}
}

// Taunt (Holding Shell)
if (attack == AT_TAUNT_2){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_sm3dw_roll, false, noone, 0.35, 1.2);
			sound_play(asset_get("sfx_spin"), false, noone, 0.8, 1);
			sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.8, 1);
		}
	}
	
	// hud offset
	if ( (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3){
		hud_offset = 52;
	}
}

// Jab
if (attack == AT_JAB){
	if (window == 1){
		if (window_timer == 1){
			// clear window buffer to prevent immediately doing jab 2 from jab 1
			clear_button_buffer( PC_ATTACK_PRESSED );
		}
	}
}


// Dash Attack
if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_smashult_mario_dattack, false, noone, 0.65, 1.25);
			sound_play(sfx_ttydR_koops_field_shoot, false, noone, 0.5, 1);
			spawn_base_dust( x + (28 * spr_dir), y, "dash_start", spr_dir);
		}
	}
	
	if ((window <= 4 && window >= 2) && state_timer mod 5 == 0){
		if (!hitpause){
			// moving dust
			spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir, 0);
		}
	}
}


// Forward Tilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (46 * spr_dir), y, "dattack", -spr_dir);
		}
	}
}

// Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (32 * spr_dir), y, "dash", -spr_dir);
		}
	}
	
	// hud offset
	if ( !hitpause && ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || (window == 4 && image_index < 6))){
		hud_offset = 24;
	}
}


// Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (58 * spr_dir), y, "wavedash", -spr_dir);
			// spawn_base_dust( x + (12 * spr_dir), y, "dash_start", spr_dir);
		}
	}
}


// Forward Strong
if (attack == AT_FSTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// sound_play(sfx_ttydR_koops_field_shoot, false, noone, 0.75, 1.35);
			sound_play(sfx_ttydR_mario_field_hammer_swipe3, false, noone, 0.75, 0.9);
			sound_play(asset_get("sfx_blink_dash"), false, noone, 0.9, 1);
			spawn_base_dust( x + (12 * spr_dir), y, "dash_start", spr_dir);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			spawn_base_dust( x + (12 * spr_dir), y, "n_wavedash", spr_dir);
			sound_play(landing_lag_sound);
		}
	}
}

// Up Strong
if (attack == AT_USTRONG){
	can_fast_fall = false;	// to prevent using this as a true combo starter at like 0 or something
	if (window == 1){
		set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
	}
	
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ttydR_mario_field_hammer_spinfast, false, noone, 0.9, 1.1);
			
			spawn_base_dust( x - (20 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (20 * spr_dir), y, "dash_start", -spr_dir);
		}
	}
	
	if (window >= 3 && window <= 5){ //>
		if (!hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			spawn_base_dust( x - (12 * spr_dir), y, "dash", spr_dir);
			spawn_base_dust( x + (12 * spr_dir), y, "dash", -spr_dir);
		}
	}
	
	if (window == 6){
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//vsp = -10.5;
			vsp = -21.5;
			
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
		}
	}
	
	if (window >= 7){
		
		// applying proper landing lag data for when you land
		landing_lag_time = 8;
		
		// going into landing lag if you land during the move
		if (!free){
			if (was_parried == false){
				set_state(PS_LANDING_LAG);
			} else {
				set_state(PS_PRATLAND);
				sound_play(landing_lag_sound);
			}
		}
	}
	
	if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if (!hitpause){
			vsp = -7;
		}
	}
	
	// hud offset
	if ( !hitpause && ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || window == 4 || window == 5 || window == 6 || window == 7 || (window == 8 && image_index < 11))){
		hud_offset = 32;
	}
}

// Down Strong
if (attack == AT_DSTRONG){

	if (window == 1){
		dstrongShouldLoopTwice = true;
		dstrongHasLoopedYet = false;
	}

	var dstrongMaxTravelSpeed = 12 * test_horiz_speed_mult;
	var dstrongTurnaroundSpeed = (dstrongMaxTravelSpeed / 2.5);
	
	// sfx stuff
	if ( (window == 2 || window == 4 || window == 9) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		sound_play(sfx_ttydR_koops_field_shoot, false, noone, 0.45, 1);
		sound_play(asset_get("sfx_blink_dash"), false, noone, 0.45, 0.95);
	}
	if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		if ((dstrongHasLoopedYet && dstrongShouldLoopTwice) || dstrongShouldLoopTwice == false){
			sound_play(sfx_ttydR_koops_field_return, false, noone, 1, 1);
		}
	}

	// dust effects
	if ((window >= 3 && window <= 6) || window == 9){
		if (state_timer mod 2 == 0 && !hitpause){
			if (hsp > 0){
				spawn_base_dust( x + (0 * spr_dir), y, "walk", 1);
			} else if (hsp < 0){//>
				spawn_base_dust( x + (0 * spr_dir), y, "walk", -1);
			}
		}
	}
	if ( (window == 2 || window == 4 || window == 9) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		if (window != 2){
			if (hsp > 0){
				//spawn_base_dust( x + (0 * spr_dir), y, "dash_start", 1);
			} else if (hsp < 0){//>
				//spawn_base_dust( x + (0 * spr_dir), y, "dash_start", -1);
			}
		} else {
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
		}
	}


	// a bunch of hsp manipulation
	if (((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 3)) && !hitpause){
		hsp = dstrongMaxTravelSpeed*spr_dir;
	}

	if (((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 4)) && !hitpause){
		hsp -= dstrongTurnaroundSpeed * spr_dir;
	}
	
	if (((window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 5)) && !hitpause){
		hsp = -(dstrongMaxTravelSpeed * 1.5)*spr_dir;
	}
	
	if ( ( (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 6)) && !hitpause){
		hsp += dstrongTurnaroundSpeed * spr_dir;
	}
	
	if ( (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) && !hitpause ){
		if (dstrongHasLoopedYet == false && dstrongShouldLoopTwice){
			dstrongHasLoopedYet = true;
			window = 9;
			window_timer = 0;
		}
	}
	if (window == 9){
		hsp += dstrongTurnaroundSpeed * 2 * spr_dir;
		// hsp += dstrongTurnaroundSpeed * 2.1 * spr_dir;
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 3;
			window_timer = 0;
		}
	}

	if (window >= 6){
		hsp *= 0.95;
	}
	
	// so speed stuff doesnt go super wack
	hsp = clamp(hsp, -20, 20);
}


// Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
			
			// reset window stuff
			set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
			lastHitNairHitbox = 0;
			nairWasGrounded = false;
		} else {
			sound_play(sfx_ttydR_mario_field_hammer_spinfast, false, noone, 1, 1.25);
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir);
		}
	}
	
	// allows for spinning on the ground
	if ( (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window > 1)){
		set_attack_value(AT_NAIR, AG_CATEGORY, 2);
	}
	
	
	// ground stuff
	if (!free){
	
		// go from air spin anim to ground spin anim
		if (window > 1 && window < 5){
			
			// adjust window value so this can happen
			set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);
			
			if (window == 2){
				window = 6;
			}
			if (window == 3){
				window = 7;
			}
			if (window == 4){
				window = 8;
			}
			
			nairWasGrounded = true;
			sound_play(landing_lag_sound);
			spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
		}
		
		// increase speed
		if (!hitpause){
			hsp += 0.3 * spr_dir;
			
			if (right_down && !left_down){
				hsp += 0.5;
			}
			if (left_down && !right_down){
				hsp -= 0.5;
			}
			
			if (state_timer mod 4 == 0){
				spawn_base_dust( x + (-12 * spr_dir), y, "dash", spr_dir);
			}
		}
		
		var maxNairSpinSpeed = (dash_speed * 1.95);
		// clamp hsp so koopa doesnt go flying
		hsp = clamp(hsp, -maxNairSpinSpeed, maxNairSpinSpeed)
		
	} else {
		if (window > 1 && window < 5){
			if (state_timer mod 6 == 0 && !hitpause){
				spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir);
			}
		}
	}
	
	// 
	if (window == 8){
		if (!hitpause){
		
			// allow for jump cancel
			if (has_hit){
				// can_jump = true;
			}
		
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
				window = 5;
				window_timer = 0;
				
				if (!free){
					vsp = -5 - (has_hit * 2.5); // go a little higher if you hit the finishing hit - would be ideal for some combos.
					// clamp hsp so you don't go flying
					hsp = clamp(hsp, leave_ground_max*-0.85, leave_ground_max*0.85);
					spawn_base_dust( x + (0 * spr_dir), y, "n_wavedash", spr_dir);
					sound_play(djump_sound, false, noone, 0.25, 1.25);
					move_cooldown[AT_NAIR] = 30;
				}
			}
		}
	}
	
	// endlag
	if (window == 5){
		// reset window values
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
		
		if (window_timer > 5){
		
			if ((lastHitNairHitbox == 6 || nairWasGrounded == true) && has_hit){
				can_attack = true;
				can_jump = true;
			}
			
			if (!free){
				if (!was_parried){
					set_state(PS_LANDING_LAG);
				} else {
					set_state(PS_PRATLAND);
					sound_play(landing_lag_sound);
				}
			}
		}
		
		if (lastHitNairHitbox == 6){
			landing_lag_time = 8;
		} else if (lastHitNairHitbox == 3){
			landing_lag_time = 4;
		} else {
			landing_lag_time = 10;
		}
	}
}

// Forward Air

// Up Air
if (attack == AT_UAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// sound_play(sfx_ttydR_mario_field_hammer_swipe2);
		}
	}
	
	// hud offset
	if ( !hitpause && ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2)){
		hud_offset = 24;
	}
}


// Down Air
if (attack == AT_DAIR){

	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ttydR_mario_field_hammer_swipe1);
		}
	}

	if (window == 2 && !hitpause){
		if (window_timer == 6){
			sound_play(asset_get("sfx_swipe_medium1"));
			sound_play(sfx_ttydR_mario_field_hammer_swipe2);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_swipe_medium2"));
			sound_play(sfx_ttydR_mario_field_hammer_swipe1);
		}
	}
	if (window == 3 && !hitpause){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_swipe_heavy1"));
			sound_play(sfx_ttydR_mario_field_hammer_swipe3);
		}
	}
}

// Back Air
if (attack == AT_BAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ttydR_mario_field_hammer_swipe3, false, noone, 0.8, 1.15);
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Neutral Special - Koopa Shell
if (attack == AT_NSPECIAL){

	// ====================================
	// equipping the shell
    if (window == 1){
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);	// reset
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!carryingShell){
				
				sound_play(sfx_ML_bis_brosattack);
				carryingShell = true;
				// user_event(7);
			}
		}
	}
	
	// spawning shell from all throws
	if (carryingShell){
		if (window == 4 || window == 7 || window == 10){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				var shellThrowDir = "normal";
				if (window == 7){
					shellThrowDir = "up";
				} else if (window == 10){
					shellThrowDir = "down";
					
					if (vsp > -2){
						vsp = -4.5;
					}
				}
			
				// function for creating shell
				create_koopa_shell(shellThrowDir);
				
				move_cooldown[AT_NSPECIAL] = 65;
			}
		}
	}
	
	// ====================================
	// kicking shell forward
	
	// ====================================
	// kicking shell upward
	
	// ====================================
	// kicking shell downward
	
	// ====================================
	// trying to grab shell
	
	// ====================================
	// zdropping shell
	
	
	
	// grab stuff
	if (grabbedShellFromNSpec){
		
		window = 16;
		window_timer = 0;
		
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 17);
		
		spawn_hit_fx(currKoopaShell.x, currKoopaShell.y - 12, 302);
		sound_play(sfx_smashult_item);
		
		delete_koopa_shell();
		
		carryingShell = true;
		
		grabbedShellFromNSpec = false;
		
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	
	if (window >= 16){
		move_cooldown[AT_NSPECIAL] = 0;
	}
}

if (specialShellRegrabTimer > 0 && !hitpause){
	// print(specialShellRegrabTimer);
	if (special_pressed && instance_exists(currKoopaShell)){
		spawn_hit_fx(currKoopaShell.x, currKoopaShell.y - 12, 302);
		sound_play(sfx_smashult_item);
	
		carryingShell = true;
		grabbedShellFromNSpec = false;
	
		delete_koopa_shell();
		
		with(obj_article1){
			if (instance_exists(isAKoopaShell)){
				vsp = -12;
			}
		}
		
		set_state(PS_IDLE);
		
		specialShellRegrabTimer = 0;
		
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_SPECIAL_PRESSED);
		clear_button_buffer(PC_SHIELD_PRESSED);
		
		hitpause = false;
		hitstop = 0;
		
		hsp = shellGrabCancelStoredHSP;
		vsp = shellGrabCancelStoredVSP;
		
		hsp *= 1.35;
		hsp = clamp(hsp, -14, 14);
		
		move_cooldown[AT_NSPECIAL] = 15;
	}
	specialShellRegrabTimer--;
}

// Forward Special - Power Shell
if (attack == AT_FSPECIAL){

	// What? Help Me!

    if (window == 1){
		
		// some sfx
		if (window_timer == 2){
			sound_play(asset_get("sfx_jumpground"), false, noone, 1, 1.25);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 5){
			sound_play(sfx_nsmbds_kick, false, noone, 0.25, 0.95);
			sound_play(sfx_ttydR_mario_field_hammer_spinslow, false, noone, 0.7, 1.2);
		}
	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ttydR_koops_field_spin, true, noone, 1, 1);
		} else {
		
			fspecStylishIndicator = false;
		
			fspecChargeAmtGot = 0;
			fspecTimeCharging = 0;
			fspecActiveFrameWindowLoopedYet = false;
			fspecBounceOffWall = false;
			fspecImpactLoopTimes = 0;
			fspecUsedAtMaxCharge = false;
			fspecReboundMaxChargeTimesBounced = 0;
			tauntStylishTimesSpun = 0;
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);	// reset window data
			
		}
	}
	
	if (window == 2){
		
		if (hsp > 4.5 || hsp < -4.5){
			hsp *= 0.85;
		}
		if (vsp > 2 || vsp < -2){
			vsp *= 0.85;
		}
	
		// dust fx
		if (fspecTimeCharging mod 10 == 0 && !hitpause){
			if (!free){
				spawn_base_dust( x + (18 * spr_dir), y, "dattack", spr_dir);
				spawn_base_dust( x + (26 * spr_dir), y, "walk", -spr_dir);
			} else {
				spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir);
				spawn_base_dust( x + (-24 * spr_dir), y, "dash", spr_dir);
			}
		}
	
		fspecTimeCharging++
		
		
		if ((!special_down && fspecTimeCharging >= fspecMinChargeTime) || fspecTimeCharging >= fspecMaxChargeTimeAllowed){
			window = 3;
			window_timer = 0;
			sound_stop(sfx_ttydR_koops_field_spin);
			// sound_play(sfx_ttydR_koops_field_spin, true, noone, 0.75, 1.5);
			fspecChargeAmtGot = fspecTimeCharging;
			
			
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, -1);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, -1);
			
			if (fspecTimeCharging >= fspecMaxChargeTimeAllowed){
				fspecUsedAtMaxCharge = true;
				sound_play(sfx_ttyd_stylish, false, noone, 0.25, 3);
			}			
			
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			if (!free){
				if (fspecUsedAtMaxCharge){
					spawn_base_dust( x + (6 * spr_dir), y - 0, "doublejump", spr_dir, -90 * spr_dir);
				} else {
					spawn_base_dust( x + (6 * spr_dir), y - 0, "doublejump_small", spr_dir, -90 * spr_dir);
				}
			} else if (free){
				if (fspecUsedAtMaxCharge){
					spawn_base_dust( x + (6 * spr_dir), y - 0, "doublejump", spr_dir, -125 * spr_dir);
				} else {
					spawn_base_dust( x + (6 * spr_dir), y - 0, "doublejump_small", spr_dir, -125 * spr_dir);
				}
			}
		}
	}
	
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// sound_stop(sfx_ttydR_koops_field_spin);
			
			var baseSpeed = 9;
			hsp = ( baseSpeed + ((fspecChargeAmtGot / fspecMaxChargeTimeAllowed) * 9) ) * spr_dir;
			if ((spr_dir == 1 && hsp < 10) || (spr_dir == -1 && hsp > -10)){
				hsp = 10.5*spr_dir;
			}
			
			// print("charge time: " + string(fspecChargeAmtGot) + ", hsp: " + string(hsp));
			
			if (free){
				hsp *= 0.85;
				
				vsp *= 0.65;
			}
			
			sound_play(sfx_ttydR_koops_field_shoot, false, noone, 1, 1);
			
			if (fspecUsedAtMaxCharge){
				set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, -1);
				
				if (!free){
					set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
					set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, -1);
				} else if (free){
					set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, -1);
					set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 4);
				}
			}
			
			vsp = clamp(vsp, -999, 0.75);
		}
	}
	
	if (window == 4){
		move_cooldown[AT_FSPECIAL] = 9999999;
		if (window_timer mod 4 == 0 && !hitpause && !free){
			spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir);
		}
		
		if (window_timer mod 2 == 0 && !hitpause && !free && fspecUsedAtMaxCharge){
			// spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir);
		}
		
		// wall collision.
		if (place_meeting(x+spr_dir,y,asset_get("par_block"))){
			// print("touching wall");
			
			fspecBounceOffWall = true;
			
			window = 7;
			window_timer = 0;
			
			destroy_hitboxes();
		}
	
		if (!has_hit && !hitpause && fspecActiveFrameWindowLoopedYet == false){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				window_timer = 0
				fspecActiveFrameWindowLoopedYet = true;
			}
		}
	}
	
	if (window == 5){
		if (!hitpause){
			if (window_timer mod 3 == 0 && !hitpause && !free && fspecUsedAtMaxCharge){
				if ((hsp > 2 && spr_dir == 1) || (hsp < -2 && spr_dir == -1)){//>
					spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir);
				}
			}
		}
	}
	
	if (window == 5 || window == 6){
	
		move_cooldown[AT_FSPECIAL] = 9999999;
	
		can_wall_jump = true;
	}
	
	if (window == 7){
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
		hsp = 0;
		vsp = 0;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!fspecBounceOffWall){
				hsp = -1 * (3.5 - ((fspecChargeAmtGot / fspecMaxChargeTimeAllowed) * 4) ) * spr_dir;
				vsp = -6 - ((fspecChargeAmtGot / fspecMaxChargeTimeAllowed) * 2.5);
				
				if (fspecUsedAtMaxCharge){
					hsp = -3.5 * spr_dir;
					vsp = -7;
				}
			} else {
				sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75, 0.85);
				// sound_play(sfx_ttydR_koops_field_return, false, noone, 0.75, 2);
				spawn_base_dust( x + (20 * spr_dir), y - 14, "walljump", spr_dir, 90 * spr_dir);
			
				hsp = -6 * spr_dir;
				vsp = -4.5;
				
				if (fspecUsedAtMaxCharge){
					vsp = -10.25;
					fspecUsedAtMaxCharge = false;
				}
			}
		}
	}
	
	if (window == 8){
		if (fspecUsedAtMaxCharge == false){
			// rebound IF you didnt fully charge
			var amtTimesToSpin = 0;
			
			// loop
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (fspecImpactLoopTimes != amtTimesToSpin){
					// window_timer = 4;
					fspecImpactLoopTimes++;
				} else {
					set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
					window = 6;
					window_timer = 0;
				}
			}
		} else if (fspecUsedAtMaxCharge){
			// if rebounding on MAX charge

			
			// rebound IF you didnt fully charge
			var amtTimesToSpin = 8;
			
			// loop
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (fspecImpactLoopTimes != amtTimesToSpin){
					window_timer = 0;
					fspecImpactLoopTimes++;
					// print("mario")
				} else {
					set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
					window = 6;
					window_timer = 0;
				}
			}
			
			// bounce check. if bounce more than once enable Stylish! window
			if (!free){
			
				sound_play(land_sound)
				spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
			
				// print(string(fspecReboundMaxChargeTimesBounced) + " - " + string(fspecReboundMaxChargeTimesBouncedMAX))
				
				if (fspecReboundMaxChargeTimesBounced == fspecReboundMaxChargeTimesBouncedMAX){
					vsp = 6;
					hsp = 0;
					
					window = 16;
					window_timer = 0;
				}
				
				fspecReboundMaxChargeTimesBounced++
				y -= 2;
				vsp = -4.5;	
			}
			
			// ok buddy lets get you back to normal
			if (fspecImpactLoopTimes >= 4 and fspecReboundMaxChargeTimesBounced == 0){
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
				window = 6;
				window_timer = 0;
			}
		}
	}
	
	if (window == 16){
		if (free){
			vsp += 4;
		} else {
			vsp = 0;
		}
		
		if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
			fspecStylishIndicator = true;
		} else {
			fspecStylishIndicator = false;
		}
		
		if (taunt_pressed && window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 9;
			window_timer = 0;
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 11);
			sound_play(sfx_ttyd_stylish, false, noone, 1, 1);
			
			fspecStylishIndicator = false;
			
			create_stylish_vfx();
		}
		
		// EPIC TIMING FAIL!!!!!!! GO TO ENDLAG!!!!!!!
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
			window = 6;
			window_timer = 0;
		}
	}
	
	// ============
	// Stylish Taunt stuff
	
	if (window == 9){
		fspecStylishIndicator = false;
	}
	
	if (window == 10){
	
		// print(tauntStylishTimesSpun)
	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (tauntStylishTimesSpun != tauntStylishMaxSpinTimes){
				tauntStylishTimesSpun++;
			} else {
				window = 11;
				window_timer = 0;
			}
		}
		
		if (tauntStylishTimesSpun == tauntStylishMaxSpinTimes){
			fspecStylishIndicator = true;
		} else {
			fspecStylishIndicator = false;
		}
		
		if (taunt_pressed){
			if (tauntStylishTimesSpun == tauntStylishMaxSpinTimes){
				sound_play(sfx_ttyd_stylish, false, noone, 1, 1);
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 15);
				window = 12;
				window_timer = 0;
				
				create_stylish_vfx();
			} else {
				// you SUCK at timing!!!
				window = 11;
				window_timer = 0;
			}
		}
	}
	
	if (window == 12){
		tauntStylishTimesSpun = 0;
		
		fspecStylishIndicator = false;
	}
	
} else {
	fspecStylishIndicator = false;
}

// Up Special - Paratroopa / Sky Dive
if (attack == AT_USPECIAL){

	// buncha vars ignore me
	var maxDegreesCapHorizWhenRising = 30;
	var uspecDirRising = clamp(joy_dir, (90 - maxDegreesCapHorizWhenRising), (90 + maxDegreesCapHorizWhenRising));
	// print(uspecDirRising)
	
	if ((joy_dir > 0 && joy_dir < 60) || (joy_dir > 270 && joy_dir <= 360)){//>
		uspecDirRising = 60;	// yeah.
	}
	if ((joy_dir > 120 && joy_dir < 180) || (joy_dir > 180 && joy_dir <= 270)){//>
		uspecDirRising = 120;	// yeah.
	}

	// print( ((uspecDirRising - 90) * pi) / 180 )

	can_wall_jump = true;

	if (window == 1){
		can_move = false;
		// reset a bunch of vars
		spr_angle = 0; // IMPORTANT!!!
		uspecLockedUpRiseDir = 90;
		uspecHoverLoops = 0;
		
		uspecSkyDive_wasPadIdle = false;
		
		uspec_dir_sin = 0;
		uspec_dir_cos = 0;
		
		set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);	// also important
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_smb3_superleaf_get);
			
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir);
			
			vsp = -5;
			y -= 1;
		}
	}
	
	if (window == 2){
		vsp *= 0.65;
		can_move = false;
		
		// yeah.
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			sound_play(asset_get("sfx_bird_downspecial"), false, noone, 0.65, 1);
			sound_play(asset_get("sfx_blink_dash"), false, noone, 0.5, 1);
		
			if (!joy_pad_idle){
				uspecLockedUpRiseDir = uspecDirRising;

				spr_angle += -(90 - uspecLockedUpRiseDir);
			} else {
				uspecLockedUpRiseDir = 90;
			}
			
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir, spr_angle);
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir, spr_angle);
		}
	}
	
	if (window == 3 && !hitpause){
		
		var riseMultHoriz = (( ((uspecLockedUpRiseDir - 90) * pi) / 180 ) * -1);
		var riseMultVert = 1 - abs((( ((uspecLockedUpRiseDir - 90) * pi) / 180 ) * -1)); // thank you calc classes, very helpful! (/genuine)
		
		// doing some Other stuff to help with vert speed ig
		if (riseMultVert != 1){
			riseMultVert *= 1.25;
			riseMultVert = clamp(riseMultVert, 0, 1);
		}
		
		var riseSpeed = 11.25;
		
		// set speed
		hsp = riseMultHoriz * riseSpeed;
		vsp = riseMultVert * -riseSpeed * 1.3;
		vsp = clamp(vsp, -riseSpeed, 999);
		
		if (state_timer mod 5 == 0){
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir, spr_angle);
		}
	}
	
	if (window == 4){
		hsp *= 0.75;
		vsp *= 0.9;
		vsp = clamp(vsp, -12, 999);
		
		spr_angle *= 0.75;
		
		if (attack_pressed || special_pressed){
			transition_into_sky_dive();
		}
	}
	
	if (window = 5){
		// hover
		can_move = true;
		
		spr_angle = 0;
		
		if (attack_pressed || special_pressed){
			transition_into_sky_dive();
		}
		
		hsp = clamp(hsp, -air_max_speed, air_max_speed);
		vsp = clamp(vsp, -999, 2);
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (uspecHoverLoops != uspecMaxHoverLoops){
				window_timer = 0;
				uspecHoverLoops++;
			} else {
				sound_stop(sfx_nsmbwii_propeller_down);
				sound_play(sfx_nsmbwii_player_spinonce, false, noone, 1, 0.85);
				spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir, spr_angle);
			}
		}
		
		// dust + sfx
		if (state_timer mod 12 == 0){
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir, spr_angle);
		}
		
		if (state_timer mod 20 == 0){
			sound_stop(sfx_nsmbwii_propeller_down);
			sound_play(sfx_nsmbwii_propeller_down, false, noone, 0.65, 1.3);
		}
		
		// cancel into endlag
		if (shield_pressed){
			window = 6;
			window_timer = 0;
			sound_stop(sfx_nsmbwii_propeller_down);
			sound_play(sfx_nsmbwii_player_spinonce, false, noone, 1, 0.85);
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir, spr_angle);
		}
		
		
		// land
		if (!free){
			landing_lag_time = 5;
			set_state(PS_LANDING_LAG);
			user_event(3);
			sound_stop(sfx_nsmbwii_propeller_down);
		}
		
		// get trolled!
		if (uspecCanBeStomped){
			if (collision_rectangle(uspecPityStompX1Coord,
				uspecPityStompY1Coord,
				uspecPityStompX2Coord,
				uspecPityStompY2Coord,
				oPlayer,
				false,
				true)){

				// do another check but for the specific player
				with (oPlayer){
					if (collision_rectangle(other.uspecPityStompX1Coord,
					other.uspecPityStompY1Coord,
					other.uspecPityStompX2Coord,
					other.uspecPityStompY2Coord,
					other,
					false,
					true)
					&&
					(state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR)
					&&
					vsp > 2
					&&
					other.y > y+12){
					
						vsp = -(djump_speed*1.15);
						
						sound_play(djump_sound);
						state_timer = 0;
						
						other.window = 6;
						other.window_timer = 0;
						
						other.uspecWasStompedOn = true;
						
						other.vsp = 4.5;
						other.djumps = 0;	// so its fair
						other.has_walljump = true;	// so its fair
					}
				}
			}
		}
	}
	
	if (window == 6){
		// 
	}
	
	// ==================================
	
	// sky dive stuff

	// var skyDive_joystickDir = clamp(dir_actual, 25, 45);
	// print(skyDive_joystickDir)
	
	var skyDiveAngle = joy_dir;
	
	// reassigning stuff for if you're out of range. this shit took way too long to figure out.
	if (spr_dir == 1){
		if (joy_dir < 310 && joy_dir > 25){
			if (up_down){
				skyDiveAngle = 25;
			} else {
				skyDiveAngle = 310;
			}
		}
	} else if (spr_dir == -1){
		if (!(joy_dir < 230 && joy_dir > 150)){
			if (up_down){
				skyDiveAngle = 180 - 25;
			} else {
				skyDiveAngle = 310;
			}
		}
	}
	
	// dirs should be between 315 and 25
	
	if (window == 7){
		//
		
		uspecLockedUpRiseDir = 0;
		
		can_move = false;
		hsp *= 0.85;
		vsp *= 0.5;
	}
	
	if (window == 8){
		can_move = false;
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spr_angle += 45 * spr_dir;
			
			sound_play(asset_get("sfx_bird_upspecial"), false, noone, 0.75, 1.15);
			sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.9, 1.1);
			
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir, spr_angle);
		}
	}
	
	if (window == 9 && !hitpause){
		
		var diveSpeed = 13;
		
		// ok look this was going to be aimable slightly, but the math just wasn't working out.
		hsp = diveSpeed * 0.7 * spr_dir;
		vsp = diveSpeed * 0.9;
	}
	
	if (window == 9 || window == 10){
		if (!hitpause && state_timer mod 5 == 0){
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump_small", spr_dir, spr_angle);
		}
		
		if (!free){
			hsp *= 0.65;
			spr_angle = 0;
			destroy_hitboxes();
			window = 12;
			window_timer = 0;
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 13);
			set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 0);
			sound_play(landing_lag_sound);
			sound_play(asset_get("sfx_blow_heavy1"));
			spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
		}
	}
	
	if (window > 10 && window < 12){//>
		spr_angle *= 0.7;
		
		if (!free){
			hsp *= 0.5;
			spr_angle = 0;
			landing_lag_time = 28;
			set_state(PS_LANDING_LAG);
			//sound_play(landing_lag_sound);
			//sound_play(asset_get("sfx_blow_heavy1"));
			//spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
			user_event(3);
		}
	}
	
	if (window == 11){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			user_event(3);
		}
	}
	
	// funny edge cancel
	if (window >= 12){
		if (free){
			if (!was_parried){
				set_state(PS_IDLE_AIR);
			} else {
				set_state(PS_PRATFALL);
			}
		}
	}
}

// Down Special - Shell Slam
if (attack == AT_DSPECIAL){

	can_fast_fall = false;
	can_wall_jump = true;

	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
			//vsp = ((!free)?-10:-2);
			
			if (free){
				// air
				spawn_base_dust( x + (0 * spr_dir), y - 16, "doublejump", spr_dir, 0);
			
				if (vsp > 0){
					vsp = -1.5;
				} else {
					vsp += 2.5;
				}
			} else {
				// ground
			
				spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir, 0);
			
				vsp = -10.5;
			}
			
			sound_play(djump_sound, false, noone, 0.25, 1.25);
			
			sound_play(sfx_nsmbds_groundpound_start, false, noone, 1, 1);
		}
	}
	
	if (window == 2){
		vsp += gravity_speed*0.25;	// torl
		
		if (!free){
			landing_lag_time = 6;
			set_state(PS_LANDING_LAG);
		}
	}
	
	if (window == 3){
		
		hsp = clamp(hsp, -2, 2);
	
		if (!hitpause){
			// dust fx
			if (state_timer mod 4 == 0){
				spawn_base_dust( x + (0 * spr_dir), y - 16, "doublejump_small", spr_dir, 180);
			}
		
			// vsp stuff
			vsp += gravity_speed*1.3;	// torl
			vsp = clamp(vsp, -999, ceil(fast_fall*1.5));
		
		
			if (!free || has_hit){
				window = 4;
				window_timer = 0;
				destroy_hitboxes();
				sound_play(landing_lag_sound);
				sound_play(sfx_nsmbds_groundpound_land, false, noone, 1, 1);
				sound_play(sfx_nsmbds_groundpound_landshell, false, noone, 1, 1);
				sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.25, 1);
				spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
			}
			
			if (state_timer >= 50){
				can_jump = true;
				can_shield = true;
			}
		}
	}
	
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			vsp = -6.25 - (has_hit * 1.75);
			sound_play(djump_sound, false, noone, 0.25, 0.86);
		}
	}
	
	if (window == 7){
		move_cooldown[AT_DSPECIAL] = 30;
	}
}

//--------------------------------------------

// If you're looking in the code, then hi! This part here (mainly for the FSpecial Taunt) is a little secret easter egg I put in here.
#define create_stylish_vfx()

var stylishVFX = spawn_hit_fx(x - 42, y - 80, vfx_stylish);
stylishVFX.spr_dir = 1;
stylishVFX.depth = depth - 1;

//--------------------------------------------

// Function for doing Sky Dive because I call this in more than 1 place
#define transition_into_sky_dive()

spr_angle = 0;

sound_play(asset_get("sfx_spin"));
sound_play(sfx_nsmbds_groundpound_start);
//sound_play(sfx_sm3dw_roll, false, noone, 0.35, 1);
sound_play(sfx_nsmbwii_propeller_loop, false, noone, 0.35, 1.5);
window = 7;
window_timer = 0
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 11);

if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)){
	spr_dir *= -1;
}

//--------------------------------------------

// Function for spawning a Koopa Shell
#define create_koopa_shell(throw_direction)

// flags koopa to say "hey, i don't have shell in my hands anymore!"
carryingShell = false;

// if shell doesn't exist, then spawn it!
if (currKoopaShell == noone){

	var shellXSpawnOffset = 0;
	var shellYSpawnOffset = 0;
	
	if (throw_direction == "normal"){
		shellXSpawnOffset = x + (36 * spr_dir);
		shellYSpawnOffset = y - 22;
	} else if (throw_direction == "up"){
		shellXSpawnOffset = x + (36 * spr_dir);
		shellYSpawnOffset = y - 30;
	} else if (throw_direction == "down"){
		shellXSpawnOffset = x + (4 * spr_dir);
		shellYSpawnOffset = y + 12;
	}
	

	currKoopaShell = instance_create(shellXSpawnOffset, shellYSpawnOffset, "obj_article1");
	
	currKoopaShell.spr_dir = spr_dir;
	
	currKoopaShell.initialThrownDirection = throw_direction;
	
	if (throw_direction == "normal"){
		currKoopaShell.hsp = 7.5*spr_dir;
		if (!free){
			currKoopaShell.vsp = -3.5;
		} else {
			currKoopaShell.vsp = 1.5;
		}
	} else if (throw_direction == "up"){
		currKoopaShell.hsp = 0*spr_dir;
		currKoopaShell.vsp = -12;
	} else if (throw_direction == "down"){
		currKoopaShell.hsp = 0*spr_dir;
		currKoopaShell.vsp = 12;
	}
	
	// play awesome sfx
	sound_play(sfx_nsmbds_kick);
}

//--------------------------------------------

// Function for deleting a Koopa Shell
#define delete_koopa_shell()

if (instance_exists(currKoopaShell)){
	if (instance_exists(currKoopaShell)){
		with (currKoopaShell){
			shouldBeDestroyed = true;
			playerGrabbedShell = true;
		}
		numShellTimeRebound = 0;
		currKoopaShell = noone;
	}
	
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
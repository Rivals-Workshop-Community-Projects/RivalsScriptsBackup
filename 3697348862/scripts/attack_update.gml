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

// Dash Attack
if (attack == AT_DATTACK){
	// flip sound
	if (window == 1){
		if (window_timer == 2){
			spawn_base_dust( x + (16 * spr_dir), y, "jump", spr_dir, 0);
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.6, 1.3);
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.4, 0.8);
			sound_play(sfx_ssbu_megaman_dtilt, false, noone, 0.1, 1.15);
			sound_play(sfx_reallife_ti84_cover_off, false, noone, 1, 1);
			put_cover_back_on = false;
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sfx_ssbu_rob_dashstart);
			sound_stop(asset_get("sfx_ori_stomp_spin"));
			
			spawn_base_dust( x + (16 * spr_dir), y, "land", spr_dir, 0);
			sound_play(land_sound, false, noone, 1, 1);
			sound_play(landing_lag_sound, false, noone, 1, 1);
			sound_play(sfx_ssbu_rob_land, false, noone, 0.7, 1.2);
		}
	}
	
	if (window == 2 || window == 3){
		if (!hitpause && state_timer mod 3 == 0 && hsp != 0){
			spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir, 0);
			spawn_base_dust( x + (94 * spr_dir), y, "walk", -spr_dir, 0);
		}
	}
	
	if (image_index == 11 && put_cover_back_on == false){
		sound_play(sfx_reallife_ti84_cover_on, false, noone, 0.6, 1);
		put_cover_back_on = true;
	}
}

// Forward Tilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("mfx_coin"), false, noone, 1, 0.65);
			sound_play(asset_get("mfx_coin"), false, noone, 1, 1.25);
			sound_play(asset_get("sfx_clairen_arc_bounce"), false, noone, 1, 1);
		}
	}
	
	
	
}

// Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 1, 1);
			spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir, 0);
			spawn_base_dust( x + (14 * spr_dir), y, "dattack", -spr_dir, 0);
		}
	}
	
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sfx_ssbu_rob_land, false, noone, 1, 1);
			sound_play(landing_lag_sound, false, noone, 1, 1);
			spawn_base_dust( x + (12 * spr_dir), y, "land", spr_dir, 0);
		}
	}
	
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 4)){///>
	    hud_offset = 48;
	} //>
}

// Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == 1){
			dtilt_no_ground_front = false;
		}
	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			// i totally didnt rip this from one of my other wip characters... totally...
			var distToCheckFor = (62 * spr_dir);
			if (!place_meeting(x + distToCheckFor, y + 6, asset_get("par_block")))
			&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("par_jumpthrough")))
			&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("obj_article_platform")))
			&& (!place_meeting(x + distToCheckFor, y + 6, asset_get("obj_article_solid"))){
				dtilt_no_ground_front = true;
			}
			
			// do sfx and stuff
			sound_play(sfx_ssbu_rob_swipe_med, false, noone, 0.7, 0.8);
			if (!dtilt_no_ground_front){
			
				spawn_base_dust( x + (42 * spr_dir), y, "land", spr_dir, 0);
				spawn_base_dust( x + (58 * spr_dir), y, "dash_start", -spr_dir, 0);
			
				sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.55, 1.35);
				sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 0.25, 1.4);
			} else {
				sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.35, 1.25);
			}
		}
	}
}

// Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ssbu_megaman_dashattack, false, noone, 0.25, 1);
		}
	}
}

// Forward Air
if (attack == AT_FAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ssbu_rob_swipe_weak, false, noone, 1, 1);
		}
	}
}

// Up Air
if (attack == AT_UAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.25, 1);
			sound_play(sfx_ssbu_rob_swipe_weak, false, noone, 1, 1.2);
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.6, 1.25);
		}
	}
	
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 4)){///>
	    hud_offset = 48;
	} //>
}

// Down Air
if (attack == AT_DAIR){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("mfx_chat_received"), false, noone, 1, 0.5);
			sound_play(asset_get("mfx_chat_received"), false, noone, 1, 1.2);
			sound_play(asset_get("mfx_logo_shing"), false, noone, 0.6, 1.7);
			sound_play(asset_get("sfx_abyss_portal_spawn"), false, noone, 0.6, 1.4);
		}
	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			// reset var
			dair_grabbed_player = noone;
			set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(asset_get("mfx_chat_received"));
			
			sound_play(asset_get("sfx_charge_blade"), false, noone, 0.6, 1.45);
			sound_play(asset_get("sfx_bird_upspecial"), false, noone, 0.6, 0.7);
			sound_play(asset_get("mfx_coin"), false, noone, 1, 0.65);
			sound_play(asset_get("mfx_coin"), false, noone, 1, 1.25);
			sound_play(sfx_ssbu_megaman_dair, false, noone, 0.7, 1.4);
		}
	}
	
	if (window == 2){
		if (!hitpause){
			if (instance_exists(dair_grabbed_player)){
				
				set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
				
				window = 4;
				window_timer = 0;
			}
		}
	}
	
	if (window >= 4 && window != 6){
		can_fast_fall = false;
	}
	
	if (window == 4){
		if (instance_exists(dair_grabbed_player)){
			dair_grabbed_player.x = x;
			dair_grabbed_player.y = lerp(dair_grabbed_player.y, y + 60, 0.5);
			dair_grabbed_player.hitpause = true;
			dair_grabbed_player.hitstop += 1;
				
			// slow horiz movement so you cant cheese lol
			hsp *= 0.9;
			hsp = clamp(hsp, -air_max_speed/1.5, air_max_speed/1.5);

			// sfx and dust
			if (window_timer mod 5 == 0 && window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
				sound_play(asset_get("mfx_forward"), false, noone,
				0.6 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)),
				0.6 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)));
				
				/*
				sound_play(asset_get("mfx_mm_coin"), false, noone,
				0.2 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)),
				0.1 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)));
				*/
				
				sound_play(asset_get("sfx_shop_close"), false, noone,
				0.1 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)),
				0.2 + (window_timer / get_window_value(attack, window, AG_WINDOW_LENGTH)));
				
				
				spawn_base_dust( x + (0 * spr_dir), y + 22, "doublejump", spr_dir, 0);
				
				
			}
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			
				sound_stop(asset_get("mfx_forward"));
				sound_stop(asset_get("sfx_shop_close"));
				sound_play(sfx_ssbu_megaman_dair, false, noone, 1, 1);
				
			}
		}
	}
	
	
	if (window == 5){
		if (!hitpause){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				dair_grabbed_player = noone;
				vsp = -6.4;
				old_vsp = -6.4;
			}
		}
	}
	
	if (window == 6){
		can_fast_fall = true;
	}
}

// Back Air
if (attack == AT_BAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 4){
			sound_play(sfx_reallife_ti84_battery_cover_off, false, noone, 0.8, 1);
			put_cover_back_on = false;
		}
	}

	if (window == 1 || window == 2 || window == 3){
		if (!hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			if (window == 3){
				sound_play(asset_get("sfx_absa_jab2"), false, noone, 1, 1.4);
			} else {
				sound_play(asset_get("sfx_absa_jab1"), false, noone, 1, 1.1 + ((window - 1) * 0.2));
				
				if (window == 1){
					sound_play(sfx_ssbu_rob_swipe_med, false, noone, 0.8, 1.2);
				}
			}
		}
	}
	
	if (image_index == 16 && put_cover_back_on == false){
		sound_play(sfx_reallife_ti84_battery_cover_on, false, noone, 0.6, 1);
		put_cover_back_on = true;
	}
}

// Forward Strong
if (attack == AT_FSTRONG){

	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 7){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.35, 0.9);
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.35, 0.7);
			sound_play(sfx_reallife_ti84_cover_off, false, noone, 0.8, 1);
			put_cover_back_on = false;
		}
	}
	
	if (window == 2){
		put_cover_back_on = false;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 3){
			sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, 0.75, 1);
			sound_play(sfx_ssbu_megaman_dair, false, noone, 0.5, 1.4);
			sound_play(sfx_ssbu_rob_swipe_heavy, false, noone, 0.5, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (50 * spr_dir), y + 0, "dattack", -spr_dir, 0);
			spawn_base_dust( x - (8 * spr_dir), y + 0, "dash_start", spr_dir, 0);
		}
	}
	
	if (image_index == 16 && put_cover_back_on == false){
		sound_play(sfx_reallife_ti84_cover_on, false, noone, 0.6, 1);
		put_cover_back_on = true;
	}
}

// Up Strong
if (attack == AT_USTRONG){

	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.35, 0.9);
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.35, 0.7);
			sound_play(sfx_reallife_ti84_cover_off, false, noone, 0.8, 1);
			put_cover_back_on = false;
		}
	}

	if (window == 2){
		put_cover_back_on = false;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (18 * spr_dir), y + 0, "dattack", spr_dir, 0);
			
			spawn_base_dust( x - (30 * spr_dir), y + 0, "walk", spr_dir, 0);
			spawn_base_dust( x - (24 * spr_dir), y + 0, "walk", spr_dir, 0);
			spawn_base_dust( x - (18 * spr_dir), y + 0, "walk", spr_dir, 0);
			spawn_base_dust( x + (12 * spr_dir), y + 0, "walk", spr_dir, 0);
			spawn_base_dust( x + (6 * spr_dir), y + 0, "walk", spr_dir, 0);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.75, 1);
			sound_play(sfx_ssbu_megaman_dair, false, noone, 0.5, 1.4);
			sound_play(sfx_ssbu_rob_swipe_heavy, false, noone, 0.5, 1);
			
			spawn_base_dust( x + (38 * spr_dir), y + 0, "jump", spr_dir, 0);
			spawn_base_dust( x + (48 * spr_dir), y + 0, "dash_start", -spr_dir, 0);
		}
	}
	
	if (image_index == 19 && put_cover_back_on == false){
		sound_play(sfx_reallife_ti84_cover_on, false, noone, 0.6, 1);
		put_cover_back_on = true;
	}
	
	//Hud Offset
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || window == 4 || (window == 5 && image_index < 17)){///>
	    hud_offset = 92;
	} //>
}

// Down Strong
if (attack == AT_DSTRONG){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 0.75, 0.9);
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.75, 0.7);
		}
	}
	
	if (window == 2 || window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			if (window == 2){
				sound_play(sfx_ssbu_megaman_dashattack, false, noone, 1, 1);
				
				spawn_base_dust( x + (66 * spr_dir), y + 0, "dash_start", -spr_dir, 0);
				spawn_base_dust( x + (48 * spr_dir), y + 0, "dattack", -spr_dir, 0);
				spawn_base_dust( x + (48 * spr_dir), y + 0, "walk", -spr_dir, 0);
				spawn_base_dust( x + (28 * spr_dir), y + 0, "walk", -spr_dir, 0);
				spawn_base_dust( x + (10 * spr_dir), y + 0, "walk", -spr_dir, 0);
			} else {
				spawn_base_dust( x - (66 * spr_dir), y + 0, "dash_start", spr_dir, 0);
				spawn_base_dust( x - (48 * spr_dir), y + 0, "dattack", spr_dir, 0);
				spawn_base_dust( x - (48 * spr_dir), y + 0, "walk", spr_dir, 0);
				spawn_base_dust( x - (28 * spr_dir), y + 0, "walk", spr_dir, 0);
				spawn_base_dust( x - (10 * spr_dir), y + 0, "walk", spr_dir, 0);
			}
		
			sound_play(sfx_ssbu_rob_crouch, false, noone, 0.75, 1.4);
			sound_play(sfx_ssbu_megaman_dtilt, false, noone, 0.2, 1.4);
			sound_play(sfx_ssbu_rob_swipe_med, false, noone, 0.9, 0.7);
		}
	}
}

//B - Reversals
if ((attack == AT_NSPECIAL && window != 1)|| attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Neutral Special - SD Card
if (attack == AT_NSPECIAL){
    if (window == 1){
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			nspec_stored = false;
			nspec_visual_charge_bump_tick = nspec_visual_charge_bump_tick_max;
		
            //
			if (held_sd_card_num != -1){
				sd_card_number = held_sd_card_num;
				held_sd_card_num = -1;
			}
			
			sd_card_sfx();
			
			// if at max charge, auto-throw
			if (sd_card_number == 0){
				window = 3;
				window_timer = 0;
			}
        }
		
		if (window_timer == 1){
			nspec_b_reverse_allow_timer = 5;
		}
    }
	
	if (window == 2){
	
		//
		charging_slow_speed();
		
		if (state_timer mod 8 == 0){
			if (!free){
				spawn_base_dust( x - (16 * spr_dir), y, "dash", spr_dir, 0);
			} else {
				spawn_base_dust( x - (0 * spr_dir), y, "doublejump_small", spr_dir, 0);
			}
		}
	
		// throw card
		if (attack_pressed || left_strong_pressed || right_strong_pressed || special_pressed){
			window = 3;
			window_timer = 0;
			
			if ((left_pressed || left_down) && !right_down) || left_strong_pressed{
				spr_dir = -1;
			}
			if ((right_pressed || right_down) && !left_down) || right_strong_pressed{
				spr_dir = 1;
			}
		}
		
		// reset this var
		nspec_rethrow_throw_dir = -1;
		// throw startup 
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
		
		// throw active
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

		// throw endlag
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
		
		// store
		if (shield_pressed){
			nspec_stored = true;
			window = 6;
			window_timer = 0;
		}
	
		// increment
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
            //
			
			if ((sd_card_number != sd_card_number_max) && sd_card_number > 0){
				sd_card_number++;
				nspec_visual_charge_bump_tick = nspec_visual_charge_bump_tick_max;
				if (sd_card_number == 10){
					sd_card_number = 0;
				}
				sd_card_sfx();
			} else {
				window = 6;
				window_timer = 0;
			}
        }
	}
	
	
	// spawn proj
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (sd_card_number != 0){
				sd_card_num_proj_spawn = sd_card_number;
			} else {
				sd_card_num_proj_spawn = 10;
			}
			
			
			var sdCardThrow_X_Pos = x + (40 * spr_dir);
			var sdCardThrow_Y_Pos = y - 60;
			
			if (nspec_rethrow_throw_dir == 1){
				sdCardThrow_X_Pos = x + (-4 * spr_dir);
				sdCardThrow_Y_Pos = y - 90;
			} else if (nspec_rethrow_throw_dir == 3){
				sdCardThrow_X_Pos = x + (2 * spr_dir);
				sdCardThrow_Y_Pos = y + 2;
			}
			
			var sd_card_proj = create_hitbox( AT_NSPECIAL, sd_card_num_proj_spawn, sdCardThrow_X_Pos, sdCardThrow_Y_Pos );
			
			sd_card_proj.uses_shader = false;
			sd_card_proj.draw_xscale = 1;
			
			sd_card_proj.image_index = sd_card_number;
			
			/*
			if (holding_sd_card){
				print("threw sd card when held as item")
			} else {
				print("threw sd card normally")
			}
			*/
			// print("test var is: " + string(nspec_rethrow_throw_dir));
			
			// prevent re-thrown sd cards to be re-caught
			if (holding_sd_card || sd_card_was_recaught){
				sd_card_proj.sd_card_unable_to_recatch = true;
			} else {
				sd_card_proj.sd_card_unable_to_recatch = false;
			}
			
			// check if thrown sd card was from held. if up or down do Cool Stuff
			if (nspec_rethrow_throw_dir != -1){
				
				// check if not thrown forward
				if (nspec_rethrow_throw_dir != 2){
					
					// Up
					if (nspec_rethrow_throw_dir == 1){
						sd_card_proj.sd_card_thrown_up = true;
						sd_card_proj.sd_card_thrown_down = false;
					}
					
					// Down
					if (nspec_rethrow_throw_dir == 3){
						sd_card_proj.sd_card_thrown_up = false;
						sd_card_proj.sd_card_thrown_down = true;						
					}
					
					// apply hsp and vsp at a base level
					// do basic thing here. will need to mess with actual behavior in hitbox_update
					
					// also check for sd card number
					if (sd_card_num_proj_spawn != 4){
						var flip_thing_nspec_idk = ((nspec_rethrow_throw_dir==1)?-1:1);
						
						sd_card_proj.vsp = abs(sd_card_proj.hsp) * 1.35 * flip_thing_nspec_idk;
						sd_card_proj.hsp = 0;
					}
				}
				
				
			}
			
			sound_play(sfx_ssbu_item_throw);
		}
	}
	
	if (window == 5){
		sd_card_number = 1;
		
		held_sd_card_num = -1;
		holding_sd_card = false;
		
		if (window_timer == 1){
			move_cooldown[AT_NSPECIAL] = 50;
		}
		
		sd_card_was_recaught = false;	// reset this var
	}
	
	if (window == 6){
		held_sd_card_num = -1;
		holding_sd_card = false;
	}
	
	// b reverse
	if (nspec_b_reverse_allow_timer != 0 && free){
	
		nspec_b_reverse_allow_timer--;
	
		if ( (left_down && spr_dir == 1) || (right_down && spr_dir == -1) ){
			nspec_b_reverse_allow_timer = 0;
			sound_play(asset_get("mfx_star"), false, noone, 0.15, 1.35)
			spr_dir *= -1;
			hsp *= -1.25;
		}
	}
	if (!free){
		nspec_b_reverse_allow_timer = 0;
	}
}

// Forward Special
if (attack == AT_FSPECIAL){
    if (window == 1){
		
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			if (fspec_curr_operator == -1){
				fspec_curr_operator = 1;
			}
		
			// if one of them already exists, then despawn them.
			check_and_destroy_operator(fspec_curr_operator);
		
			var operator_x_spawn = x + (78 * spr_dir);
			var operator_y_spawn = y - 26;
			
			// spawn the operator
			create_ti84_operator(fspec_curr_operator, operator_x_spawn, operator_y_spawn, attack);
		
			// fspec_article_dummy = instance_create(x + (78 * spr_dir), y - 26, "obj_article1");
			
			// sfx and Dust
			sound_play(asset_get("sfx_absa_cloud_send"), false, noone, 1, 0.85);
			spawn_base_dust( operator_x_spawn - (12 * spr_dir), operator_y_spawn, "doublejump", spr_dir, -90*spr_dir);
		}
	}
	
	if (window == 2){
		
		// 
		charging_slow_speed();
		
		if (state_timer mod 8 == 0){
			if (!free){
				spawn_base_dust( x - (16 * spr_dir), y, "dash", spr_dir, 0);
			} else {
				spawn_base_dust( x - (0 * spr_dir), y, "doublejump_small", spr_dir, 0);
			}
		}
	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (special_down){
				window_timer--;
			}
		}
	}
	
	if (window >= 3){
		if (fspec_curr_operator > 4){
			fspec_curr_operator = 1;
		}
		
		move_cooldown[AT_FSPECIAL] = 40;
	}
}

// Down Special
// (im putting this BEFORE uspecial because it's inherently similar to fspecial)
if (attack == AT_DSPECIAL){
	//
	
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			// sfx
			sound_play(asset_get("sfx_ell_arc_taunt_start"), false, noone, 1, 1.4);
			sound_play(asset_get("sfx_ell_arc_taunt_end"), false, noone, 1, 1.4);
			sound_play(sfx_ssbu_megaman_fspec_1, false, noone, 0.6, 1.5);
			
			// dust
			if (!free){
				spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir, 0);
			}
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir, 0);
			
			// movement
			if (dspec_used_already == false){
				vsp = -ceil(djump_speed * 0.85);
				dspec_used_already = true;
			} else {
				vsp = -ceil(djump_speed * 0.25);
			}
			
			// spawn
			if (fspec_curr_operator == -1){
				fspec_curr_operator = 1;
			}
		
			// if one of them already exists, then despawn them.
			check_and_destroy_operator(fspec_curr_operator);
		
			var operator_x_spawn = x + (0 * spr_dir);
			var operator_y_spawn = y - 26;
			
			// spawn the operator
			create_ti84_operator(fspec_curr_operator, operator_x_spawn, operator_y_spawn, attack);
		}
	}
	
	if (window >= 1){
		if (fspec_curr_operator > 4){
			fspec_curr_operator = 1;
		}
	}
	
	if (window >= 2){
		if (!free){
			// applying proper landing lag data for when you land
			landing_lag_time = get_attack_value( attack, AG_LANDING_LAG );
			
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
	}
	
	if (window == 4){
		move_cooldown[AT_DSPECIAL] = 25;
	}
}

// Up Special - USB Cable
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	
	// i am so sorry if you're reading this
	
	
	if (window == 1){
	
		if (window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * 0.15)){
			if (!free){
				spawn_base_dust( x - (12 * spr_dir), y, "walk", spr_dir, 0);
			}
		}
		
		if (window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * 0.5)){
			if (!free){
				spawn_base_dust( x + (12 * spr_dir), y, "dash", -spr_dir, 0);
			}
		}
		
		if (window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * 0.85)){
			if (!free){
				spawn_base_dust( x - (12 * spr_dir), y, "dattack", spr_dir, 0);
			}
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (10 * spr_dir), y - 24, "jump", spr_dir, -30 * spr_dir);
		}
	
	
		// reset all unimportant vars
		if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
			uspecial_grabbed_player = noone;
			uspec_random_number_inc_var = 0; // ignore this
			
			uspec_stored_grabbed_x = -1;
			uspec_stored_grabbed_y = -1;
			
			uspec_x_dist_diff = 0;
			uspec_y_dist_diff = 0;
			
			uspec_dmg_of_hit_player = 0;
			
			uspec_was_cancel_into_wj = false;
			
			uspec_is_curr_grabbing_wall = false;
			uspec_climb_wall_stupid_tick_var = 0;
			
			uspec_wall_grab_with_specific_hitbox_num = -1;
			
			uspec_grabbed_operator = false;
			uspec_told_grabbed_which_opp = -1;
			uspec_assigned_grabbed_operator = noone;
			
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
			
			set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 0);
			set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 0);
			
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 22);
			
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23);
			
			// ground stuff
			if (!free){
				uspec_started_from_ground = true;
				
				set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);
				set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
			} else {
				uspec_started_from_ground = false;
				
				set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
				set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
				set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);
				set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 2);
			}
			
			// sfx
			if (window_timer == 5){
				sound_play(sfx_ssbu_byleth_uspecial_whip, false, noone, 1, 0.7);
				sound_play(sfx_ssbu_byleth_usmash_1, false, noone, 1, 1);
			}
			
			if (vsp > 0){
				vsp *= 0.825;
			}
		} else {
			if (free){
				if (vsp > uspec_pity_hop_speed/*>*/){
					vsp = uspec_pity_hop_speed;
				}
			}
		}
	}
	
	// hold grabbed player
	if (instance_exists(uspecial_grabbed_player)){
		uspecial_grabbed_player.hitpause = true;
		uspecial_grabbed_player.hitstop += 1;
	}
	
	if (window == 2){
		// print(floor((uspec_random_number_inc_var/2) + 1));
	
		if (!hitpause){
			uspec_random_number_inc_var++;
			
			hsp *= 0.6;
			//vsp *= 0.6;
		}
		
		uspec_stored_grabbed_x = x + (get_hitbox_value( AT_USPECIAL, 6, HG_HITBOX_X ) * spr_dir);
		uspec_stored_grabbed_y = y + get_hitbox_value( AT_USPECIAL, 6, HG_HITBOX_Y );
	
	
		// use this for if i go to 2f active for each grab frame
		//var whatUSpecGrabHitboxToUse = floor((uspec_random_number_inc_var/2) + 1);
		// otherwise this for 1f
		var whatUSpecGrabHitboxToUse = uspec_random_number_inc_var;
		
		// positions
		var grabHB_xPos = get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_X );
		var grabHB_yPos = get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_Y );
		
		// print(whatUSpecGrabHitboxToUse);
		
		if (!hitpause && (state_timer-1) mod 2 == 0){
			spawn_base_dust( x + grabHB_xPos*spr_dir, y+grabHB_yPos, "doublejump_small", spr_dir, -30 * spr_dir);
		}
		
		if (instance_exists(uspecial_grabbed_player)){
			//

			uspecial_grabbed_player.x = x + (grabHB_xPos*spr_dir);
			uspecial_grabbed_player.y = y + grabHB_yPos;
			
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23);
			
			// if held someone and we're at end of window, go to grab stuff
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				
				window = 4;
				window_timer = 0;
				
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
			}
		}
		
		// wall grab, operator grab
		if (!instance_exists(uspecial_grabbed_player)){ // can't grab wall and opp at the same time...
			if (whatUSpecGrabHitboxToUse > 1){ // prevent scoop hitbox from wall grab
				var grabhb_x_wg_help_offset = 28;
				
				// operator grab
				if (uspec_told_grabbed_which_opp != -1){ // weird way to trigger it but SSSSSHHHH
					
					if (uspec_told_grabbed_which_opp == 0){
						uspec_assigned_grabbed_operator = fspec_article_add;
					} else if (uspec_told_grabbed_which_opp == 1){
						uspec_assigned_grabbed_operator = fspec_article_sub;
					} else if (uspec_told_grabbed_which_opp == 2){
						uspec_assigned_grabbed_operator = fspec_article_mlt;
					} else if (uspec_told_grabbed_which_opp == 3){
						uspec_assigned_grabbed_operator = fspec_article_dvd;
					}
					
					//uspec_stored_grabbed_x = x + (get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_X ) * spr_dir);
					//uspec_stored_grabbed_y = y + get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_Y );
					
					hitstop += 8;
					
					uspec_grabbed_operator = true;
					
					// ok im ngl im copy pasting wall grab code
					uspec_stored_grabbed_x = uspec_assigned_grabbed_operator.x - (30 * spr_dir);
					uspec_stored_grabbed_y = uspec_assigned_grabbed_operator.y + 26;
					
					spawn_hit_fx(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, 302);
					spawn_hit_fx(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, 305);
					spawn_hit_fx(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, 115);
					
					sound_play(sfx_ssbu_byleth_uspecial_grab, false, noone, 0.7, 1.1);
					sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.7, 1.1);
					sound_play(asset_get("sfx_may_arc_plant"), false, noone, 1, 1.9);
				
					window = 4;
					window_timer = 0;
					
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 23 + (6 - whatUSpecGrabHitboxToUse));
					
					set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6 - (6 - whatUSpecGrabHitboxToUse));
					set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23 + (6 - whatUSpecGrabHitboxToUse));
					
					set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
					
					uspec_is_curr_grabbing_wall = true;
					
					uspec_wall_grab_with_specific_hitbox_num = whatUSpecGrabHitboxToUse;
					
					// gives you dspec back
					// djumps = 0;
					dspec_used_already = false;
					
				}
				
				
				
				/*
				
				collision_rectangle(x1, y1, x2, y2, asset_get("par_block"), false, true)
				
				
				var x1wallgrabposcond = x + (uspec_grab_radius_else + grabHB_xPos * spr_dir);
				var y1wallgrabposcond = y + grabHB_yPos - uspec_grab_radius_else;
				var x2wallgrabposcond = x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir);
				var y2wallgrabposcond = y + grabHB_yPos + uspec_grab_radius_bottom;
				
				collision_rectangle(
					x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
					y + grabHB_yPos - uspec_grab_radius_else,		// y top
					x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
					y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
					asset_get("par_block"), false, true)
				
				x1, y1, x2, y2, asset_get("par_block"), false, true)
				
				// old detection code
				place_meeting(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("par_block"))
				||
				place_meeting(x + (-grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("par_block"))
				||
				place_meeting(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_stage_main"))
				||
				place_meeting(x + (-grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_stage_main"))
				||
				place_meeting(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_article_solid"))
				||
				place_meeting(x + (-grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_article_solid"))
				||
				place_meeting(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_stage_article_solid"))
				||
				place_meeting(x + (-grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, asset_get("obj_stage_article_solid"))
				
				*/
				
				// wall grab
				if (
				uspec_told_grabbed_which_opp == -1
				&&
				uspec_allowed_to_grab_wall
				&&
				(
				collision_rectangle(
					x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
					y + grabHB_yPos - uspec_grab_radius_else,		// y top
					x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
					y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
					asset_get("par_block"), false, true)
				||
				collision_rectangle(
					x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
					y + grabHB_yPos - uspec_grab_radius_else,		// y top
					x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
					y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
					asset_get("obj_stage_main"), false, true)
				||
				collision_rectangle(
					x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
					y + grabHB_yPos - uspec_grab_radius_else,		// y top
					x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
					y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
					asset_get("obj_article_solid"), false, true)
				||
				collision_rectangle(
					x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
					y + grabHB_yPos - uspec_grab_radius_else,		// y top
					x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
					y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
					asset_get("obj_stage_article_solid"), false, true)
				
				)){
					// print("touched wall! launch self towards it with hitbox " + string(whatUSpecGrabHitboxToUse));
					
					// print("why")
				
					uspec_stored_grabbed_x = x + (get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_X ) * spr_dir);
					uspec_stored_grabbed_y = y + get_hitbox_value( AT_USPECIAL, whatUSpecGrabHitboxToUse, HG_HITBOX_Y );
					
					spawn_hit_fx(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, 302);
					spawn_hit_fx(x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos, 305);
					
					sound_play(sfx_ssbu_byleth_uspecial_grab, false, noone, 1, 1.1);
					sound_play(asset_get("sfx_zetter_downb"), false, noone, 1, 1.1)
				
					window = 4;
					window_timer = 6 - whatUSpecGrabHitboxToUse;
					
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 23 + (6 - whatUSpecGrabHitboxToUse));
					
					set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6 - (6 - whatUSpecGrabHitboxToUse));
					set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23 + (6 - whatUSpecGrabHitboxToUse));
					
					set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
					
					uspec_is_curr_grabbing_wall = true;
					
					uspec_wall_grab_with_specific_hitbox_num = whatUSpecGrabHitboxToUse;
					
					// gives you dspec back
					// djumps = 0;
					dspec_used_already = false;
				}
			}
		}
	}
	
	
	
	// if grabbed someone OR hit wall...
	if (window == 4){
		if (instance_exists(uspecial_grabbed_player)){
			uspecial_grabbed_player.x = uspec_stored_grabbed_x;
			uspecial_grabbed_player.y = uspec_stored_grabbed_y;
		}
		
		// print("dif btwn x and grab x: " + string(uspec_stored_grabbed_x - x))
	
		uspec_x_dist_diff = uspec_stored_grabbed_x - x;
		uspec_y_dist_diff = uspec_stored_grabbed_y - y;
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_ssbu_megaman_jump, false, noone, 1, 1.05);
			spawn_base_dust( x, y, "jump", spr_dir, -30 * spr_dir);
			if (free){
				spawn_base_dust( x, y, "doublejump", spr_dir, -30 * spr_dir);
			}
		}
	}
	
	if (window == 5){
		if (instance_exists(uspecial_grabbed_player)){
			uspecial_grabbed_player.x = uspec_stored_grabbed_x;
			uspecial_grabbed_player.y = uspec_stored_grabbed_y;
		}
		
		
		if (  ( (spr_dir == 1 && x < uspec_stored_grabbed_x) || (spr_dir == -1 && x > uspec_stored_grabbed_x) )
		||
		(y > uspec_stored_grabbed_y)
		||
		vsp == 0){
			hsp = abs( (uspec_x_dist_diff)/6 ) * spr_dir;
			
			if (uspec_is_curr_grabbing_wall){
				hsp *= 1.35;
			}
			
			// print(hsp)
			// print(hsp * spr_dir);
						
			vsp = -abs( uspec_y_dist_diff/6 );
			
		} else {
			// spawn_hit_fx(x, y, 304)
			
			window = 6;
			window_timer = 0;
		}
		
		// in the strange scenario where solids are touched when going to opponent, cancel the move entirely.
		var grabhb_x_wg_help_offset = 28;	// note to self: do NOT make this times spr_dir this breaks the move
				
		if (state_timer mod 2 == 0){
			spawn_base_dust( x, y, "doublejump_small", spr_dir, -30 * spr_dir);
		}
				
		if (
		place_meeting(x + ((grabhb_x_wg_help_offset + grabHB_xPos) * spr_dir), y + grabHB_yPos, asset_get("par_block"))
		||
		place_meeting(x + ((grabhb_x_wg_help_offset + grabHB_xPos) * spr_dir), y + grabHB_yPos, asset_get("obj_stage_main"))
		||
		place_meeting(x + ((grabhb_x_wg_help_offset + grabHB_xPos) * spr_dir), y + grabHB_yPos, asset_get("obj_article_solid"))
		||
		place_meeting(x + ((grabhb_x_wg_help_offset + grabHB_xPos) * spr_dir), y + grabHB_yPos, asset_get("obj_stage_article_solid"))
		){
			hsp = 0;
			vsp = 0;
		
			// print("weird condition?");
		
			// if this happened from grabbing the opponent, cancel out the move entirely.
			if (instance_exists(uspecial_grabbed_player)){
			
				/*
				set_state(PS_IDLE_AIR);
				hsp = -6 * spr_dir;
				vsp = -3;
				uspecial_grabbed_player = noone;
				*/
				
				// just snap to opponent ngl
				window = 6;
				window_timer = 0;
				x = uspecial_grabbed_player.x;
				y = uspecial_grabbed_player.y;
			} else if (!instance_exists(uspecial_grabbed_player) && !uspec_grabbed_operator && uspec_already_grabbed_wall == false){
				
				// print("help me")
				
				sound_play(asset_get("sfx_blow_heavy1"));
				
				window = 9;
				window_timer = 0;
				
				hsp = -2.5 * spr_dir;
				vsp = -12.5;
				
				uspec_already_grabbed_wall = true;
				
				if (uspec_times_grabbed_wall == 0){
					has_walljump = true; // give wall jump back (you're supposed to do uspec -> wj -> uspec)
				}
				
				uspec_times_grabbed_wall++;
				
			} else if (!instance_exists(uspecial_grabbed_player) && uspec_already_grabbed_wall == true){
				sound_play(asset_get("sfx_blow_weak2"));
				set_state(PS_PRATFALL);
				hsp = -1 * spr_dir;
				vsp = -10.2;
			}
		}
		
		
		if (uspec_is_curr_grabbing_wall){
			// print("climbing wall a");
		
			uspec_climb_wall_stupid_tick_var++;
			
			uspec_climb_wall_stupid_tick_var = clamp(uspec_climb_wall_stupid_tick_var, (7 - uspec_wall_grab_with_specific_hitbox_num), 5);
			
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23 + (uspec_climb_wall_stupid_tick_var));
			
			// print(23 + (uspec_climb_wall_stupid_tick_var - 1));
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || hsp == 0){
				if (uspec_already_grabbed_wall == false && !uspec_grabbed_operator){
				
					// print("b")
				
					sound_play(asset_get("sfx_blow_heavy1"));
					
					window = 9;
					window_timer = 0;
					
					hsp = -2.5 * spr_dir;
					vsp = -12.5;
					
					uspec_already_grabbed_wall = true;
					
					if (uspec_times_grabbed_wall == 0){
						has_walljump = true; // give wall jump back (you're supposed to do uspec -> wj -> uspec)
					}
					
					uspec_times_grabbed_wall++;
					
					// print("haboink");
				} else if (uspec_already_grabbed_wall == true && !uspec_grabbed_operator){
					// print("go into pratfall");
					sound_play(asset_get("sfx_blow_weak2"));
					set_state(PS_PRATFALL);
					hsp = -1 * spr_dir;
					vsp = -10.2;
				}	
			}
		}
	}
	
	if (window == 6){
	
		hsp = 0;
		vsp = 0;
		
		x = lerp(x, uspec_stored_grabbed_x, 0.7);
		y = lerp(y, uspec_stored_grabbed_y - 30, 0.7);
		
		if (instance_exists(uspecial_grabbed_player)){
			uspecial_grabbed_player.x = uspec_stored_grabbed_x;
			uspecial_grabbed_player.y = uspec_stored_grabbed_y;
			
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				// get damage value
				with (uspecial_grabbed_player){
					other.uspec_dmg_of_hit_player = get_player_damage(player);
				}
				
				// check percent of opponent, determines hitbox
				if (uspec_dmg_of_hit_player < 50/*>*/){
					// print("player should be hit up");
					set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
					set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 0);
				} else {
					// print("SPIKE THAT FRAUD");
					set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 0);
					set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
				}
				
				uspecial_grabbed_player = noone;
				
				move_cooldown[AT_USPECIAL] = 60;
			}
			
		}
		
		if (uspec_is_curr_grabbing_wall){
		
			// separate the conditions
			if (uspec_grabbed_operator){
			
			
				// go into prat
				if (uspec_alr_grabbed_opp == true){
					// print("bruh")
					
					// DO SOMETHING TO OPERATOR
					if (instance_exists(uspec_assigned_grabbed_operator)){
						uspec_assigned_grabbed_operator.launched_by_uspec = true;
					}
					
					sound_play(asset_get("sfx_blow_weak2"));
					set_state(PS_PRATFALL);
					hsp = 4.6 * spr_dir;
					vsp = -7.2;
				}
			
				if (uspec_alr_grabbed_opp == false){
					// DO SOMETHING TO OPERATOR
					if (instance_exists(uspec_assigned_grabbed_operator)){
						uspec_assigned_grabbed_operator.launched_by_uspec = true;
					}				
					
					sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.6, 1.35);
					
					uspec_alr_grabbed_opp = true;
					uspec_already_grabbed_wall = false;
					
					window = 7;
					window_timer = 0;
					
					hsp = 3.5 * spr_dir;
					vsp = -8;
				}
				
				
			} else if (uspec_grabbed_operator == false) {	// wall grab cond only
				if (uspec_already_grabbed_wall == false){
					sound_play(asset_get("sfx_blow_heavy1"));
					
					hsp = -2.5 * spr_dir;
					vsp = -12.5;
					
					uspec_already_grabbed_wall = true;
					
					if (uspec_times_grabbed_wall == 0){
						has_walljump = true; // give wall jump back (you're supposed to do uspec -> wj -> uspec)
					}
					
					uspec_times_grabbed_wall++;
					
					// print("boink");
					
					window = 9;
					window_timer = 0;
				} else {
					// print("nah")
					sound_play(asset_get("sfx_blow_weak2"));
					set_state(PS_PRATFALL);
					hsp = -1 * spr_dir;
					vsp = -10.2;
				}	
			}
		}
	}
}

// Taunt
if (attack == AT_TAUNT){
    //
	
	// click sounds
	if (window == 1 || window == 2 || window == 3 || window == 10){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("mfx_coin"), false, noone, 0.2, 1.2);
			sound_play(sfx_reallife_ti84_button_press, false, noone, 1, 1);
			
			spawn_base_dust( x - 24, y, "walk", 1, 0);
			spawn_base_dust( x + 24, y, "walk", -1, 0);
		}
	}
	
	// flip sound
	if (window == 5 || window == 11){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir, 0);
			sound_play(sfx_ssbu_rob_dashstart, false, noone, 1, 1.3);
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.6, 0.8);
		}
	}
	
	// land sound
	if (window == 6 || window == 13){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir, 0);
			sound_play(land_sound, false, noone, 1, 1);
			sound_play(landing_lag_sound, false, noone, 1, 1);
			sound_play(sfx_ssbu_rob_land, false, noone, 0.7, 1.2);
			// sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.4, 0.6);
			// sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.4, 1);
		}
	}
	
	// yeah
	if (window == 8){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir, 0);
			// sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.6, 1.4);
			sound_play(asset_get("sfx_clairen_hair"), false, noone, 1, 1);
		}
	}
	
	if (window == 10){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
			if (taunt_down){
				window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 7;
			}
		}
	}
	
	
	//Hud Offset
	if ((window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
	||
	window == 6 
	||
	(window == 11 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
	||
	window == 12
	){///>
	    hud_offset = 56;
	} //>
}

//--------------------------------------------

//
#define sd_card_sfx()

switch (sd_card_number){
	case 1:
		sound_play(sfx_ssbu_pacman_fruit_charge_1);
		break;
	case 2:
		sound_play(sfx_ssbu_pacman_fruit_charge_2);
		break;
	case 3:
		sound_play(sfx_ssbu_pacman_fruit_charge_3);
		break;
	case 4:
		sound_play(sfx_ssbu_pacman_fruit_charge_1, false, noone, 0.8, 0.8);
		sound_play(sfx_ssbu_megaman_dair, false, noone, 0.75, 1.35);
		break;
	case 5:
		sound_play(sfx_ssbu_pacman_fruit_charge_4, false, noone, 0.7, 1.2);
		sound_play(sfx_ssbu_megaman_uair, false, noone, 0.7, 1.35);
		break;
	case 6:
		sound_play(sfx_ssbu_pacman_fruit_charge_5);
		break;
	case 7:
		sound_play(sfx_ssbu_pacman_fruit_charge_6);
		break;
	case 8:
		sound_play(sfx_ssbu_pacman_fruit_charge_7);
		break;
	case 9:
		sound_play(sfx_ssbu_pacman_fruit_charge_8);
		sound_play(asset_get("sfx_coin_collect"), false, noone, 0.7, 1.5);
		break;
	case 0:
		sound_play(asset_get("sfx_ell_arc_taunt_collide"), false, noone, 1, 1.4);
		sound_play(sound_get("intentional_error"), false, noone, 0.7, 1.1);
		sound_play(sfx_ssbu_pacman_fruit_charge_8, false, noone, 0.4, 1.64);
		break;
	default:
		sound_play(sfx_ssbu_pacman_fruit_charge_5);
		break;
}

// -----------------------------------

#define charging_slow_speed()

if (hsp < -air_max_speed || hsp > air_max_speed){
	hsp *= 0.8;
}

if (vsp < -air_max_speed || vsp > air_max_speed){
	vsp *= 0.8;
}

// -----------------------------------

#define check_and_destroy_operator(input_operator)

if (input_operator == 1 && instance_exists(fspec_article_add)){
	fspec_article_add.state = 10;
	fspec_article_add.state_timer = 0;
}

if (input_operator == 2 && instance_exists(fspec_article_sub)){
	fspec_article_sub.state = 10;
	fspec_article_sub.state_timer = 0;
}

if (input_operator == 3 && instance_exists(fspec_article_mlt)){
	fspec_article_mlt.state = 10;
	fspec_article_mlt.state_timer = 0;
}

if (input_operator == 4 && instance_exists(fspec_article_dvd)){
	fspec_article_dvd.state = 10;
	fspec_article_dvd.state_timer = 0;
}

// -----------------------------------


// 

#define create_ti84_operator(input_operator, inp_x_spawn, inp_y_spawn, inp_attack)

if (input_operator == 1){
	fspec_article_add = instance_create(inp_x_spawn, inp_y_spawn, "obj_article1");
	fspec_article_add.curr_operator = 1;
	
	if (inp_attack == AT_DSPECIAL){
		fspec_article_add.spawned_by_down_b = true;
	}
}

if (input_operator == 2){
	fspec_article_sub = instance_create(inp_x_spawn, inp_y_spawn, "obj_article1");
	fspec_article_sub.curr_operator = 2;
	
	if (inp_attack == AT_DSPECIAL){
		fspec_article_sub.spawned_by_down_b = true;
	}
}

if (input_operator == 3){
	fspec_article_mlt = instance_create(inp_x_spawn, inp_y_spawn, "obj_article1");
	fspec_article_mlt.curr_operator = 3;
	
	if (inp_attack == AT_DSPECIAL){
		fspec_article_mlt.spawned_by_down_b = true;
	}
}

if (input_operator == 4){
	fspec_article_dvd = instance_create(inp_x_spawn, inp_y_spawn, "obj_article1");
	fspec_article_dvd.curr_operator = 4;
	
	if (inp_attack == AT_DSPECIAL){
		fspec_article_dvd.spawned_by_down_b = true;
	}
}


// -----------------------------------


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
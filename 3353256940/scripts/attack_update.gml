//attack_update

var window_end_time = get_window_value(attack, window, AG_WINDOW_LENGTH);

//dust
//good dust
switch(attack)
{
	case AT_JAB:
    	if (window == 1 && window_timer == window_end_time - 2)
    		spawn_base_dust(x+(36*spr_dir),y, "dash_start", -spr_dir);
    break;
    
    case AT_FTILT:
    	if (window == 1 && window_timer == window_end_time) spawn_base_dust(x+(7*spr_dir),y, "dash", -spr_dir);
    	else if (window == 2 && window_timer == 3) spawn_base_dust(x+(48*spr_dir),y, "dash_start", -spr_dir);
    break;
    
    case AT_UTILT:
    	if (window == 1 && window_timer == 5) spawn_base_dust(x-(24*spr_dir),y, "dash", spr_dir);
    	else if (window == 3 && window_timer == window_end_time) spawn_base_dust(x+(40*spr_dir),y, "dash_start", -spr_dir);
    break;
    
    case AT_FSTRONG:
    	if (window == 2 && window_timer == window_end_time)
    		spawn_base_dust(x+(12*spr_dir),y, "dash", -spr_dir);
    break;
    
    case AT_DATTACK:
    	if (window == 1 && window_timer == window_end_time) {
    		spawn_base_dust(x+(64*spr_dir),y, "n_wavedash", spr_dir);
    	}
    break;
    
    case AT_DSTRONG:
    	if (window == 2 && window_timer == window_end_time) {
    		spawn_base_dust(x+(36*spr_dir),y, "dash_start", -spr_dir);
    		spawn_base_dust(x-(36*spr_dir),y, "dash_start", spr_dir);
    	}
    break;
    
    case AT_USTRONG:
    	if (window == 2 && window_timer == window_end_time) {
    		spawn_base_dust(x+(12*spr_dir),y, "dash", -spr_dir);
    		if (window == 2 && window_timer == window_end_time) spawn_base_dust(x,y-64, "djump", spr_dir);
    	}
    break;
    
    case AT_DSPECIAL:
    	if (window == 4 && window_timer == 1 && !hitpause && !free) {
    		spawn_base_dust(x+(56*spr_dir),y, "dash", -spr_dir);
    		spawn_base_dust(x-(24*spr_dir),y, "dash", spr_dir);
    	}
    break;
    
    case AT_USPECIAL:
    	if (window == 1 && window_timer == window_end_time) spawn_base_dust(x,y-64, "djump", spr_dir);
    	else if (window == 2 && window_timer % 3 == 1) spawn_base_dust(x,y-64, "djump_small", spr_dir);
    break;
    
    case AT_FSPECIAL:
    	if (window == 2) {
    		if (window_timer % 7 == 1) {
    			spawn_hit_fx(x, y - random_func_2(5, 24, true) - 24, splsh);
    		}
    	}
}

switch(attack) {
	
	// Scrapbomb and Trashbag Bomb
	case AT_NSPECIAL:
		move_cooldown[AT_NSPECIAL] = 45;
	
		// Allow holding to charge
		if (window == 1) {
			bomb_angle = 45 //45 for normal, 90 for high, 0 for low
			nspec_charge = 0;
		}
		
		if (window == 2) {
			// Update aim
			if (!joy_pad_idle) {
				// Update aim
				if (up_down) bomb_angle = 90;
    			else if (down_down) bomb_angle = 0;
    			else bomb_angle = 45;
    			
    			// Change directions
    			if (spr_dir == 1 && left_down) spr_dir = -1;
    			else if (spr_dir == -1 && right_down) spr_dir = 1;
			}
		
			
			if (window_timer == window_end_time && special_down) {
				window_timer = 1;
			}
			
			// Handle charge
			nspec_charge++;
			if (nspec_charge % 14 == 1) {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.2 , 1 + (nspec_charge / 100))
				spawn_hit_fx(x-(28*spr_dir)-(random_func(get_gameplay_time(), 16, true)), y-8-(random_func(get_gameplay_time(), 16, true)), splsh);
			}
    		if (nspec_charge == nspec_charge_threshold) {
    			sound_play(asset_get("mfx_star"));
    			spawn_hit_fx(x-(32*spr_dir), y-8, splsh);
    		}
    		if (!special_down or nspec_charge >= nspec_charge_threshold + 10) {
    			if (bomb_angle == 45) window = 3;
    			else if (bomb_angle == 90) window = 4;
    			else window = 5;
    			window_timer = 1;
    		}
    	}
		
		if (window > 2 && window < 6) {
			if window_timer == window_end_time{
				window = 6;
				window_timer = 1;
			} else if window_timer == 1 {
				if (nspec_charge > nspec_charge_threshold) {
					sound_play(asset_get("sfx_ell_big_missile_fire"), false, noone, 0.5, 0.7);
				} else {
					sound_play(sound_get("shoot2"), false, noone, 0.5, 1);
				}
			}
		}
		
		//-- SHOOT NORMAL
		if (window == 3 && window_timer == window_end_time-1) {
			bomb_angle = 45;
			bomb_type = (nspec_charge >= nspec_charge_threshold);
			instance_create(x+(48*spr_dir), y-62, "obj_article2");
			spawn_hit_fx(x+(48*spr_dir), y-62, (nspec_charge >= nspec_charge_threshold) ? splatter : splsh);
		}
		
		//-- SHOOT HIGH
		if (window == 4 && window_timer == window_end_time-1) {
			bomb_angle = 90;
			bomb_type = (nspec_charge >= nspec_charge_threshold);
			instance_create(x+(32*spr_dir), y-80, "obj_article2");
			spawn_hit_fx(x+(32*spr_dir), y-80, (nspec_charge >= nspec_charge_threshold) ? splatter  : splsh);
		} 
		
		//-- SHOOT LOW
		if (window == 5 && window_timer == window_end_time-1) {
			bomb_angle = 0;
			bomb_type = (nspec_charge >= nspec_charge_threshold);
			instance_create(x+(56*spr_dir), y-32, "obj_article2");
			spawn_hit_fx(x+(56*spr_dir), y-32, (nspec_charge >= nspec_charge_threshold) ? splatter  : splsh);
		} 
		break;
	
	// Pipes
    case AT_DSPECIAL:
    	if (window == 1 && window_timer == 1) {
    		latest_pipe_angle = 90;
    		latest_pipe_dir = spr_dir;
    		if (!free) update_pipe_distance();
    		else pipe_distance = 56;
    		last_dist_check_x = free ? -1 : x;
    	} else if (window <= 2) {
    		if (free) last_dist_check_x = -1;
    		else if (abs(x - last_dist_check_x) >= 1) {
	    		update_pipe_distance();
	    		last_dist_check_x = x;
    		}
    	}
    	
    	if (window == 2 && !hitpause) {
    		if (window_timer == window_end_time) && special_down {
    			window_timer = 1;
    		} else if !special_down {
    			no_pipes_here = true;
    			var _x = x+pipe_distance*spr_dir;
    			var _y = y-2;
    			with (obj_article1) if ("is_twenny_pipe" in self && position_meeting(_x, _y, self)) {
    				other.no_pipes_here = false;
    			}
    			if (no_pipes_here) {
    				window = 3;
    				window_timer = 1;
    			} else { //-- "error" anim
    				sound_play(asset_get("sfx_swipe_weak2"));
    				sound_play(sound_get("error"), false, noone, 0.5, 1);
    				//
    				attack = AT_EXTRA_2;
    				hurtboxID.sprite_index = sprite_get("dspecial_error_hurt");
    				window = 0;
    				window_timer = 0;
    			}
    		}
    		
    		if (special_down && !joy_pad_idle) {
    			if (left_down && (latest_pipe_angle != 45 || latest_pipe_dir != -1)) {
    				latest_pipe_angle = 45;
    				latest_pipe_dir = -1;
    				sound_play(asset_get("mfx_option"), false, noone, 0.6,  1.2);
    			}
    			else if (right_down && (latest_pipe_angle != 45 || latest_pipe_dir != 1)) {
					latest_pipe_angle = 45;
    				latest_pipe_dir = 1;
					sound_play(asset_get("mfx_option"), false, noone, 0.6,  1.2);
				}
    			else if (!left_down && !right_down && latest_pipe_angle != 90) {
					latest_pipe_angle = 90;
					latest_pipe_dir = spr_dir;
					sound_play(asset_get("mfx_option"), false, noone, 0.6,  0.8);
    			}
    		}
    	}
    	
    	if (window == 4 && window_timer == 1 && !hitpause) {
    		if (!free) {
    			update_pipe_distance();
    			instance_create( x+(pipe_distance*spr_dir), y, "obj_article1" );
    			sound_play(asset_get("mfx_orby_talk_done"));
    			sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.6,  0.8);
    		} else { //-- "error" anim
    			sound_play(asset_get("sfx_swipe_weak2"));
    			sound_play(sound_get("error"), false, noone, 0.5, 1);
    			//
    			attack = AT_EXTRA_2;
    			hurtboxID.sprite_index = sprite_get("dspecial_error_hurt");
    			window = 0;
    			window_timer = 0;
    		}
    	}
    	break;
    
    // Error Shine
    case AT_EXTRA_2:
    	//errorshine could cancel into jump on hit (but it doesnt)
		//if (has_hit && !hitpause && !was_parried) {
		//	can_jump = true;
		//}
    break;
    
    // Pipe warp
    case AT_EXTRA_4:
    	if (window_timer < window_end_time) {
    		setting_visible = true;
    		visible = false;
    		can_move = false;
    		hsp = 0;
    		vsp = 0;
    	} else {
    		setting_visible = false;
    		visible = true;
    		hsp = stored_hsp;
    		vsp = stored_vsp;
    		spawn_hit_fx(x, y-10, HFX_GEN_SPIN);
    	}
    	break;
    
    // Spin
    case AT_FSPECIAL:
    	if (free) move_cooldown[AT_FSPECIAL] = 30;
    	switch window {
    		case 1:
    			if (window_timer == window_end_time) {
    				hsp = 5.5*spr_dir;
    				if (free) vsp = -3;
    				loops = 0;
    				spawn_base_dust(x+(10*spr_dir), y, free ? "djump_small" : "dattack");
    			} else {
    				hsp = 0;
    				vsp = 0;
    			}
    			break;
    		case 2:
    			if (!hitpause) {
	    			can_move = false;
	    			if (left_down) hsp -= 0.5;
	    			if (right_down) hsp += 0.5;
	    			hsp = clamp(abs(hsp), 3, 8) * spr_dir;
	    			
	    			if (window_timer % 5 == 0 && !free) {
	    				spawn_base_dust(x+(16*spr_dir), y, "dattack");
	    			}	
	    			
	    			if (window_timer == window_end_time) {
	    				loops++;
	    				if (special_down && loops < 2) {
	    					window_timer = 0;
	    					attack_end();
	    					sound_play(get_window_value(attack, 1, AG_WINDOW_SFX));
	    				}
	    			}
    			}
    			break;
    		case 3:
    			hsp = clamp(hsp, -6, 6);
    			if (window_timer == window_end_time) {
    				hsp = 1*spr_dir;
    				if (free) vsp = -4; else vsp = -3.5 
    				spawn_base_dust(x+(10*spr_dir), y, free ? "djump_small" : "jump");
    			}
    			break;
    		case 4:
    			hsp = clamp(hsp, -1, 1);
    			break;
    	}
    	break;
    
    // Launch
    case AT_USPECIAL:
    	can_fast_fall = false;
    	can_fastfall = false;
        if (window > 1) {
        	in_hstance = true;
        	has_long_endlag = true;
        }
        if (window == 3) {
        	if (window_timer > 3) {
        		can_shield = true;
        	}
        	vsp *= 0.94;
        	if (vsp >= 0 && (special_pressed || is_special_pressed(DIR_ANY)) && move_cooldown[AT_EXTRA_3] == 0) {
	        	attack_end();
	        	attack = AT_EXTRA_3;
	        	window = 1;
	        	window_timer = 0;
	        }
        }
    	break;
    
    // Claw
    case AT_EXTRA_3:
    	move_cooldown[AT_EXTRA_3] = 9999;
    	if (window > 1 && (grabbed_player_obj != noone || grabbed_bomb_obj != noone)) pipewarp_cd = 2; // block pipe warps
    	can_fast_fall = false;
    	switch window {
    		case 1:
    			if (window_timer == 1) set_attack_value(attack, AG_CATEGORY, 1);
    			if (window_timer == window_end_time) {
	    			claw_rel_y = 0;
	    			claw_abs_y = y+vsp;
	    			claw_vsp = 12;
	    			grabbed_player_obj = noone;
	    			grabbed_bomb_obj = noone;
	    			
	    			claw_hitbox = create_hitbox(AT_EXTRA_3, 1, x, y);
    			}
    			break;
    		case 2:
    			vsp = min(vsp, 4);
    			claw_rel_y += claw_vsp;
    			claw_abs_y = y+claw_rel_y+vsp;
    			claw_vsp -= 0.8 ;
    			
    			if (claw_rel_y <= 0) {
    				window = 10;
    				window_timer = 0;
    				if (instance_exists(claw_hitbox)) claw_hitbox.destroyed_next = true;
    			}
    			
    			else if (position_meeting(claw_x,claw_abs_y, asset_get("par_block")) || position_meeting(claw_x, claw_abs_y, asset_get("par_jumpthrough"))) {
    				window = 3;
    				window_timer = 0;
    				if (instance_exists(claw_hitbox)) claw_hitbox.destroyed_next = true;
    				sound_play(asset_get("sfx_metal_hit_strong"));
    			}
    			
    			else {
    				if (instance_exists(claw_hitbox)) {
	    				claw_hitbox.length++;
	    				claw_hitbox.x = claw_x;
	    				claw_hitbox.y = claw_abs_y;
	    				claw_hitbox.hsp = hsp;
	    				claw_hitbox.vsp = vsp;
	    				if (claw_vsp <= 0) claw_hitbox.destroyed_next = true;
    				}
    				if (window_timer == window_end_time) { // loop, but maintain the last anim frame
	    				window_timer -= 3;
	    			}
    			}
    			
    			// In addition to the above checks, check for bag bombs
				with (obj_article2) if ("is_twenny_bomb" in self && state == 11 && position_meeting(other.claw_x, other.claw_abs_y, self)) {
					bomb_fuse = 999;
					fuse_active = false;
					with (other) {
						grabbed_bomb_obj = other;
						window = 3;
    					window_timer = 0;
    					if (instance_exists(claw_hitbox)) claw_hitbox.destroyed_next = true;
					}
				}
    			
    			break;
    		case 3:
    			can_move = false;
    			fall_through = instance_exists(grabbed_player_obj);
    			hsp = 0;
    			if (!hitpause) vsp = 15;
    			
    			if (instance_exists(grabbed_player_obj)) {
    				grabbed_player_obj.hitstop++;
    				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x, 0.5);
    				
    				var target = grabbed_player_obj.y - grabbed_player_obj.char_height + min(28, 0.25*grabbed_player_obj.char_height);
    				if (y+vsp >= target) {
    					window = 4;
    					window_timer = 0;
    					set_attack_value(attack, AG_CATEGORY, 2);
    				}
    			}
    			
    			if (instance_exists(grabbed_bomb_obj)) {
    				grabbed_bomb_obj.fuse_active = false;
    				grabbed_bomb_obj.x = lerp(grabbed_bomb_obj.x, x, 0.5);
    				
    				if (!instance_exists(grabbed_player_obj) && y+vsp >= grabbed_bomb_obj.y+28) {
    					window = 4;
    					window_timer = 0;
    					set_attack_value(attack, AG_CATEGORY, 2);
    				}
    			}
    			
    			if (window_timer == window_end_time) { // loop, but maintain the last anim frame
    				window_timer -= 3;
    			}
    			break;
    		case 4:
    			if (window_timer == window_end_time && !instance_exists(grabbed_player_obj)) {
    				window = 7;
    				window_timer = 0;
    			}
    		case 5:
    		case 6:
    			hsp = 0;
    			vsp = 0;
    			if (instance_exists(grabbed_bomb_obj) && grabbed_bomb_obj.state == 11) {
    				grabbed_bomb_obj.fuse_active = false;
    				grabbed_bomb_obj.x = lerp(grabbed_bomb_obj.x, x, 0.5);
    				y = grabbed_bomb_obj.y+28;
    			}
    			if (instance_exists(grabbed_player_obj)) {
    				grabbed_player_obj.hitstop++;
    				grabbed_player_obj.x = lerp(grabbed_player_obj.x, x, 0.5);
    				y = grabbed_player_obj.y - grabbed_player_obj.char_height + min(38, grabbed_player_obj.char_height);
    			}
    			break;
    		case 7:
    			if (window_timer == 1) {
    				if (!hitstun) vsp = -8;
    			}
    			break;
    	}
    	claw_x = x+(2*spr_dir)+hsp;
    	break;
    
    case AT_FSTRONG:
    	if (window == 2) {
    		if (window_timer == 1) {
    			sound_play(asset_get("sfx_swipe_medium1"), false, noone, 1,  1.2);
    		} else if (window_timer == window_end_time) {
    			if (is_voiced) {
    				var fstrong_voiceline = "";
    				var rand = (random_func(get_gameplay_time(), 3, true))
    				
    				if (rand == 0) fstrong_voiceline = "fstrong_voice2"
    				else if (rand == 1) fstrong_voiceline = "fstrong_voice3"
    				else if (rand == 2) fstrong_voiceline = "fstrong_voice4"
    			}

    			sound_play(asset_get("sfx_pom_blast3"), false, noone, 0.5,  0.9);
    			sound_play(asset_get("sfx_pom_fstrong_hit"), false, noone, 0.2,  1);
    			//print_debug(fstrong_voiceline)
    			sound_play(sound_get(fstrong_voiceline), false, noone, 0.4,  1.1 - (random_func(get_gameplay_time(), 2, true) / 10)  );
    		}
    	}
    	break;
    
    case AT_USTRONG:
    	if (2 < window && window < 6) {
    		in_hstance = true;
    		can_fast_fall = false;
    	} else if (window <= 2) {
    		if free {
    			state = PS_IDLE_AIR;
    		}
    	}
    	
    	switch window {
    		case 1:
    			has_long_endlag = true;
    			break;
    		
    		case 3:
	    		if (window_timer == 1) {
	    			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.2,  1.1);
	    			var ustrong_corpse = spawn_hit_fx( x, y+10, ustr_corpse);
	    		}
	    		else if (window_timer == 12) sound_play(sound_get("metal_clatter"), false, noone, 0.4, 0.5);
	    		else if (window_timer == window_end_time) sound_play(asset_get("sfx_absa_cloud_crackle"), false, noone, 0.4, 1);
    			break;
    			
    		case 4:
    			sound_stop(asset_get("sfx_ori_stomp_spin"));
	    		if (window_timer == window_end_time) {
	    			sound_play(sound_get("electricshock"), false, noone, 0.3, 1);
	    			sound_play(sound_get("thunderwave"), false, noone, 0.7, 1);
	    		} 
	    		break;
    	}
    	break;
    
    case AT_JAB:
    	if (window == 4 && window_timer == window_end_time) sound_play(asset_get("sfx_ell_utilt_cannon"), false, noone, 0.7, 1.1);
    	break;
    
    case AT_DATTACK:
    	if (window == 1 && window_timer == 1) sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.7, 1.6);
    	break;
    
    case AT_FTILT:
    	if (window == 1 && window_timer == window_end_time) {
    		sound_play(asset_get("sfx_ell_drill_loop"), false, noone, 0.1, 1);
    		sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1, 1);
    	}
		break;
    
    case AT_FAIR:
    	if (window > 1 && window < 5 && window_timer == window_end_time) sound_play(sound_get("shoot2"), false, noone, 0.5, 1);
		break;
    
    
    case AT_BAIR:
    	// Slightly hacky fix for strong charge
    	if (window <= 2 && (right_stick_down || left_stick_down || up_stick_down || down_stick_down)) attack_down = true;
    	
    	fall_through = 1
    	
    	if (window == 2 && window_timer == 1) sound_play(asset_get("sfx_absa_current_pop"), false, noone, 0.5, 1);
    	else if (window == 3 && window_timer == window_end_time) sound_play(sound_get("wildcharge"), false, noone, 0.5, 1);
    	else if (window == 4) sound_stop(asset_get("sfx_absa_current_pop"));
    	break;
    
    case AT_DAIR:
    	can_fast_fall = true;
    	if (window == 1 && window_timer == window_end_time) sound_play(asset_get("sfx_ell_utilt_cannon"), false, noone, 0.7, 1.1);
		else if (!hitpause && window == 2 && window_timer == 1 && dair_used == false && !fast_falling) {
    		vsp = clamp(vsp, -3, -6);
    		dair_used = true;
    	}
		break;
    
    case AT_UAIR:
    	if (window == 1 && window_timer == window_end_time) {
    		sound_play(sound_get("steam_gadget"), false, noone, 0.4, 0.9);
	        sound_play(sound_get("uair_shine"), false, noone, 0.25, 0.95);
    		hud_offset = 50;
    	}
    	else if (window > 1) hud_offset = 100;
		break;
	
	case AT_EXTRA_1:
		if (has_long_endlag) {
			set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 24);
		} else {
			reset_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH);
			reset_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH);
		}
		can_move = false;
		if (in_hstance) in_hstance = false;
		
		if (window == 1) {
			if (window_timer == window_end_time) {
				sound_play(asset_get("sfx_forsburn_cape_swipe"), false, 0, 0.4, 1.2);
			}
		} else if (window == 2) {
			if (window_timer % 6 == 0) {
				sound_play(sound_get("metal_clatter"), false, 0, 0.4, (random_func(3, 5, true) + 9) * 0.1);
			}
			if (window_timer == 6) {
				sound_play(asset_get("sfx_waveland_mol"), false, 0, 0.8, 1.2);
				sound_play(asset_get("sfx_ell_cooldown"), false, 0, 0.4, 1.5);
			}
		}
		break;
		
	case AT_TAUNT:
    	if (window == 1 && window_timer == window_end_time) {
    		if (!is_deadalt) {
    			sound_play( asset_get("mfx_star"), false, noone, 0.4, 1);
    			sound_play( sound_get("heart"), false, noone, 0.3, 1);
    			if is_voiced sound_play( sound_get("twenny_taunt"), false, noone, 0.5, 1);
    		} else {
    			sound_play( asset_get("sfx_swipe_weak1"), false, noone, 0.4, 0.4);
    			sound_play( sound_get("heart"), false, noone, 0.7, 0.5);
    		}
    	}
	break;
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//iasa_script (insantly as soon as, aka switch back into full control/idle) without having to check for !was_parried
#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

// window_advance_to
// input the attack index, like AT_JAB, then the window you want to switch to happen from, then the window you want to switch to
// continuous is a boolean (true or false) that makes it automatically switch windows after going through the current window's frames
// example: window_advance_to(AT_TAUNT, 1, 2, true)
#define window_advance_to(attackindex, currentwindow, newwindow, continuous)
{
    if window == currentwindow
    {
	    if continuous
	    {
	        if window_timer >= get_window_value(attackindex, currentwindow,AG_WINDOW_LENGTH)
	        {
	            window = newwindow;
	            window_timer = 0;
	        }
	    }
	    else if !continuous
	    {
	        window = newwindow;
	        window_timer = 0;
	    }
    }
	
}

// makes the user flash yellow like a strong
// example: yellow_flash_cycle(8);
#define yellow_flash_cycle(cyclenumber)
{
    strong_flashing = (floor(get_gameplay_time()/cyclenumber) % 2) == 0;
}

// makes the user glow depending on the timer set. the larger the number the brighter and slower it flashes
// example: white_flash_cycle(10);
#define white_flash_cycle(timer)
{
	if white_flash_timer <= 1
	{
		white_flash_timer = timer;
	}
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
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
return newdust;


#define update_pipe_distance
pipe_distance = get_ground_distance(56, 0, 6)-16;

// Gets the furthest-forward position with ground to place an object on.
// Precision determines the depth of the binary search; log2(x_maximum-x_minimum) is recommended.
#define get_ground_distance(x_maximum, x_minimum, precision)

// First, check if the farthest position is valid
if ( position_meeting(x+(x_maximum*spr_dir), y+1, asset_get("par_block"))
  || position_meeting(x+(x_maximum*spr_dir), y+1, asset_get("par_jumpthrough"))
) {
	//print_debug("near");
	return x_maximum;
}

// Then, check if the closest position needs to be used
else if ( !line_meeting(x+(x_maximum*spr_dir), y+1, x+(x_minimum*spr_dir), y+1, asset_get("par_block"))
  && !line_meeting(x+(x_maximum*spr_dir), y+1, x+(x_minimum*spr_dir), y+1, asset_get("par_jumpthrough"))
) {
	//print_debug("far");
	return x_minimum;
}

// If not, binary search for valid position
else {
	x_offset = (x_minimum + x_maximum) / 2;
	for (var i = 0; i < 8; i++) {
		var solid_collide = line_meeting(x+(x_maximum*spr_dir), y+1, x+(x_offset*spr_dir), y+1, asset_get("par_block"));
		var plat_collide = line_meeting(x+(x_maximum*spr_dir), y+1, x+(x_offset*spr_dir), y+1, asset_get("par_jumpthrough"));
		if (solid_collide || plat_collide) x_minimum = x_offset;
		else x_maximum = x_offset;
		x_offset = (x_minimum + x_maximum) / 2;
	}
	return round(x_offset);
}

#define line_meeting(x1, y1, x2, y2, obj)
return (noone != collision_line(x1, y1, x2, y2, obj, false, true));
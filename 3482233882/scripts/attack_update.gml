// B Reverse for the specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
// window length of the current window of the attack
var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

attempt_behemoth_explosion();

prev_attack = attack;

// specific attack behaviour
switch(attack) {
	//#region intro 
	case 2:
		grabbed_invisible = 0;
		if window == 1 {
			hud_offset = 900;
			if window_timer == 40 {
				spawn_hit_fx(x, y, intro_pod)
			}
			draw_y = -30 //during window 1, pod spawns (after a short time), then opens. window 2 starts as soon as cm jumps out
			draw_x = -40 * spr_dir
			if window_timer == 90 {
				spawn_hit_fx(x, y, pod_idle)
				if get_player_color(player) == 7 {
					sound_play(sound_get("hell"))
				}
			}
		}
		if window == 2 {
			hud_offset = 50
			if window_timer < 24 { 
				draw_y = window_timer * (window_timer-24) / 4
				draw_x = -40*spr_dir*(1 - window_timer/25)
			} else if window_timer == 25{
				draw_y = 0
				draw_x = 0
				sound_play(asset_get("sfx_land"))
				spawn_base_dust(x, y, "land", spr_dir)
			}
			
		}
	//#region Standard normals
    
    case AT_UTILT:
    	hud_offset = lerp(hud_offset, 50, 0.5);
        if (window == 1 && window_timer == 1) {
        	utilt_do_explosion = false;
        	utilt_advance_frame = false;
        	set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
        }
        else if (window == 2 && hitpause && hitstop < 3) utilt_advance_frame = true;
        if (utilt_do_explosion && !hitpause) {
        	destroy_hitboxes();
        	create_hitbox(AT_UTILT, 3, x, y)
        	set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
        	window = 4;
        	window_timer = 0;
        	utilt_do_explosion = false;
        }
        break;
        
    case AT_DATTACK:
    	if (window == 1 && window_timer == 1) {
        	hsp += spr_dir * (move_speed * 0.75 + item_grid[6][4] * 1.5);
        }
        else if (window == 1 && window_timer == window_length-3) {
            sound_play(s_roll)
        }
        else if (window == 3) {
        	can_jump = (window_timer > 4 && window_timer < 10 && has_hit);
        	if (window_timer == (has_hit ? 10 : 15)) {
	            sound_play(asset_get("sfx_land"))
	            spawn_base_dust(x, y, "land", spr_dir)
        	}
        }
        else if (window == 4 && !was_parried) {
        	iasa_script();
        }
        break;
        
    case AT_NAIR:
        //a
        break;
        
    case AT_FAIR:
    	if (window == 1 && window_timer == 2) {
    		fair_sfx_instance = sound_play(s_reload);
    	}
        else if (window == 2) {
        	var holding = (attack_down || left_stick_down || right_stick_down);
        	if (holding) strong_charge += 1;	// Note that damage growth from this is increased - see hit_player.gml
			if (!holding || window_timer == 29) {
				sound_stop(fair_sfx_instance);
				fair_sfx_instance = sound_play(s_reload);
				window = 3 
				window_timer = 0;
			}
			else if (window_timer % 10 < 5) {
				strong_flashing = true;
			}
		}
		else if (window == 3 && window_timer == 5) {
			if (vsp > -2) vsp = -2;
			if (hsp*spr_dir <= -2) hsp -= 2*(move_speed/2)*spr_dir;
			else hsp = -5*spr_dir;
			sound_play(s_shotty, 0, noone, 3, .95)
			sound_stop(fair_sfx_instance);
			fair_sfx_instance = noone;
		}
		else if (window > 3 && !hitpause) {
			var threshold = (window == 4) ? 5 : max(5-window_timer/5, 0);
			if (abs(hsp) < threshold) {
				hsp = -threshold * spr_dir;
			}
		}
        break;
    
    case AT_FSTRONG: 
        if (window == 2 && window_timer == window_length-1) {
            sound_stop(s_reload)
            sound_play(s_shotty, 0, noone, 3, .95)
        }
        break;
    
    // Tricorn
    case AT_FSTRONG_2:
	    if window == 1 && window_timer == 5 {
	    	sound_play(sound_get("cm_tricorn_charge"), 0, noone, .3, 1.05)
	    }
        if (window == 2 && window_timer == window_length-1) {
            sound_stop(s_reload)
            sound_stop(sound_get("cm_tricorn_charge"))
            sound_play(s_tricorn, 0, noone, 1.5)
            do_tricorn_remove = 1;
        }
        break;
    
    //#endregion
    
    
    //#region Crit normals
    case AT_DTILT:
        if (window == 1 && window_timer == window_length - 1) {
            sound_play(s_dag_swing)
        }
        if (do_ignite_hbox && !hitpause) {
        	create_hitbox(AT_DTILT, 4, x, y); // melee hitbox, position doesn't matter
        	do_ignite_hbox = false;
        }
        //mods bring out the
        down_down = true
        break;
    case AT_USTRONG:
    	hud_offset = lerp(hud_offset, 90, 0.5);
    	if (window == 2 && window_timer == window_length - 1) {
            sound_play(s_dag_swing)
        }
        if (do_ignite_hbox && !hitpause) {
        	create_hitbox(AT_USTRONG, 4, x, y); // melee hitbox, position doesn't matter
        	do_ignite_hbox = false;
        }
    	break;
    case AT_USTRONG_2:
    	hud_offset = lerp(hud_offset, 102, 0.5);
    	if (window == 1 && window_timer == 5) {
    		sound_play(asset_get("sfx_absa_concentrate"))
    		uke_looped = (item_grid[20][4] == 1); // deny for only 1
    	}
        if ((2 <= window && window <= 4) || (window == 5 && !uke_looped)) {
        	if (window_timer == 3) sound_play(asset_get("sfx_absa_new_whip1"), 0, noone, .3, 1.05)
        }
        if (window == 5 && window_timer == window_length - 1 && !uke_looped) {
        	var uke = item_grid[20][4];
        	if (uke == 2) window = 4;
        	else if (uke >= 3) window = 3;
        	uke_looped = true;
        	attack_end();
        }
        if (window == 5 && window_timer == 3) {
            //sound_stop(asset_get("sfx_absa_cloud_crackle"))
            sound_play(asset_get("sfx_absa_new_whip2"), 0, noone, .8, 1)
            sound_play(asset_get("sfx_absa_uair"), 0, noone, .8, 1)
            sound_play(sound_get("theunmatchedpowerofgod"), 0, noone, .8)
        }
        if (do_ignite_hbox && !hitpause) {
        	create_hitbox(AT_USTRONG_2, 9, x, y); // melee hitbox, position doesn't matter
        	do_ignite_hbox = false;
        }
        break;
    case AT_UAIR:
    	hud_offset = lerp(hud_offset, 80, 0.5);
    	if window == 1 && window_timer == window_length - 1 {
    		sound_play(sound_get("slash2"), 0, noone, 1)
    	}
    	if (do_ignite_hbox && !hitpause) {
        	create_hitbox(AT_UAIR, 4, x, y); // melee hitbox, position doesn't matter
        	do_ignite_hbox = false;
        }
    	break;
    case AT_DAIR:
    	if window == 1 && window_timer == window_length - 1 {
    		sound_play(sound_get("slash3"))
    	}
    	if (do_ignite_hbox && !hitpause) {
        	create_hitbox(AT_DAIR, 4, x, y); // melee hitbox, position doesn't matter
        	do_ignite_hbox = false;
        }
        break;
    //#endregion
    
    
    //#region Attack Speed scaling attacks
    
    //#region Jab
    case AT_JAB:
        // num_loops and hitstun mults are reset in set_attack
    	if (window == 1 && window_timer == 1) {
    		attack_end();
			clear_button_buffer(PC_ATTACK_PRESSED);
			num_loops--;
			if (num_loops == 0) {
				set_window_value(attack, 3, AG_WINDOW_GOTO, 7);
				set_window_value(attack, 7, AG_WINDOW_ANIM_FRAME_START, 3);
				set_window_value(attack, 8, AG_WINDOW_ANIM_FRAME_START, 4);
				set_window_value(attack, 9, AG_WINDOW_ANIM_FRAME_START, 5);
			}
			else set_window_value(attack, 3, AG_WINDOW_GOTO, 0);
		}
		
		else if (window == 4 && window_timer == 1) {
			clear_button_buffer(PC_ATTACK_PRESSED);
			num_loops--;
			if (num_loops == 0) {
				set_window_value(attack, 6, AG_WINDOW_GOTO, 0);
				set_window_value(attack, 7, AG_WINDOW_ANIM_FRAME_START, 0);
				set_window_value(attack, 8, AG_WINDOW_ANIM_FRAME_START, 1);
				set_window_value(attack, 9, AG_WINDOW_ANIM_FRAME_START, 2);
			}
			else {
				set_window_value(attack, 6, AG_WINDOW_GOTO, 1);
				set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, 0.7);
    			set_hitbox_value(attack, 2, HG_HITSTUN_MULTIPLIER, 0.7);
    			set_hitbox_value(attack, 3, HG_HITSTUN_MULTIPLIER, 0.7);
    			set_hitbox_value(attack, 4, HG_HITSTUN_MULTIPLIER, 0.7);
    			set_hitbox_value(attack, 1, HG_FORCE_FLINCH, 0);
				set_hitbox_value(attack, 2, HG_FORCE_FLINCH, 0);
			}
		}
		
		else if (shield_pressed && get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1 && get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) <= window_timer) {
			// If buffering parry: don't do this
			if (get_window_value(attack, window, AG_WINDOW_LENGTH) - 5 <= window_timer) break;
			// Otherwise: go into the final input
			if (window == 3) {
				set_window_value(attack, 7, AG_WINDOW_ANIM_FRAME_START, 3);
				set_window_value(attack, 8, AG_WINDOW_ANIM_FRAME_START, 4);
				set_window_value(attack, 9, AG_WINDOW_ANIM_FRAME_START, 5);
			} else {
				set_window_value(attack, 7, AG_WINDOW_ANIM_FRAME_START, 0);
				set_window_value(attack, 8, AG_WINDOW_ANIM_FRAME_START, 1);
				set_window_value(attack, 9, AG_WINDOW_ANIM_FRAME_START, 2);
			}
			destroy_hitboxes();
			window = 7;
			window_timer = 0;
		}
		
        break;
    //#endregion
    
    //#region Back Air
    case AT_BAIR:
    	if window != 1 && window != 5{
    		if !fast_falling vsp = clamp(vsp, -10000, 4)
    	}
        if (!hitpause && window == 1 && window_timer == 1) {
    		num_loops = attack_speed - 1;
    		loops_done = 0;
    		loop_cancelled = false;
    		set_attack_value(attack, AG_CATEGORY, 1);
    		set_attack_value(attack, AG_NUM_WINDOWS, 5);
    		
    		// yep.
    		clear_button_buffer(PC_ATTACK_PRESSED);
    		clear_button_buffer(PC_STRONG_PRESSED);
    		clear_button_buffer(PC_LEFT_STRONG_PRESSED);
    		clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
    		clear_button_buffer(PC_UP_STRONG_PRESSED);
    		clear_button_buffer(PC_DOWN_STRONG_PRESSED);
    		clear_button_buffer(PC_LEFT_STICK_PRESSED);
    		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
    		clear_button_buffer(PC_UP_STICK_PRESSED);
    		clear_button_buffer(PC_DOWN_STICK_PRESSED);
    	}
    	
    	// Loop handling
    	var aerial_pressed = attack_pressed || is_attack_pressed(DIR_ANY) || left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed || is_strong_pressed(DIR_ANY); // thank you dan
    	if (window >= 2 && (aerial_pressed || shield_pressed)) loop_cancelled = true;
    	if (!hitpause && window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && 0 >= num_loops) {
    		window = 3;
    		window_timer = 999; // jump to window 4
    		set_attack_value(attack, AG_CATEGORY, 1);
    	}
    	if (!hitpause && window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		num_loops--;
    		if (num_loops > 0 && !loop_cancelled) {
    			attack_end();
	    		window = 2;
	    		window_timer = 999; // jump to window 3
    		} else {
    			set_attack_value(attack, AG_CATEGORY, 1);
    		}
    		sound_play(get_window_value(attack, window, AG_WINDOW_SFX)); // differs based on if a loop occurred
    	}
    	
    	// Landing hitbox handling
    	if (window == 2 && window_timer == 1) set_attack_value(attack, AG_CATEGORY, 2);
        
        if (!hitpause && window < 5 && !free && get_attack_value(attack, AG_CATEGORY) == 2) {
        	set_attack_value(attack, AG_NUM_WINDOWS, 7);
        	destroy_hitboxes();
        	window = 5;
    		window_timer = 999; // jump to window 6
    		sound_play(s_gunl);
        }
        
        break;
    //#endregion
    
    //#region Down Strong
    case AT_DSTRONG:
    	if (window == 1 && window_timer == 1) {
    		num_loops = attack_speed - 1;
    		loops_done = 0;
    		loop_cancelled = false;
    	}
    	var strong_pressed = left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed || is_strong_pressed(DIR_ANY); // thank you dan
    	if (window >= 2 && (strong_pressed || shield_pressed)) loop_cancelled = true;
    	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && 0 >= num_loops) {
    		window = 4;
    		window_timer = 999; // jump to window 5
    	}
    	if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		num_loops--;
    		if (num_loops > 0 && !loop_cancelled) {
    			attack_end();
	    		window = 3;
	    		window_timer = 999; // jump to window 4
    		}
    		sound_play(get_window_value(attack, window, AG_WINDOW_SFX)); // differs based on if a loop occurred
    	}
    	
    	if window == 2 && window_timer == 5 {
            spawn_base_dust(x, y, "land", spr_dir)
        }
        if (window == 3 || window == 4 || window == 5) && window_timer == 5 {
            spawn_base_dust(x + 30 * spr_dir, y, "dash", -spr_dir)
            spawn_base_dust(x - 30 * spr_dir, y, "dash", spr_dir)
        }
    	break;
    //#endregion
    
    //#region Neutral Special
    case AT_NSPECIAL:
    	fast_falling = false;
        can_fast_fall = false;
    	nspec_vis_timer++;
        move_cooldown[AT_NSPECIAL] = 36;

        if window != 1 && window != 5{ hud_offset = 30 }
        switch window {
            case 1:
            	if state_timer % 4 == 0 {
            		sound_play(sound_get("cm_altsel"), false, noone, 2, 0.6 + (state_timer/100));
            	}
            	if (window_timer == 1) {
            		sound_play(asset_get("sfx_forsburn_cape_swipe"), 0, noone, 1, 1);
            		nspec_charge_threshold = 20 * power(.95, attack_speed-1);
            		nspec_charge_frames = 0;
            		nspec_charge_level = (turbine_stored_charge >= 60) ? 3 : 0;
            		nspec_vis_timer = nspec_charge_threshold + 1;
            		nspec_vis_level = nspec_charge_level;
            		nspec_starting = nspec_charge_level >= 1;
            		do_turbine_recolor = (turbine_stored_charge >= 60);
            		if (nspec_charge_level == 3) turbine_stored_charge = 0;
            		num_loops = (item_grid[31][4] >= 1) ? attack_speed-1 : 0;
            		for (var i = 1; i <= 12; i++) set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW, 10);
            	}
                hsp *= 0.95;
                vsp *= 0.95;
                if (window_timer == window_length) {
                	if (nspec_starting && nspec_charge_level >= 1) {
                		nspec_vis_timer = 0;
	            		nspec_vis_level++;
	            		spawn_hit_fx(x+(54*spr_dir), y-54, HFX_CLA_DSMASH_BREAK);
	            		nspec_starting = false;
                	}
                	if (special_down && nspec_charge_level < 3) {
	            		window_timer--;
	            		nspec_charge_frames++;
	            		if (nspec_charge_frames >= nspec_charge_threshold) {
	            			nspec_charge_frames = 0;
	            			nspec_charge_level++;
	            			nspec_vis_timer = 0;
	            			nspec_vis_level++;
	            			sound_play(sound_get("nsp1"), false, noone, 1, 1 + (nspec_charge_level/8));
	            			spawn_hit_fx(x+(54*spr_dir), y-54, HFX_CLA_DSMASH_BREAK);
	            		}
                	}
                	else if (special_down && nspec_charge_level == 3 && nspec_charge_frames < 20) {
                		window_timer--;
	            		nspec_charge_frames++;
                	}
            		else {
            			switch nspec_charge_level {
	        				case 0:
	        					var nspec_proj_name = "nspecproj_raw";
	        					set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
	        					break;
	        				case 1:
	        					var nspec_proj_name = "nspecproj_small";
	        					set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
	        					break;
	        				case 2:
	        					var nspec_proj_name = "nspecproj_med";
	        					set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 4);
	        					set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 4);
	        					break;
	        				case 3:
	        					var nspec_proj_name = "nspecproj_big";
	        					set_hitbox_value(AT_NSPECIAL,  9, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 3);
	        					set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 4);
	        					set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW, 4);
	        					break;
            			}
            			if (do_turbine_recolor) nspec_proj_name = nspec_proj_name + "_turbine";
            			else if (item_grid[31][4] > 0 && attack_speed > 1) nspec_proj_name = nspec_proj_name + "_scepter";
            			nspec_proj_index = sprite_get(nspec_proj_name);
            			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, nspec_charge_endlag[nspec_charge_level]);
        			}
		    	}
                break;
            case 2: //postcharge frames
            	nspec_charge_level = 0;
				if window_timer == 1 {
					if (do_turbine_recolor) sound_play(sound_get("turbinefire"), 0, noone, 1.8, .9);
				}            	
            	if (window_timer == window_length && !hitpause) {
	            	if (0 >= num_loops) {
	            		window = 3;
		    			window_timer = 999; // jump to window 4
		    			sound_play(sound_get("plasma"))
		    			sound_play(s_gunh);
		    	
	            	}
		    		else sound_play(s_gunf);
            	}
            	break;
            case 3: //multihit windows
            	if (window_timer == window_length && !hitpause) {
            		num_loops--;
                	if (0 < num_loops) {
                		window = 2;
		    			window_timer = 999; // jump to window 3
		    			sound_play(s_gunf);
		    			attack_end();
                	}
		    		else {
		    			sound_play(s_gunh);
		    			if (do_turbine_recolor) sound_play(sound_get("turbinefire"));
		    		}
		    	}
		    	hsp = 0;
                vsp = 0;
                can_fast_fall = 0
                can_move = 0
                if (window_timer == 1 && !hitpause) spawn_base_dust(x, y, "dash", spr_dir)
		    	break;
            case 4:
                hsp = 0;
                vsp = 0;
                can_fast_fall = 0
                can_move = 0
                if (window_timer == 1 && !hitpause) spawn_base_dust(x, y, "dash_start", spr_dir)
                break;
            case 5: //final window stuff
                can_fast_fall = 0
                can_move = 0
                if window_timer < 8 {
                    hsp = 0
                    vsp = 0
                    hud_offset = 30
                }
                break;
        }
        //a
        break;
    //#endregion
        
    //#endregion
    
	
	//#region Forward Special
	
    case AT_FSPECIAL:
    	if (window == 1 && window_timer == 1) {
    		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, true);
    		sound_play(sound_get("nsp1"), 0, noone, .6, 1.15)
    	}
        if (free) {
            if vsp > 5 vsp = 5 
            if hsp > (7*spr_dir) hsp = (7*spr_dir)
        }
        if (window != 1) {
            do_wind_streaks = true;
            if (!was_parried && !(window == 2 && window_timer < 4)) {
	        	can_jump = true
	            can_attack = true
	            can_strong = true
	            can_ustrong = true
	        }
	        fspec_clamp_hsp = free;
        }
        
        move_cooldown[AT_FSPECIAL] = 50;
        if (was_parried) set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, false);
        break;
    case AT_FSPECIAL_AIR:
		 if (window == 1 && window_timer == 1) {
    		sound_play(sound_get("nsp1"), 0, noone, .6, 1.15)
    	}
    	if (window == 1) {
    		vsp = 0;
    		hsp *= 0.9;
    	}
        else if (!was_parried && !(window == 2 && window_timer < 4)) {
        	can_jump = true
            can_attack = true
            can_strong = true
            can_ustrong = true
        }
        
        if (window == 2) {
        	if (window_timer == 1 && !hitpause) {
        		fspec_air_uses--;
        		fspec_clamp_hsp = true;
        	}
        	hsp -= 0.15 * spr_dir;
        	vsp += 0.075;
        } else {
        	if (hsp > air_max_speed) hsp -= 0.6;
        	else if (hsp < air_max_speed*-1) hsp += 0.6;
        	else {
        		fspec_clamp_hsp = false;
        		if (hsp > 3) hsp -= 0.3;
        		else if (hsp < -3) hsp += 0.3;
        	}
        	vsp += 0.3;
        }
        
        if (pjetpack_available && window > 2 && jump_down && pjetpack_fuel > 0) {
        	attack_end();
        	set_state(PS_IDLE_AIR);
        }
        
        can_move = (window == 3);
        move_cooldown[AT_FSPECIAL_AIR] = 100;
        
        break;
    
    //#endregion
    
    
    //#region Down Special
    
    case AT_DSPECIAL:
    	fast_falling = false;
        can_fast_fall = false;
        can_move = false;
        if (window == 1 && window_timer == 1) {
        	call_sfx_instance = sound_play(s_tap);
        	move_sfx_instance = noone;
        }
        if (window != 3) {
            hsp = lerp(hsp, 0, .1)
            if vsp > 0 vsp = lerp(vsp, 0, .3)
        }
        
        var chest_active = instance_exists(chest_obj);
        
        // Classified Access Codes
        if (!special_down && move_sfx_instance != noone) {
    		sound_stop(move_sfx_instance);
    		move_sfx_instance = noone;
    	}
        
        if (chest_active && window == 2 && special_down && item_grid[36][4] > 0) {
        	if (window_timer % 5 == 3) {
        		move_sfx_instance = sound_play(asset_get("mfx_coin"), false, noone, 0.3, 0.4);
        	}
        	if (window_timer == 23 && call_sfx_instance != noone) {
        		sound_stop(call_sfx_instance);
        		call_sfx_instance = noone;
        	}
        	if (window_timer == 29) window_timer = 9;
        	
        	chest_obj.cac_repositioning = true;
        	chest_obj.x += 8 * (right_down-left_down);
        	if (attack_pressed || shield_pressed) {
        		window = 3;
        		window_timer = 1;
        		if (call_sfx_instance != noone) {
		    		sound_stop(call_sfx_instance);
		    		call_sfx_instance = noone;
		    	}
		    	if (attack_pressed) {
		    		chest_obj.state = 50;
        			chest_obj.state_timer = 0;
		    	}
        	}
        }
        
        // Chest call
        else if (chest_active && window == 2 && window_timer >= 10) {
        	if (call_sfx_instance != noone) {
	    		sound_stop(call_sfx_instance);
	    		call_sfx_instance = noone;
	    	}
    		if (chest_obj.state == 01) {
    			chest_obj.state = 10;
    			chest_obj.state_timer = 0;
    		}
    		else if (chest_obj.state == 02) {
    			chest_obj.state = 20;
    			chest_obj.state_timer = 0;
    		}
    		window = 3;
    		window_timer = 1;
    	}
    	
    	// Chest request
        else if (window == 3 && window_timer == 1) {
        	chest_obj = instance_create(x, y-20, "obj_article1");
        	if (special_down && item_grid[36][4] > 0) {
        		window = 2;
        		window_timer = 0;
        	}
        }
        	
        break;
    case AT_DSPECIAL_2:
    	hsp = 0;
    	vsp = 0;
    	super_armor = item_grid[23][4] > 0 && (window != 1 || window_timer != 1);
    	if (window == 1 && window_timer == 1) {
    		// Lock limitless mode, if applicable
    		limitless_mode_locked = true;
    		limitless_mode_cancelled = false; // manages pop-up
    		
    		if (chest_obj.state == 32) { // trishop
    			can_jump = true;
				if (!halt_for_trishop) {
					halt_for_trishop = true;
					select_for_trishop = false;
					set_window_value(attack, window, AG_WINDOW_LENGTH, 8)
	    			set_window_value(attack, window, AG_WINDOW_SFX_FRAME, 7);
	    			
	    			clear_button_buffer(PC_SPECIAL_PRESSED);
	    			
	    			chest_obj.trishop_selection = -1;
	    			chest_obj.trishop_vis_timer = 0;
	    			chest_obj.trishop_vis_flashing = 1;
	    			chest_obj.trishop_vis_opacities = [0.1, 0.1, 0.1];
				}
				
				if (!select_for_trishop && !joy_pad_idle) {
					select_for_trishop = joy_dir <= 195 || 345 < joy_dir;
				}
				
				if (shield_pressed) {
					clear_button_buffer(PC_SHIELD_PRESSED);
					attack_end();
					set_state(free ? PS_IDLE_AIR : PS_IDLE);
				}
				else if (select_for_trishop) {
					var new_trishop_selection = -1;
					if ((joy_pad_idle || attack_pressed || special_pressed) && chest_obj.trishop_selection != -1) {
						var lcd = (item_grid[46][4] > 0) ? 7 : 8;
						dspec_cooldown_hits = chest_obj.is_large ? lcd : 4;
						dspec_cooldown_hits = floor(dspec_cooldown_hits / (1+item_grid[64][4]));
						chest_obj.state = 33;
						chest_obj.state_timer = 0;
						window_timer++; // advance past freeze
					}
					else if (joy_dir >= 345) new_trishop_selection = 2;
					else if (joy_dir > 195) {
						chest_obj.trishop_selection = -1;
						select_for_trishop = false;
					}
					else if (joy_dir > 130) new_trishop_selection = 0;
					else if (joy_dir >= 50) new_trishop_selection = 1;
					else new_trishop_selection = 2;
					
					if (new_trishop_selection != -1 && new_trishop_selection != chest_obj.trishop_selection) {
						chest_obj.trishop_selection = new_trishop_selection;
						chest_obj.trishop_vis_flashing = 1;
					}
				}
				window_timer--; // force freeze until selection is made
			} else {
				if (chest_obj.state == 12) { // Large chest
					chest_obj.state = 13;
					chest_obj.state_timer = 0;
					dspec_cooldown_hits = floor(4 / (1+item_grid[64][4]));
				}
				else if (chest_obj.state == 22) { // Large chest
					chest_obj.state = 23;
					chest_obj.state_timer = 0;
					var lcd = (item_grid[46][4] > 0) ? 7 : 8;
					dspec_cooldown_hits = floor(lcd / (1+item_grid[64][4]));
				}
				
	    		var window_length = (chest_obj.state < 20) ? 8 : 28;
	    		set_window_value(attack, window, AG_WINDOW_LENGTH, window_length)
	    		set_window_value(attack, window, AG_WINDOW_SFX_FRAME, window_length-1);
	    		hsp = 0;
	    		spr_dir = (x < chest_obj.x) ? 1 : -1;
			}
    	}
    	else if (window == 2 && window_timer == 1 && item_grid[23][4] > 0) {
			jewel_barrier = 10 * item_grid[23][4];
			jewel_barrier_timer = 720;
			new_item_id = 23;
			user_event(0); // for ms buff
		}
    	if (window < 3) {
    		fast_falling = false;
        	can_fast_fall = false;
    		can_move = false;
    		vsp = 0;
    	}
    	break;
    
    //#endregion	
	
	
	//#region Up Special
	
    case AT_USPECIAL:
        fast_falling = false;
        can_fast_fall = false;
        
        if (window == 1) {
        	if (window_timer == 1) set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, free ? 7 : 0);
        	if (window_timer == window_length && !free) spawn_base_dust(x, y, "jump");
        }
        
        if (window == 2 && window_timer == 1) {
        	hsp = 2*(right_down-left_down);
        }

		// Note that the rise from the explosion is in hitbox_update
        break;
    
    //#endregion
    
    
    //#region Taunts
    
    // Default
    case AT_TAUNT:
		if (window == 1 && window_timer == 1) {
			new_item_id = noone;
			user_event(0); // stat refresh
		}
		
		//#region DEBUG: enable debug var
		if (get_match_setting(SET_PRACTICE) && special_pressed && attack_pressed) {
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_SHIELD_PRESSED);
			debug_display_opened = !debug_display_opened;
		}
		//#endregion

    	break;
    	
    // Warbanner
    case AT_EXTRA_2:
		if (window == 2 && window_timer == window_length-1 && item_grid[1][4] > 0) {
			warbanner_obj = instance_create(x+(38*spr_dir), y, "obj_article3");
			warbanner_obj.state = 30;
		}
    	break;
    
    // Training mode utility
    case AT_EXTRA_3:
    	attack_invince = true;
    	if (window == 1 && window_timer == 1) {
    		limitless_mode_locked = true;
    		limitless_mode_cancelled = false;
    		clear_button_buffer(PC_TAUNT_PRESSED);
    	}
    	
    	if (window == 2) {
    		if (taunt_pressed) {
	    		window = 3;
	    		window_timer = 0;
	    		if (tmu_state != -1) {
    				tmu_state = 2;
    				tmu_timer = 0;
    				sound_play(asset_get("mfx_unstar"), false, noone, 0.7, 0.7);
    			}
    		}
    		else if (window_timer == window_length) {
    			window_timer = 0;
    			if (tmu_state == -1) {
    				tmu_state = 0;
    				tmu_timer = 0;
    			}
    		}
    	}
    	
    	break;
    
    //#endregion
    
}

// Defines

#define attempt_behemoth_explosion
if (do_behemoth_hbox && hit_player_obj.hitstop < hit_player_obj.hitstop_full * (1-0.67)) {
	var _x = round(lerp(x, hit_player_obj.x, 0.8));
	var _y = round(hit_player_obj.y - hit_player_obj.char_height);
	var hbox = create_hitbox(AT_EXTRA_1, 1, _x, _y);
	hbox.spr_dir = hbox_stored_dir;
	hbox.kb_angle = hbox_stored_angle;
	hbox.kb_value = hbox_stored_bkb;
	hbox.kb_scale = hbox_stored_kbg;
	hbox.kb_angle = hbox_stored_angle;
	hbox.hitpause = hbox_stored_bhp * 0.67;
	hbox.hitpause_growth = hbox_stored_hps * 0.67;
	hbox.no_other_hit = hbox_stored_lockout;
	do_behemoth_hbox = false;
	behemoth_hfx = spawn_hit_fx(_x, _y, vfx_explosion_med);
	behemoth_hfx.depth = hit_player_obj.depth+1;
	behemoth_hfx_hitstop = 0; // to be overwritten shortly
}

#define sound_window_play //basically a shortcut to avoid repeating if statements over and over
/// sound_window_play(_window, _timer, _sound, _looping = false, _panning = noone, _volume = 1, _pitch = 1)
var _window = argument[0], _timer = argument[1], _sound = argument[2];
var _looping = argument_count > 3 ? argument[3] : false;
var _panning = argument_count > 4 ? argument[4] : noone;
var _volume = argument_count > 5 ? argument[5] : 1;
var _pitch = argument_count > 6 ? argument[6] : 1;
if window == _window && window_timer == _timer {
    sound_play(_sound,_looping,_panning,_volume,_pitch)
}



#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

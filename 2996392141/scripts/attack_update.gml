//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
    case AT_JAB:
        if (window == 1 && window_timer == window_end) {
            jab_tap_timer = 0;
        }
        if (window == 6 && window_timer >= window_cancel_time-1 && !hitpause) {
            if (attack_pressed) {
                if (attack_down && jab_tap_timer >= 0) {
                    window = 10
                    window_timer = 0;
                }
                else {
                    window ++;
                    window_timer = -1;
                }
                if (is_attack_pressed(DIR_FORWARD) || is_attack_pressed(DIR_UP) || is_attack_pressed(DIR_DOWN)) can_attack = true;
            }
        }
        if (window == 11 && !hitpause) {
            if (attack_down) jab_tap_timer = window_end
            if (jab_tap_timer > 0) jab_tap_timer --;
            
            if (jab_tap_timer <= 0 && window_timer == window_end-1) {
                window = 7;
                window_timer = 0;
                jab_tap_timer = -1;
            }
        }
    break;
    case AT_DATTACK:
    	//DACFS
        if (state_timer <= 6 && !hitpause) {
        	if (is_special_pressed(DIR_FORWARD)) {
        		can_special = true;
        	}
        }
        if (window >= 4 && has_hit_player && tension_level >= 4) {
        	if (is_special_pressed(DIR_FORWARD)) {
        		can_special = true;
        	}
        }
	break;
    case AT_DAIR:
        can_fast_fall = false;
        
        if (window == 1 && !hitpause) {
        	vsp = 0;
        }
        
        
        if ((window == 2 || window == 3) && !hitpause) {
        	hsp = 2 * spr_dir;
        	vsp = 10;
        	if (!free) {
        		destroy_hitboxes();
				var dust = spawn_base_dust(round(x + 32), round(y), "dash_start")
				dust.spr_dir = -1;
				var dust = spawn_base_dust(round(x - 32), round(y), "dash_start")
				dust.spr_dir = 1;
                window = 5;
                window_timer = 0;
                sound_play(asset_get("sfx_bounce"))
        	}
        }
        
        if (window == 4 && !hitpause) {
        	if (!was_parried) {
            	if (!free) set_state(PS_LANDING_LAG);
                landing_lag_time = get_attack_value(attack, AG_LANDING_LAG) * (1 + (0.5 * (1 - has_hit)));
            }
            else
            {
                if (!free)
                	set_state(PS_PRATLAND);
                else if(free)
                	set_state(PS_PRATFALL);
            }
        }
    break;
    case AT_NSPECIAL:
        can_fast_fall =  (window == 3 || window == 5 || window == 11);
    	move_cooldown[AT_NSPECIAL] = window == 11 ? 30 : 20;
    	
        //Control
        if (state_timer == 1) {
        	nspecial_throws = 0;
        	nspecial_max_throws = 1 + (tension_level);
        	window_loops = 0;
        	nspecial_charge_buffer = 0;
        }
        //Charging
        if (special_down) {
        	nspecial_charge_buffer ++
        }
        else {
        	nspecial_charge_buffer = 0;
        }
        
        if (window == 1 || window == 4) && !hitpause {
        	started_from_air = free;
        	can_move = false;
            if (free) hsp = clamp(hsp +  0.5 * (right_down - left_down), -2, 2)
            
            //Charging
            if (nspecial_charge_buffer > 6) {
            	window = 7;
            	window_timer = 0;
            	if (free) vsp = -3;
            }
        }
        if (window == 3 || window == 6) && !hitpause {
        	can_move = false;
            if (free) hsp = clamp(hsp +  0.5 * (right_down - left_down), -4, 4)
            
            //Looping
            if (window_timer >= 6 && nspecial_throws < nspecial_max_throws && is_special_pressed(DIR_ANY)) {
            	nspecial_throws++;
            	window = window == 3 ? 4 : 1;
            	window_timer = 0;
            	clear_button_buffer(PC_SPECIAL_PRESSED);
        		nspecial_charge_buffer = 0;
            }
            
            //Charging
            if (nspecial_charge_buffer > 6) {
            	window = 7;
            	window_timer = 0;
            	if (free) vsp = -3;
            }
        }
        if (window == 7 || window == 8 || window == 9) && !hitpause {
        	can_move = false;
             if (free) hsp = clamp(hsp +  0.5 * (right_down - left_down), -2, 2)
             vsp = min(vsp, 7)
        }
        
        if (window == 8) && !hitpause {
            if (window_timer == window_end - 1) window_loops ++;
        	if (window_loops >= NSPECIAL_CHARGE_MIN_LOOPS && !special_down) {
        		window = 9;
        		window_timer = 0;
        	}
			if (shield_pressed) {
                clear_button_buffer(PC_SHIELD_PRESSED);
				window = 12;
        		window_timer = 0;
			}
        }
        if (window >= 10 && !hitpause) can_move = true;
    
        if ((window == 2 || window == 5) && window_timer == 1 && !hitpause) {
            if (free) {
            	vsp *= 0.75
            	vsp += -3
            }
            
            var proj_speeds = [[5, -4], [5, -6], [6, -4], [6, -6], [6, -8]]
            var proj_speed = proj_speeds[random_func(6, array_length(proj_speeds), true)];
            
            var hbox = create_hitbox(AT_NSPECIAL, 1, round(x + (12 * spr_dir)), round(y - 36));
    		hbox.hsp = proj_speed[0] * spr_dir;
    		if (!free)
    			hbox.vsp = proj_speed[1];
    		else
    			hbox.vsp = -proj_speed[1] / 3;
        }
        
        if (window == 9 && window_timer == window_end && !hitpause) {
        	started_from_air = 0;
            if (free) {
            	vsp *= 0.75
            	vsp += -3
            }
    		
    		if (tension_level >= 3) {
    			for (var i = 45; i >= 15; i -= (tension_level == 3 ? 30 : 15)) {
		            var hbox = create_hitbox(AT_NSPECIAL, 2, round(x + (12 * spr_dir)), round(y - 26));
		    		if (!free) {
		    			var hbox_spd = tension_speed_boost(12, 3, 2);
			    		hbox.hsp = lengthdir_x(hbox_spd, i) * spr_dir;
			    		hbox.vsp = lengthdir_y(hbox_spd, i)
		    		}
		    		else {
		    			var hbox_spd = tension_speed_boost(10, 3, 2);
			    		hbox.hsp = lengthdir_x(hbox_spd, i) * spr_dir;
			    		hbox.vsp = lengthdir_y(hbox_spd, -i)
		    		}
		    		hbox.grav = 0.4;
		    		hbox.image_off = i/5;
    			}
    		}
            else {
	            var hbox = create_hitbox(AT_NSPECIAL, 2, round(x + (12 * spr_dir)), round(y - 26));
	    		if (!free) {
		    		hbox.hsp = tension_speed_boost(12, 3, 2) * spr_dir;
		    		hbox.vsp = -2;
	    		}
	    		else {
	    			var hbox_spd = tension_speed_boost(10, 3, 2);
		    		hbox.hsp = lengthdir_x(hbox_spd, -45) * spr_dir;
		    		hbox.vsp = lengthdir_y(hbox_spd, -45)
	    		}
	    		hbox.grav = 0.1;
            }
        }
        
        if (window == 3 || window == 5 || window == 11) && !hitpause {
        	if (started_from_air) {
	        	if (!was_parried) {
	        		move_cooldown[AT_NSPECIAL] = 0;
	            	if (!free) set_state(PS_LANDING_LAG);
	                landing_lag_time = get_attack_value(attack, AG_LANDING_LAG);
	            }
	            else
	            {
	                if (!free)
	                	set_state(PS_PRATLAND);
	                else if(free)
	                	set_state(PS_PRATFALL);
	            }
        	}
        }
    break;
    
    case AT_FSPECIAL:
        can_fast_fall = false;
        off_edge = false;
    	move_cooldown[AT_FSPECIAL] = 12;
        if (window == 1 && window_timer == 1) {
            fspecial_times = 0;
            fspecial_lost_tension = 0;
			var dust = spawn_base_dust(round(x), round(y), "dash_start")
			dust.spr_dir = spr_dir;
        }
        if (window == 2 && !hitpause) {
        	if (window_timer == 1) {
				var dust = spawn_base_dust(round(x), round(y), "dash")
				dust.spr_dir = spr_dir;
        	}
            grav = 0.4;   
            hsp = tension_speed_boost(7, 1, 1) * spr_dir;
            vsp = min(vsp, 4);
            off_edge = true;
            can_wall_jump = true;
            if ((window_loops >= 3 || has_hit) && window_loops <= FSPECIAL_LOOP_TIMES && !was_parried) {
                if (jump_pressed || (can_tap_jump() && tap_jump_pressed)) {
                    attack_end();
                    destroy_hitboxes();
                    clear_button_buffer(PC_JUMP_PRESSED);
                    set_attack(AT_FSPECIAL_2);
                    has_hit = false;
                    has_hit_player = false;
                    hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
		       
                }
                if (is_attack_pressed(DIR_ANY) || attack_pressed) {
                    attack_end();
                    destroy_hitboxes();
                    clear_button_buffer(PC_ATTACK_PRESSED);
                    set_attack(AT_FSPECIAL_AIR);
                    has_hit = false;
                    has_hit_player = false;
                    hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE);
		       
                }
                if (is_special_pressed(DIR_ANY) || special_pressed) {
                    attack_end();
                    destroy_hitboxes();
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    set_attack(AT_NSPECIAL_2);
                    has_hit = false;
                    has_hit_player = false;
                    hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE);
		       
                }
                if (is_strong_pressed(DIR_ANY) || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed) {
                    attack_end();
                    destroy_hitboxes();
                    clear_button_buffer(PC_STRONG_PRESSED);
                    set_attack(AT_FSTRONG_2);
                    has_hit = false;
                    has_hit_player = false;
                    hurtboxID.sprite_index = get_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE);
		       
                }
            }
            
            if (was_parried) {
                window = free ? 5 : 3;
                window_timer = -1;
                hsp = 0;
                vsp = 0;
            }
        }
        if (window == 2 && window_timer == window_end-1 && !hitpause) {
            fspecial_lost_tension += 1;
            
            if (window_loops >= FSPECIAL_LOOP_TIMES) {
                window = free ? 5 : 3;
                window_timer = -1;
            }
        }
        if (window == 3 && window_timer == 1 && !hitpause) {
            if (!has_hit && fspecial_lost_tension > 0) {
                tension_add(-fspecial_lost_tension * TENSION_DAMAGE_RATIO);
                fspecial_lost_tension = 0;
            }
        }
        if (window == 5 && !hitpause) {
            can_wall_jump = true;
            if (!free) {
                window = 3;
                window_timer = 0;
            }
        } 
        if (window == 6 && !hitpause) {
            can_wall_jump = true;
            if (window_timer == 1) {
                if (!has_hit && fspecial_lost_tension > 0) {
                    tension_add(-fspecial_lost_tension * TENSION_DAMAGE_RATIO);
                    fspecial_lost_tension = 0;
                }
            }
            if (!was_parried) {
            	if (!free) set_state(PS_LANDING_LAG);
                landing_lag_time = FSPECIAL_LANDING_LAG * (1 + (0.5 * (1 - has_hit)));
            }
            else
            {
                if (!free)
                	set_state(PS_PRATLAND);
                else if(free)
                	set_state(PS_PRATFALL);
            }
        }
        
    break;
    case AT_FSPECIAL_2:
        can_fast_fall = false;
        can_move = false;
        move_cooldown[AT_FSPECIAL] = 60;
        
        
        if (window == 1 && window_timer == 1 && !hitpause) {
            fspecial_times = 0;
            vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
        }
        
        if (window == 1 && !hitpause) {
            hsp = clamp(hsp +  0.5 * (right_down - left_down), -4, 4)
        }
    
        if (window == 2 && !hitpause) {
            can_wall_jump = true;
            hsp = clamp(hsp +  0.15 * (right_down - left_down), -3, 3)
            
            fspecial_times ++;
            if (shield_pressed && fspecial_times >= 20) {
	            can_shield = true;
            }
            
            if (!free) {
                sound_play(asset_get("sfx_hod_ustrong_slam"));
                destroy_hitboxes();
				var dust = spawn_base_dust(round(x + 32), round(y), "dash_start")
				dust.spr_dir = -1;
				var dust = spawn_base_dust(round(x - 32), round(y), "dash_start")
				dust.spr_dir = 1;
                window = 3;
                window_timer = 0;
            }
        } 
        if (window == 4 && window_timer == window_end && !hitpause) {
        	move_cooldown[AT_FSPECIAL] = 60;
        }
    break;
    case AT_FSPECIAL_AIR:
        can_fast_fall = false;
        can_move = window == 4;
        move_cooldown[AT_FSPECIAL] = 60;
        
        if (window == 1 && window_timer == 1 && !hitpause) {
            window_loops = 0;
        }
        
        
        if (window == 2 && !hitpause) {
            hsp = tension_speed_boost(12, 3, 2) * spr_dir;
            can_wall_jump = true;
        }
    
        if (window == 3 && !hitpause) {
            hsp = tension_speed_boost(10, 3, 2) * spr_dir;
            vsp = 0;
            grav = 0;
            can_wall_jump = true;
        } 
        
        //Jump cancel
        if ((window == 3 || window == 4) && !hitpause) {
            if (has_hit_player && !was_parried) {
            	can_jump = true;
            	if (jump_pressed) {
            		attack_end();
            		destroy_hitboxes();
            	}
            }
            can_wall_jump = true;
        } 
        if (window == 4 && window_timer == 1 && !hitpause) {
        	hsp *= 0.5;
            vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
        }
        
        if (window == 4 && window_timer == window_end && !hitpause) {
        	move_cooldown[AT_FSPECIAL] = 60;
        	if (!has_hit_player) {
        		set_state(PS_PRATFALL);
        		attack_end();
        	}
        }
    break;
    case AT_NSPECIAL_2:
        can_fast_fall = false;
        can_move = window == 4;
        move_cooldown[AT_FSPECIAL] = 60;
        move_cooldown[AT_NSPECIAL] = 12;
        
        if (window == 1 && window_timer == 1 && !hitpause) {
            hsp = get_window_value(attack, window, AG_WINDOW_HSPEED) * spr_dir;
            vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
        }
        
        if (window == 2 && window_timer == 1 && !hitpause) {
        	var times = max(1, tension_level + 1);
        	for (var i = 0; i < times; i++) {
	            var hbox = create_hitbox(AT_NSPECIAL, 1, round(x + (12 * spr_dir)), round(y - 36));
	    		hbox.hsp = lengthdir_x( lerp(8, 12, i / times), lerp(270, 350, i / (times))) * spr_dir;
	    		hbox.vsp = lengthdir_y( lerp(8, 12, i / times), lerp(270, 350, i / (times)));
	    		hbox.image_off = i;
        	}
        }
        
        if (window == 3 && window_timer == window_end && !hitpause) {
            if (!has_hit_player) {
    			tension_add(-4 * TENSION_DAMAGE_RATIO);
            }
        }
        
    break;
    case AT_FSTRONG_2:
        can_fast_fall = false;
        can_wall_jump = window >= 3;
        
        if (window == 1 && window_timer == 1 && !hitpause) {
            hsp /= 2;
        }
        
        if (window == 3 && !hitpause) {
            hsp = clamp(hsp +  0.15 * (right_down - left_down), -1, 1)
        }
        
        if (window == 3 && window_timer == window_end && !hitpause) {
        	move_cooldown[AT_FSPECIAL] = 60;
        	if (!has_hit_player) {
        		set_state(PS_PRATFALL);
        		attack_end();
        	}
        }
        
    break;
    case AT_USPECIAL:
        can_fast_fall = false;
        can_wall_jump = window >= 2;
        if (state_timer <= 12) {
        	uspecial_held = special_down;
        }
        
        if (window == 3 && !hitpause) {
            hsp = clamp(hsp +  0.15 * (right_down - left_down), -1, 1);
            
            if (window_timer == window_end-1 && was_parried) {
            	window = 7;
        		window_timer = 0;
            }
        }
        
        if (window == 4 && !hitpause) {
            hsp = clamp(hsp +  0.15 * (right_down - left_down), -1, 1)
        	set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, tension_speed_boost(8, 2, 2));
			set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, tension_speed_boost(8, 2, 2));
        }
        
        if (window == 6 && !hitpause) {
            hsp = clamp(hsp +  0.15 * (right_down - left_down), -2, 2)
        }
        
        if (window == 6 && window_timer == window_end && !hitpause) {
            if (!has_hit) {
    			tension_add(-3 * TENSION_DAMAGE_RATIO);
            }
        }
        
    break;
    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL_AIR] = 30;
        move_cooldown[AT_DSPECIAL] = 45;
        if (window == 1 && window_timer == 6 && !hitpause) {
			if (tension_level == 4) {
	        	sound_play(asset_get("sfx_absa_concentrate"));
	        	spawn_hit_fx(round(x - (32 * spr_dir)), round(y - 48), 114 );
			}
        }
        var can_spawn_shock = true;
        for (var i = 0; i < array_length(shock); i++) {
        	if (shock[i].timer > 0)
        		can_spawn_shock = false;
        }
        if (window == 1 && window_timer == window_end+1 && !hitpause) {
        	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
        	shake_camera(6, 6);
			var dir = spr_dir == 1 ? 0 : 1;
			var times = max(tension_level * 2, 1);
			if (tension_level == 4) {
    			tension_add(-TENSION_LEVEL_THRESHOLD);
				times = 20;
	        	sound_play(asset_get("sfx_mol_norm_explode"));
			}
			if (can_spawn_shock) {
				shock[dir].timer = 0;
				shock[dir].xstart = x + 32 * spr_dir;
				shock[dir].ystart = y;
				shock[dir].times_max = times;
				shock[dir].hbox_num = tension_level >= 3 ? 3 : 2;
			}
        }
        
        if (window == 3 && window_timer == window_end && !hitpause) {
            if (!has_hit && tension_level < 4) {
    			tension_add(-5 * TENSION_DAMAGE_RATIO);
            }
        }
        
    break;
    case AT_DSPECIAL_AIR:
    	can_move = false;
    	can_fast_fall = false;
        move_cooldown[AT_DSPECIAL_AIR] = 30;
        move_cooldown[AT_DSPECIAL] = 45;
        if (window == 1 && window_timer == 6 && !hitpause) {
			if (tension_level == 4) {
	        	sound_play(asset_get("sfx_absa_concentrate"));
	        	spawn_hit_fx(round(x - (32 * spr_dir)), round(y - 48), 114 );
			}
        }
        if (window == 1 && window_timer == window_end && !hitpause) {
        	var hbox_num = 2;
        	if (tension_level >= 2) hbox_num = 3;
        	if (tension_level >= 4) hbox_num = 4;
        	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
        	var hbox = create_hitbox(AT_DSPECIAL_AIR, hbox_num, round(x + (56 * spr_dir)), round(y));
			hbox.spr_dir = spr_dir;
			hbox.hsp = 2 * spr_dir;
			if (tension_level == 4) {
				hbox.hsp = 3 * spr_dir;
    			tension_add(-TENSION_LEVEL_THRESHOLD);
	        	sound_play(asset_get("sfx_mol_norm_explode"));
			}
        }
        
        if (window == 3 && window_timer == window_end && !hitpause) {
            if (!has_hit && tension_level < 4) {
    			tension_add(-5 * TENSION_DAMAGE_RATIO);
            }
        }
        
    break;
    case AT_TAUNT_2:
        if (window == 1 && !hitpause) {
        	if (!taunt_down) {
        		window ++;
        		window_timer = 0;
        	}
        }
    break;
    case AT_EXTRA_1:
        if (window == 1 && window_timer == 1 && !hitpause) {
            take_damage(player, -1, WAIT1_SELF_DAMAGE);
            tension_add(-TENSION_LEVEL_THRESHOLD);
        }
        
        iasa_script();
        
        if (window == 1 && window_timer == window_end && !hitpause) {
            if (lang == 0) sound_play(sound_get("sfx_sigh"));
        }
    break;
    case AT_EXTRA_2:
        if (window == 1 && window_timer == 1 && !hitpause) {
            mako_wait_timer = 0;
        }
        
        if (window == 2 && !hitpause) {
            mako_wait_timer ++;
            if (lang == 0) {
                if (window_timer == 60) {
                    sound_play(sound_get("sfx_sleep"));
                }
            }
        
            if (mako_wait_timer % WAIT2_SELF_DAMAGE_TIME == 0) {
                take_damage(player, -1, WAIT2_SELF_DAMAGE);
            }
            
            if (mako_wait_timer == WAIT2_MAX || !joy_pad_idle || jump_pressed || tap_jump_pressed || is_attack_pressed(DIR_ANY) || is_strong_pressed(DIR_ANY) || is_special_pressed(DIR_ANY) || shield_pressed || taunt_pressed) {
                window ++;
                window_timer = 0;
            }
        }
        
        if (window == 3 && window_timer >= 7 && !hitpause) {
            iasa_script();
        }
    break;
    case 49: //Final Smash
		hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
        if (window == 1 && window_timer == 2 && !hitpause) {
            fs_window = 1;
            fs_window_timer = 0;
			fs_cine_x = 0;
			fs_cine_y = 0;
			fs_cine_img = 0;
			fs_cine_scale1 = 1;
			fs_cine_scale2 = 1;
			fs_cine_rot2 = 0;
			my_grab_id = noone; 
			grab_time = 0;
        }
        
		if (instance_exists(my_grab_id) && window == 2 && !hitpause) //if you have grabbed someone
		{
            fs_window = 1;
            fs_window_timer = 0;
			fs_cine_x = 0;
			fs_cine_y = 0;
			fs_cine_img = 0;
			fs_cine_scale1 = 1;
			fs_cine_scale2 = 1;
			fs_cine_subs = "";
			window = 4;
			window_timer = 0;
		}
        
        if (window == 2 && !hitpause) {
            hsp = 24 * spr_dir;
            vsp = 0;
            grav = 0;
        }
        
        if (window == 3 && window_timer == 1 && !hitpause) {
        	hsp *= 0.25;
            vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
        }
        
        if (window == 3 && window_timer == window_end && !hitpause) {
        	attack_end();
        	set_state(PS_PRATFALL);
        }
        
        //The cinematic
        if (window == 4 && !hitpause) {
        	hsp = 0;
        	vsp = 0;
			old_hsp = 0;
			old_vsp = 0;
			with (oPlayer) {
				if (id != other.id) {
					if (!hitpause) {
						old_hsp = hsp;
						old_vsp = vsp;
					}
					hitstop += 1;
					hitstop_full += 1;
					hitpause = true;
					attack_invince = true;
    				invince_time += 1;
				}
			}
			fs_window_timer++;
			
			switch (fs_window) {
				case 1:
					fs_cine_spr = sprite_get("final_smash_c1");
					fs_cine_x = 0;
					if (fs_window_timer <= 90) {
						fs_cine_y = ease_quadInOut(-320, 0, fs_window_timer, 90);
					}
					if (fs_window_timer >= 120) {
						fs_window++;
						fs_window_timer = 0;
					}
				break;
				case 2:
					fs_cine_x = 0;
					fs_cine_y = 0;
					if (fs_window_timer == 1) {
						fs_cine_subs = "I'm female, 17, and a member of the Fight Club!"
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_spr = sprite_get("final_smash_c2");
						fs_cine_img = 0;
					}
					if (fs_window_timer == 52) {
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_img = 1;
					}
					if (fs_window_timer == 110) {
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_img = 2;
					}
					if (fs_window_timer == 220) {
						fs_cine_subs = "I was planted, watered, and now it's time to bloom!"
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_img = 3;
					}
					if (fs_window_timer == 260) {
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_img = 4;
					}
					if (fs_window_timer == 304) {
						sound_play(asset_get("sfx_may_arc_hit"));
						fs_cine_spr = sprite_get("final_smash_c3");
						fs_cine_img = 0;
					}
					if (fs_window_timer >= 304) {
						fs_cine_img = clamp(fs_cine_img + 0.2, 0, 10);
					}
					if (fs_window_timer >= 372) {
						fs_window++;
						fs_window_timer = 0;
					}
				break;
				case 3:
					if (fs_window_timer == 1) {
						fs_cine_spr = sprite_get("final_smash_c4");
						fs_cine_img = 0;
					}
					if (fs_window_timer == 40) {
						fs_cine_subs = "";
					}
					if (fs_window_timer <= 60) {
						fs_cine_y = 544;
						fs_cine_x = ease_quadOut(960, 608, fs_window_timer, 60);
					}
					if (fs_window_timer <= 70) {
						fs_cine_y = 544;
						fs_cine_img = (fs_cine_img + 0.2) % 4;
					}
					if (fs_window_timer > 70 && fs_window_timer < 100) {
						fs_cine_x = 608;
						fs_cine_img = 4 + (ease_linear(0, 8, fs_window_timer - 70, 30));
					}
					if (fs_window_timer == 100) {
						sound_play(sound_get("sfx_final_smash_start"));
					}
					if (fs_window_timer >= 100) {
						fs_cine_spr = sprite_get("final_smash_c4a");
						fs_cine_img = (fs_cine_img + 0.2) % 4;
						fs_cine_x = 560;
						
						if (fs_window_timer % 4 == 0) {
							fs_cine_scale1 = ease_linear(100, 75, fs_window_timer - 100, 60) / 100;
							fs_cine_scale2 = ease_linear(100, 400, fs_window_timer - 100, 60) / 100;
							fs_cine_rot2 = ease_linear(15, 0, fs_window_timer - 100, 60);
						}
						
						fs_cine_y = 372 + ((fs_window_timer % 4 < 2 ? -8 : 8));
					}
					if (fs_window_timer >= 180) {
						fs_window = 1;
						fs_window_timer = 0;
						window ++;
		                window_timer = 0;
					}
				break;
			}
		}
        if (window == 5 && window_timer == 0 && !hitpause) {
        	var _fx = spawn_hit_fx(round(x + (128 * spr_dir)), round(y), fs_fx_shock);
			sound_play(sound_get("sfx_final_smash_expl"));
        	_fx.spr_dir = spr_dir;
        }
        
        if (window >= 5 && !hitpause) {
        	hsp = 0;
        	vsp = 0;
        }
    break;
}

#define tension_speed_boost(_spd, _boost, _penatly)
return (_spd + (tension_level == 1 ? - _penatly : _boost * tension_mult))

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;

#define tension_add(_change)
tension_amount += _change;
tension_amount = clamp(tension_amount, 0, TENSION_MAX);
//#region Local Variables
if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
//#endregion

//B - Reversals
if (attack == AT_NSPECIAL 
	|| attack == AT_NSPECIAL_2
	|| attack == AT_NSPECIAL_AIR
	|| attack == AT_FSPECIAL 
	|| attack == AT_FSPECIAL_2
	|| attack == AT_FSPECIAL_AIR
	|| attack == AT_DSPECIAL 
	|| attack == AT_USPECIAL 
	|| attack == AT_USPECIAL_2) trigger_b_reverse();

switch (attack) {
    case AT_FSTRONG:
        if (window == 10 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            spawn_hit_fx(round(x + 48 * spr_dir), round(y - 36), fx_magic_small1)
            sound_play(asset_get("sfx_ori_spirit_flame_1"));
        }
        if (window == 11 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            spawn_hit_fx(round(x + 80 * spr_dir), round(y - 30), fx_magic_small1)
            sound_play(asset_get("sfx_ori_spirit_flame_1"));
        }
        if (window == 12 && window_timer == 2 && !hitpause) {
            spawn_hit_fx(round(x + 106 * spr_dir), round(y - 32), fx_magic_medium)
            sound_play(sound_get("sfx_magic1"));
        }
    break;
    case AT_FSTRONG_2:
        if (window == 1 && strong_charge > 0 && !hitpause) {
            if (strong_charge == 1) {
                sound_play(asset_get("sfx_charge_blade_ready"))
            }
            if (strong_charge % 8 == 0) {
                spawn_hit_fx(round(x + 32 * spr_dir), round(y - 32), 109)
            }
        }
        
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            var charge = strong_charge / 60;
            var hbox = create_hitbox(AT_FSTRONG_2, 1, round(x + 64 * spr_dir), round(y-32))
            hbox.spr_dir = spr_dir;
            hbox.hsp = lerp(get_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED), get_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED) + 7, charge) * spr_dir;
            hbox.length = lerp(get_hitbox_value(attack, 1, HG_LIFETIME), get_hitbox_value(attack, 1, HG_LIFETIME) + 6, charge);
            hbox.img_spd = 5 / hbox.length;
        }
        
        if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && strong_charge == 60) {
            window = 5;
            window_timer = 0;
        }
        if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            var dust = spawn_base_dust(round(x + 128 * spr_dir), round(y), "dash_start");
            dust.spr_dir = -spr_dir;
            sound_play(asset_get("sfx_ori_stomp_hit"));
        }
    break;
    case AT_USTRONG:
        if (window == 3 || window == 4 || window == 11 || window == 12 || window == 13) {
            hud_offset = 64;
        }
        if (window == 10 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            spawn_hit_fx(round(x + 0 * spr_dir), round(y - 48), fx_magic_small1)
            sound_play(asset_get("sfx_ori_spirit_flame_1"));
        }
        if (window == 11 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            spawn_hit_fx(round(x + 4 * spr_dir), round(y - 64), fx_magic_small1)
            //sound_play(asset_get("sfx_ori_spirit_flame_1"));
        }
        if (window == 12 && window_timer == 2 && !hitpause) {
            spawn_hit_fx(round(x - 4 * spr_dir), round(y - 80), fx_magic_small1)
            sound_play(asset_get("sfx_ori_spirit_flame_1"));
        }
        if (window == 11 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            spawn_hit_fx(round(x + 0 * spr_dir), round(y - 96), fx_magic_medium)
            sound_play(sound_get("sfx_magic1"));
        }
    break;
    case AT_USTRONG_2:
        if (window == 1 || window == 2 || window == 3 || window == 4 || window == 5) {
            hud_offset = 64;
        }
        
        if (window == 1 && strong_charge > 0 && !hitpause) {
            if (strong_charge == 1) {
                sound_play(asset_get("sfx_charge_blade_ready"))
            }
            if (strong_charge % 8 == 0) {
                spawn_hit_fx(round(x), round(y - 102), 109)
            }
        }
        
        if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            var charge = strong_charge / 60;
            var hbox = create_hitbox(AT_USTRONG_2, 1, round(x), round(y-72))
            hbox.spr_dir = spr_dir;
            hbox.vsp = lerp(get_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_VSPEED), get_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_VSPEED) - 7, charge);
            hbox.length = lerp(get_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME), get_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME) + 6, charge);
            hbox.img_spd = 5 / hbox.length;
        }
        
        if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && strong_charge == 60) {
            window = 5;
            window_timer = 0;
        }
    break;
    case AT_DSTRONG:
        if (window == 14 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 3 && !hitpause) {
            var fx = spawn_hit_fx(round(x + 32 * spr_dir), round(y), fx_magic_ground)
            fx.x_off = 32 * spr_dir;
            fx.spr_dir = spr_dir;
            var fx1 = spawn_hit_fx(round(x - 32 * spr_dir), round(y), fx_magic_ground)
            fx1.x_off = -32 * spr_dir;
            fx1.spr_dir = -spr_dir;
            sound_play(sound_get("sfx_magic1"));
        }
    break;
    case AT_DSTRONG_2:
        if (window == 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            var dust = spawn_base_dust(round(x + 80 * spr_dir), round(y), "dash");
            dust.spr_dir = -spr_dir;
        }
        if (window == 8 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
            var dust = spawn_base_dust(round(x - 80 * spr_dir), round(y), "dash");
            dust.spr_dir = spr_dir;
        }
    break;
    case AT_NSPECIAL:
    	can_fast_fall = false;
    	can_move = window == 3 && window_timer >= 12;
    	move_cooldown[AT_NSPECIAL] = 25;
    	if (window == 3) {
	        grav = 0.25;
	        vsp = min(vsp, 6);
    	}
    	if (window == 1 && window_timer == window_end) {
    		create_hitbox(AT_NSPECIAL, (free)+2, round(x + 35*spr_dir), round(y - 26))
    	}
    	
    	if (free && window == 1 && window_timer == 1) {
    		vsp += -1;
    	}
    break;
    case AT_NSPECIAL_2:
    	can_fast_fall = false;
    	move_cooldown[AT_NSPECIAL_2] = 30;
    	if (free && window == 2 && window_timer = 1) {
    		vsp = -1;
    	}
    	can_fast_fall = false;
    	if (free) hsp = clamp(hsp, -4, 4);
    	var nspecial_can_cancel = false;
    	if (window == 1 && !hitpause) {
    		if (window_timer >= 7 && shield_pressed) nspecial_can_cancel = true;
    		if (window_timer == window_end && !special_down) {
    			window = 6;
    			window_timer = 0
    		}
    	}
    	if (window == 2 && !hitpause) {
    		if (shield_pressed) nspecial_can_cancel = true;
    		if (!special_down) {
    			window = window_timer == window_end ? 3 : (window_timer < 10 ? 6 : 9);
    			window_timer = 0
    		}
    		else {
    			if (window_timer == window_end - 2) {
					sound_play(asset_get("sfx_mol_flare_ready"));
					shake_camera(2, 4);
    			}
    			if (window_timer == window_end) {
    				window_timer -= 1;
    			}
    			if (get_gameplay_time()  % 10 == 5) {
					var fx = spawn_hit_fx(round(x - 16 * spr_dir), round(y - 32), window_timer >= window_end - 2 ? 148 : 3)
					fx.spr_dir = -spr_dir;
					sound_play(asset_get("sfx_burnapplied"));
				}
    			
    		}
			
    		
    	}
    	if (window == 5) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 100 : 50;
    	if (window == 8) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 80 : 30;
    	if (window == 11) 
    		move_cooldown[AT_NSPECIAL] = !has_hit_player ? 60 : 15;
    	if (nspecial_can_cancel) {
    		window = 12;
    		window_timer = 0;
    		move_cooldown[AT_NSPECIAL] = 15;
    	}
    break;
    case AT_NSPECIAL_AIR:
    	can_fast_fall = false;
    	move_cooldown[AT_NSPECIAL_AIR] = 45;
    	if (free && window == 2 && window_timer = 1) {
    		vsp = -1;
    	}
    break;
    case AT_FSPECIAL:
    	can_fast_fall = false;
    	can_move = window == 2 || window == 5;
    	var charge_max = 60;
    	if (window == 1 && window_timer = 1) {
    		attack_charge_timer = 0;
    		reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
    	}
    	if (window == 2) {
    		if ((!special_down || attack_charge_timer >= charge_max) && !hitpause) {
    			window ++;
    			window_timer = 0;
    			grav = gravity_speed;
    		}
    		else {
    			attack_charge_timer++
    		}
    		grav = 0.25;
    	}
    	if (window == 4 && window_timer == 1 && !hitpause) {
    		var charge_amt = attack_charge_timer/charge_max;
    		hsp = lerp(8, 30, charge_amt) * spr_dir;
    		var hbox = create_hitbox(AT_FSPECIAL, 1, round(x), round(y));
    		hbox.damage = lerp(get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE), get_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE), charge_amt)
    		hbox.kb_value = lerp(get_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK), get_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK), charge_amt)
    		hbox.kb_scale = lerp(get_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING), get_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING), charge_amt)
    		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH,  ceil(lerp(30, 38, charge_amt)));
    		
            spawn_base_dust(round(x), round(y), "dash_start", spr_dir);
            spawn_base_dust(round(x), round(y), "land", spr_dir);
    	}
    	if (window == 4 && window_timer == 1 && !hitpause) {
    		var charge_amt = attack_charge_timer/charge_max;
    		hsp = lerp(22, 44, charge_amt) * spr_dir;
    	}
    	if (window == 5) {
    		can_wall_jump = true
    		grav = 0.25;
    		vsp = min(vsp, 3);
    	}
    	if (window == 5 && window_timer == window_end && !hitpause) {
    		if (free && !(has_hit || has_hit_player))
    		{
    			attack_end();
    			set_state(PS_PRATFALL);
    		}
    	}
    	if (window == 5 && window_timer >= 4 && !hitpause && (has_hit || has_hit_player) && !was_parried) {
    		can_jump = jump_cancel_times == 0;
    		can_attack = true;
    		can_special = true;
    	}
    	if (can_jump && jump_pressed)
    		jump_cancel_times ++;
    break;
    case AT_FSPECIAL_2:
    	can_fast_fall = false;
    	can_move = window == 1;
    	can_wall_jump = window >= 2
    	
    	if (window == 1 && window_timer == window_end && !hitpause) {
    		sound_play(asset_get("sfx_oly_fspecial_dash"));
            spawn_base_dust(round(x), round(y), "dash_start", spr_dir);
            spawn_base_dust(round(x), round(y), "land", spr_dir);
    	}
    	if (window == 2) {
    		if (place_meeting(x + hsp, y, asset_get("par_block"))) {
    			window ++;
    			window_timer = 0;
    			destroy_hitboxes();
    			grav = gravity_speed;
    			sound_play(asset_get("sfx_oly_dspecial_armorhit"));
    			spawn_hit_fx(round(x + 30 * spr_dir), round(y - 30), 301);
                var dust = spawn_base_dust(round(x + 30 * spr_dir), round(y - 30), "land", 1);
                dust.draw_angle = spr_dir == -1 ? 270 : 90;
    		}
    		grav = 0.25;
    		vsp = min(vsp, 1);
    	}
    	
    	if (window == 3) {
    		grav = 0.25;
    		vsp = min(vsp, 1);
    	}
    	
    	if (window == 3 && window_timer == window_end && !hitpause) {
    		if (free && !(has_hit || has_hit_player))
    		{
    			attack_end();
    			set_state(PS_PRATFALL);
    			window = 1;
    			window_timer = 0;
    		}
    	}
    	if (window == 3 && window_timer >= 6) {
	    	if (!hitpause && (has_hit || has_hit_player) && !was_parried) {
	    		can_jump = true;
	    	}
	    	else {
	    		can_jump = false;
	    	}
    	}
    	if (can_jump && jump_pressed) {
    		jump_cancel_times ++;
    		hsp = clamp(hsp, -7, 7);
    	}
    break;
    case AT_FSPECIAL_AIR:
    	can_fast_fall = false;
    	can_move = window == 4;
    	can_wall_jump = window == 4;
    	
    	if (window == 1 && window_timer = 1) {
    		attack_started_from_ground = free;
    	}
    	if (window == 1 && window_timer == window_end && !hitpause) {
            spawn_base_dust(round(x), round(y), "dash_start", spr_dir);
            spawn_base_dust(round(x), round(y), "land", spr_dir);
    	}
    	
    	if (window == 4) {
    		grav = 0.25;
    		vsp = min(vsp, 0.5);
    	}
    	
    	if (window == 4 && window_timer == window_end && !hitpause) {
    		if (attack_started_from_ground && !(has_hit_player))
    		{
    			attack_end();
    			set_state(PS_PRATFALL);
    			window = 1;
    			window_timer = 0;
    		}
    	}
    	if (window == 4) {
	    	if (!hitpause && (has_hit_player)) {
	    		can_jump = true;
	    	}
    	}
    	if (can_jump && jump_pressed)
    		jump_cancel_times ++;
    break;
    case AT_USPECIAL:
	    can_move = false;
	    can_fast_fall = false;
	    
	    if (window == 1 && window_timer == 1) {
	    	uspecial_free = free;
	    	strong_charge = 0;
	    	strong_flashing = 0;
	    }
	    
	    if (window == 2) {
	    	if (uspecial_free) {
	    		window = 3;
	    		window_timer = 0;
	    	}
	    	else {
		    	if (!special_down || strong_charge >= 60) {
		    		window ++;
		    		window_timer = 0;
	    			strong_flashing = 0;
		    	}
		    	else {
		    		if (!hitpause) {
		    			strong_charge++;
	    				strong_flashing = strong_charge % 12 >= 6;
		    		}
		    	}
	    	}
	    }
	    
	    if (window == 3 && window_timer == window_end && !hitpause) {
	    	if (uspecial_free) {
				vsp = -7.2;
	    		window = 8;
	    		window_timer = 0;
	    	}
	    	else {
	    		if (sign(right_down - left_down) != 0)
	    		spr_dir = sign(right_down - left_down)
    		};
	    	sound_play(asset_get("sfx_spin"), false, noone, 1, 0.75)
	    }
	    
	    if ((window == 4 || window == 5) && !hitpause) {
	    	hsp += sign(right_down - left_down) * 1.33;
	    	hsp = clamp(hsp, -3, 3);
	    	hsp *= 0.93;
	    	
	    	if (get_gameplay_time() % 8 == 0) {
            	spawn_base_dust(round(x + 32 * spr_dir), round(y), "dash_start", -spr_dir);
	    	}
	    	if (get_gameplay_time() % 8 == 4) {
            	spawn_base_dust(round(x + 32 * spr_dir), round(y), "dash_start", spr_dir);
	    	}
	    }
	    
	    if (window == 8 && window_timer == 1 && !hitpause) {
	    	hsp += sign(right_down - left_down);
	    	hsp = clamp(hsp, -3, 3);
	    }
	    
	    if (window >= 8 && window <= 10 && !hitpause) {
	    	hsp += sign(right_down - left_down) * 0.25;
	    	hsp = clamp(hsp, -3, 3);
	    }
	    
	    if (window >= 8 && window <= 11 && !hitpause) {
	    	hsp = clamp(hsp, -3, 3);
	    	grav = window < 10 ? 0.2 : 0.35;
	    }
	    
	    if (window == 11) {
	    	can_wall_jump = true;
	    	can_move = true;
	    }
	    
	    if (window == 9 && window_timer == window_end && !hitpause) {
	    	vsp -= 4.2;
	    }
    break;
    case AT_USPECIAL_2:
		can_move = window >= 4;
		can_fast_fall = window == 5 && window_timer > floor(get_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH) / 1.25);
		
	    if (window == 1 && window_timer == 1) {
	    	attack_charge_timer = 0;
	    }
	    
		if (window == 2) {
	    	if (!special_down || window_timer >= window_end) {
	    		window = window_timer >= window_end ? 6 : 3;
	    		window_timer = 0;
	    	}
	    	else {
	    		attack_charge_timer++;
	    	}
		}
		
		if ((window == 4 || window == 7) && window_timer == 1 && !hitpause) {
			vsp = lerp(-10, -19, attack_charge_timer / 30);
		}
		
	    if (window == 2 || window == 3|| window == 6) {
	    	grav = 0;
	    	vsp = 0;
	    }
	    
	    if (window == 4 || window == 5 || window == 7 || window == 8) {
	    	grav = 0.4;
	    }
	    if (window == 5) {
	    	if (window_timer == window_end-1 && !hitpause) {
	    		if (attack_charge_timer <= 10)
	    			move_cooldown[AT_USPECIAL_2] = 3;
	    		else {
	    			attack_end();
	    			set_state(PS_PRATFALL);
	    			window = 1;
	    			window_timer = 0;
	    		}
	    	}
	    }
	    if (window == 8) {
	    	if (window_timer == window_end && !hitpause) {
    			attack_end();
    			set_state(PS_PRATFALL);
    			window = 1;
    			window_timer = 0;
    		}
	    }
	    
	break;
    case AT_USPECIAL_GROUND:
    	grav = window >= 4 ? 0.4 : 0;
		can_move = false;
		can_fast_fall = window == 4 && window_timer >= floor(get_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH) / 1.5);
		can_wall_jump = window >= 2;
		
	    if (window == 1) {
	        uspecial_angle = 90;
	        uspecial_angle_real = uspecial_angle;
	        uspecial_angle_time = 0;
	    }
	    if (window == 2 && window_timer == 1 && !hitpause) {
	    	var spd = 17.4;
	    	var ang = 90;
	    
		    if (!joy_pad_idle) {
	            ang = joy_dir;
	            
	            if (ang > 270 || ang < 60) {
	                ang = 60;
	            }
	            if (ang > 120 && ang < 270) {
	                ang = 120;
	            }
	        }
	        vsp = -sin(degtorad(ang))*spd
	        hsp = cos(degtorad(ang))*spd
	        sound_play(sound_get("sfx_holy1"));
	    }
	    if (window == 3) {
	    	hsp *= 0.9;
	    	vsp *= 0.84;
	    	
	    	if (shield_pressed && has_hit_player && window_timer >= 2) {
	    		clear_button_buffer(PC_SHIELD_PRESSED);
	    		window++;
	    		window_timer = 0;
		    	hsp = clamp(hsp, -4, 4);
		    	vsp = max(vsp, -9);
	    	}
	    }
	    if (window == 4) {
	    	hsp += sign(right_down - left_down);
	    	hsp = clamp(hsp, -4, 4);
	    }
		
    break;
    case AT_DSPECIAL:
	    can_move = false;
	    can_fast_fall = false;
        was_parried = false;
        can_select_skill = skill_points > 0;
        grav = 0.25;
        vsp = min(vsp, 6);
        
	    if (window != 1) {
	    	hud_offset = 999;
	    }
	    
	    if (window == 1 && window_timer == 6) {
	        dspecial_chest = instance_create(round(x + get_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X) * spr_dir), round(y), "obj_article1");
	        dspecial_chest.obj_type = 0;
	        dspecial_chest.spr_dir = spr_dir;
	        
	        if (!skills_updated) {
	            //skills_updated = true;
	            skill_select_buffer = 0;
	            skill_select[0] = skill_pool_create(skill_pool[0], skill_current[0])
	            skill_select[1] = skill_pool_create(skill_pool[1], skill_current[1])
	            skill_select[2] = skill_pool_create(skill_pool[2], skill_current[2])
	            skill_select[3] = skill_pool_create(skill_pool[3], skill_current[3]);
	            
	            if (in_battle) {
		            skill_next[0] = skill_select[0][clamp(random_func(3, array_length(skill_select[0]), true), 0, array_length(skill_select[0])-1)];
		            skill_next[1] = skill_select[1][clamp(random_func(4, array_length(skill_select[1]), true), 0, array_length(skill_select[1])-1)];
		            skill_next[2] = skill_select[2][clamp(random_func(5, array_length(skill_select[2]), true), 0, array_length(skill_select[2])-1)];
		            skill_next[3] = skill_select[3][clamp(random_func(6, array_length(skill_select[3]), true), 0, array_length(skill_select[3])-1)];
	            }
	            else {
	            	skill_debug[0] = 0;
	            	skill_debug[1] = 0;
	            	skill_debug[2] = 0;
	            	skill_debug[3] = 0;
		            skill_next[0] = skill_select[0][skill_debug[0]];
		            skill_next[1] = skill_select[1][skill_debug[1]];
		            skill_next[2] = skill_select[2][skill_debug[2]];
		            skill_next[3] = skill_select[3][skill_debug[3]];
	            }
	        }
	    }
	    
	    //Stick binding, like Shovel Knight's
	    if (window < 4) {
	        if (up_stick_down) skill_index = 0;
	        else if (right_stick_down) skill_index = 2;
	        else if (down_stick_down) skill_index = 3;
	        else if (up_down) skill_index = 0;
	        else if (right_down) skill_index = 2;
	        else if (down_down) skill_index = 3;
	        else skill_index = 1;
	    }
	    
	    //Skill Select
	    if (window == 4) {
	        if (skill_select_buffer > 0) {
	            skill_select_buffer--;
	        }
	        if (up_pressed) {
	            skill_index --;
	            if (skill_index < 0) {
	                skill_index = 3;
	            }
	            sound_play(sound_get("sfx_rpg_cursor"));
	        }
	        if (down_pressed) {
	            skill_index ++;
	            if (skill_index > 3) {
	                skill_index = 0;
	            }
	            sound_play(sound_get("sfx_rpg_cursor"));
	        }
	        if (!in_battle) {
		        if (left_pressed) {
		        	var array_len = array_length(skill_select[skill_index]);
		        	skill_debug[skill_index] --;
		        	if (skill_debug[skill_index] < 0) {
		        		skill_debug[skill_index] = array_len-1;
		        	}
		        	skill_next[skill_index] = skill_select[skill_index][skill_debug[skill_index]];
		            sound_play(sound_get("sfx_rpg_cursor"));
		        }
		        if (right_pressed) {
		        	var array_len = array_length(skill_select[skill_index]);
		        	skill_debug[skill_index] ++;
		        	if (skill_debug[skill_index] > array_len-1) {
		        		skill_debug[skill_index] = 0;
		        	}
		        	skill_next[skill_index] = skill_select[skill_index][skill_debug[skill_index]];
		            sound_play(sound_get("sfx_rpg_cursor"));
		        }
	        }
	        if (attack_pressed) {
	            if (skill_next[skill_index] != undefined && can_select_skill && skill_points > 0) {
	                sound_play(sound_get("sfx_item_get"));
	                sound_play(sound_get("sfx_rpg_accept"));
    	            window = 5;
    	            window_timer = 0;
    	            skill_current[skill_index] =  skill_next[skill_index];
    	            skill_points--;
    	            skills_updated = false;
	            }
	            else {
	                if (skill_select_buffer <= 0) {
        	            sound_play(sound_get("sfx_rpg_error"));
        	            skill_select_buffer = 8;
	                }
	            }
	        }
	        if (shield_pressed || special_pressed || ((up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) && (!up_stick_pressed && !down_stick_pressed && !left_stick_pressed && !right_stick_pressed))) {
	            sound_play(sound_get("sfx_rpg_cancel"));
	            window = 6;
	            window_timer = 0;
	        }
	    }
    break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

#define skill_pool_create(_skills, _current)
var arr = [];
for (var i = 0; i < array_length(_skills); i++) {
    if (skill_level >= _skills[i].level_required && _current.name != _skills[i].name) {
        arr = array_push(arr, _skills[i]);
    }
}

return arr;

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

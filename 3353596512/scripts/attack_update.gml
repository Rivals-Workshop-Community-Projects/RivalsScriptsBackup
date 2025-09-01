//attack_update

#macro AT_FAIR_2 31;
#macro AT_FAIR_3 37;
#macro AT_UAIR_2 38;
#macro AT_UAIR_3 39;
#macro AT_FSTRONG_3 40;
#macro AT_USTRONG_3 42;
#macro AT_FSPECIAL_FAIL 43;
#macro AT_USPECIAL_FAIL 44;
#macro AT_FSPECIAL2_FAIL 45;

switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL:
	//case AT_DSPECIAL_2:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
	case AT_FSPECIAL_FAIL:
	case AT_FSPECIAL2_FAIL:
	case AT_USPECIAL_FAIL:
		trigger_b_reverse();
	break;
}

if (attack == AT_JAB) {
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time {
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
            was_parried = false; 
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
}

switch(attack)
{
    case AT_JAB:
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play( sound_get("jab_clownhonk"), false, noone, 0.5, 1);
    			spawn_base_dust(x - 22*spr_dir, y, "dash", spr_dir);
    		}
    	}
    	if (window == 4){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play( sound_get("jab_knifeswing" + string( random_func(0, 2, true) + 1 ) ), false, noone, 0.3, 0.9 + random_func(0, 2, true)/25);
    		}
    	}
    	if (window == 6){ //jab 2 -> rapid jab
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME) && !hitpause){
				knife_rapid_jab();
				if (attack_down){
					window_timer = 0;
				}
				jab_walk_dir = right_down - left_down;
				    if (jab_walk_dir == 0){
    					jab_walk_hsp = 0;
    					hsp = 0;
					 }
				if (!hitpause){
	    	    	if (hsp < walk_speed || hsp > -walk_speed){
						jab_walk_hsp += walk_accel*jab_walk_dir;
						jab_walk_hsp = clamp(jab_walk_hsp, -walk_speed, walk_speed)
						hsp = jab_walk_hsp;
						//print(hsp);
	    	    	}
				}
    		}
    	}
    	if (window == 7 || window == 8){ //hold rapid jab
    		jab_rapid_timer = (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)/2);
    		jab_walk_dir = right_down - left_down;
				jab_walk_dir = right_down - left_down;
				    if (jab_walk_dir == 0){
    					jab_walk_hsp = 0;
    					hsp = 0;
					 }
    		if (!hitpause){
	    	    if (hsp < walk_speed || hsp > -walk_speed){
					jab_walk_hsp += walk_accel*jab_walk_dir;
					jab_walk_hsp = clamp(jab_walk_hsp, -walk_speed, walk_speed)
					hsp = jab_walk_hsp;
					//print(hsp);
	    	    }
				if (window_timer % 8 == 0 && window == 8){
					spawn_base_dust(x - 4*spr_dir, y, "walk", spr_dir);
				}
    		}
			knife_rapid_jab();
    		if (jab_rapid_timer && !hitpause){
    			if (!attack_down || was_parried){
    				window = 9;
    				window_timer = 0;
    			}
    		}
    		if (window_timer == 3 || window_timer == 12) && (!hitpause){
    			sound_play(asset_get("sfx_shovel_swing_light1"), false, noone, 0.7, 1.2);
    			sound_play( sound_get("jab_knifeswing" + string( random_func(0, 2, true) + 1 ) ), false, noone, 0.15, 0.9 + random_func(0, 2, true)/25);
    		}
    	}
    break;
    case AT_FTILT:
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_base_dust(x + 40*spr_dir, y, "dash_start", -spr_dir);
    		}
    	}
    	if (window == 4){
    		if (window_timer == (has_hit? 9 : 14)) && (!hitpause){
    			sound_play(sound_get("step"), false, noone, 0.8, 1.25);
    			spawn_base_dust(x + 22*spr_dir, y, "dash", -spr_dir);
    		}
    	}
    	if (window == 6) || (window == 5 && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit? 1 : 1.5)) ){
    		endlag_cancel();
    	}
    break;
    case AT_UTILT:
    	if (window > 1){
    		if (!rabbit_suit){
    			hud_offset = 16;
    		}
    	}
    	if (window == 1){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_base_dust(x - 22*spr_dir, y, "dash", spr_dir);
    			sound_play( asset_get("sfx_ori_stomp_spin"), false, noone, 0.7, 1.5);
    		}
    	}
    break;
    case AT_DTILT:
    	if (window == 1){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play(asset_get("sfx_waveland_oly"), false, noone, 1, 1.4);
    			spawn_base_dust(x - 22*spr_dir, y, "dash", spr_dir);
    		}
    	}
    break;
    case AT_DATTACK:
    	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window == 2 || window == 3 && window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH) - 8){
    		if (state_timer % 5 == 0 && !hitpause){
    			spawn_base_dust(x - 12*spr_dir, y, "dash", spr_dir);
    		}
    	}
    break;
    case AT_NAIR:
    	if (window == 1 || window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play( sound_get("jab_knifeswing" + string( random_func(0, 2, true) + 1 ) ), false, noone, 0.4, 0.9 + random_func(0, 2, true)/25);
    		}
    	}
    break;
    case AT_FAIR:
    case AT_FAIR_2:
    case AT_FAIR_3:
    	if (window == 3){
    		if (window_timer == 21 - has_hit*7 && !hitpause){
    			drop_melee_vfx();
    			sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
    		}
    	}
    break;
    case AT_BAIR:
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play(sound_get("bair_shot" + string(random_func(0, 2, true) + 1 )), false, noone, 0.7, 1);
    			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.7, 1.5);
    		}
    	}
    	if (window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_hit_fx(x, y, bair_shot_linger);
    		}
    	}
    	if (window == 4){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_hit_fx(x, y, bair_smoke_linger);
    			var dropped_shotty_oops = spawn_hit_fx(x, y + 10, bair_gun_dropped);
    			dropped_shotty_oops.hsp = 4 * -spr_dir;
    			dropped_shotty_oops.vsp = -6;
    			dropped_shotty_oops.grav = 0.5;
    			dropped_shotty_oops.spr_dir = spr_dir;
    			dropped_shotty_oops.draw_angle = 90*spr_dir;
    		}
    	}
    break;
    case AT_UAIR:
    case AT_UAIR_2:
    case AT_UAIR_3:
    	if (window > 1 || window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    		hud_offset = 60 - (rabbit_suit*24);
    	}
    	if (window == 1){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			//sound_play(sound_get("shovel_swing"));
    		}
    	}
    	if (window == 3){
    		if (window_timer == 20 - has_hit*7 && !hitpause){
    			drop_melee_vfx();
    			sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
    		}
    	}
    break;
    case AT_DAIR:
    if (window == 2){
    	if (window_timer == 8 && !hitpause){
    		sound_play(asset_get("sfx_swipe_weak2"));
    	}
    	if (window_timer == 17 && !hitpause){
    		sound_play(asset_get("sfx_swipe_weak1"));
    	}
    	if (window_timer <= 17){
    		if (has_hit && hitstop == hitstop_full-1){
    			old_vsp = -3;
    		}
    	}
    }
    break;
    case AT_FSTRONG:
    case AT_FSTRONG_2:
    case AT_FSTRONG_3:
    	strong_walk();
    	if (window == 3){
    		if (window_timer == 2 && !hitpause){
    			sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, 0.8, 1.1);
    			sound_play(sound_get("shovel_swing"));
    		}
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_base_dust(x + 62*spr_dir, y, "dash_start", -spr_dir);
    			spawn_base_dust(x - 28*spr_dir, y, "dash_start", spr_dir);
    		}
    	}
    	if (window == 3 || window == 4){
    		hud_offset = 90 - (rabbit_suit*24);
    	}
    break;
    case AT_USTRONG:
    case AT_USTRONG_2:
    case AT_USTRONG_3:
    	strong_walk();
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, 0.8, 1.1);
    			sound_play(sound_get("shovel_swing"));
    		}
    	}
    	if (window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_base_dust(x + 54*spr_dir, y, "dash_start", -spr_dir);
    			spawn_base_dust(x - 28*spr_dir, y, "dash_start", spr_dir);
    		}
    	}
    	if (window == 3 || window == 4 || window == 5){
    		hud_offset = 84 - (rabbit_suit*24);
    	}
    	if (window == 5){
    	    if (window_timer == 22 - has_hit*7 && !hitpause){
    			drop_melee_vfx();
    			sound_play(sound_get("shovel_pickup"), false, noone, 0.7, 1);
    		}
    	}
    break;
    case AT_DSTRONG:
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && has_ladder){
    			sound_play(asset_get("sfx_ell_dspecial_hit"), false, noone, 0.8, 0.8);
    			sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 1, 1);
    		}
    	}
    	if (window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause && has_ladder){
    			ladder_obj = instance_create(x + 24*spr_dir, y + 8, "obj_article1");
    			spawn_base_dust(x + 34*spr_dir, y, "n_wavedash", spr_dir);
				ladder_obj.extension_size = floor(strong_charge/20);
				if (ladder_obj.extension_size > 3) ladder_obj.extension_size = 3;
				if (was_parried){
					ladder_obj.ladder_was_parried = true;
				}
    		}
    	}
    	if (window == 4){
    		strong_charge = 0;
    	}
    break;
    
    case AT_NSPECIAL:
    can_move = false;
    can_fast_fall = false;
    if (window == 1){
    	if (window_timer == 1 && !hitpause){
    		sound_play(sound_get("terminal_enter"));
    	}
    	if (window_timer == 8 && !hitpause){
    		using_terminal = true;
    	}
    	if (up_stick_down){
    		if (terminal_slot != 0){
    			terminal_slot = 0;
    		}
    	} else if (left_stick_down || right_stick_down){
    		if (terminal_slot != 1){
    			terminal_slot = 1;
    		}
    	} else if (down_stick_down){
    		if (terminal_slot != 2){
    			terminal_slot = 2;
    		}
    	}
    }
    if (window == 2 || window == 3 || window == 4){
    	using_terminal = true;
    	if ( (shield_pressed || shield_down) || (special_pressed)) && (!hitpause){
    		sound_play(sound_get("terminal_exit"));
    		sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    		using_terminal = false
    		window = 5;
    		window_timer = 0;
    	}
    	if (down_pressed){
    		window = random_func(0, 2, true) + 3;
    		window_timer = 0;
    		terminal_slot++;
    		sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    	}
    	if (up_pressed){
    		window = random_func(0, 2, true) + 3;;
    		window_timer = 0;
    		terminal_slot--;
    		sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    	}
    	if (up_stick_down){
    		if (terminal_slot != 0){
    			sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    			window = random_func(0, 2, true) + 3;
    			window_timer = 0;
    		}
    		terminal_slot = 0;
    	} else if (left_stick_down || right_stick_down){
    		if (terminal_slot != 1){
    			sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    			window = random_func(0, 2, true) + 3;
    			window_timer = 0;
    		}
    		terminal_slot = 1;
    	} else if (down_stick_down){
    		if (terminal_slot != 2){
    			sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    			window = random_func(0, 2, true) + 3;
    			window_timer = 0;
    		}
    		terminal_slot = 2;
    	}
		terminal_browsing();
		calculate_weight();
    }
    break;
    case AT_FSPECIAL:
    	can_fast_fall = false;
    	if (window == 1){
    		if (!hitpause && window_timer == 6){
    			sound_play(sound_get("fspec_pin"));
    		}
    		if (!hitpause && window_timer == 9){
    			var pin = spawn_hit_fx(x + 26*spr_dir, y - 36, flashbang_pin);
    			pin.spr_dir = spr_dir;
    			pin.hsp = 1*pin.spr_dir;;
    			pin.vsp = -2;
    			pin.grav = 0.5;
    			pin.depth = depth-1;
    		}
    	}
    	if (window == 2){
    		if (!hitpause){
    			flashbang_detonate_timer++;
    		}
    		if (!special_down && flashbang_detonate_timer >= 3){
    			window = 3;
    			window_timer = 0;
    			/*
    			var dir = right_down - left_down;
    			if (dir != 0) spr_dir = dir;
    			*/
    		}
    	}
    	if (window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    			sound_play(asset_get("sfx_swipe_medium2"));
    			spawn_base_dust(x - 24*spr_dir, y, "dash", spr_dir);
    		}
    	}
    break;
    case AT_FSPECIAL_2:
    can_fast_fall = false;
    	if (window == 2){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_hit_fx(x, y, fspec2_scan_linger)
    		}
    	}
    	if (window >= 4){
    		can_move = false;
    	}
    	if (window == 4){
    		sound_stop(scan_sound);
    		vsp *= 0.6;
    		hsp *= 0.6;
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			beam_sound = sound_play(sound_get("fspec2_beam_loop"), true, noone, 0.9, 1);
    		}
    	}
		if (window == 5){
			if (window_timer < 10 && !hitpause){
				hsp = lerp(hsp, 0, window_timer/10);
				vsp = lerp(vsp, 0, window_timer/10);
			}
			if (window_timer >= 10 && !hitpause){
				hsp = 0;
				vsp = 0;
			}
			if (window_timer == 15 && !hitpause){
				sound_play(sound_get("fspec2_warning"), false, noone, 0.8, 1);
			}
			if (!free && window_timer % 6 && !hitpause){
				spawn_base_dust(x - 24*spr_dir, y, "dash", spr_dir);
			}
		}
		if (window == 6){
			hsp = 0;
			vsp = 0;
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_stop(beam_sound);
    			sound_play(sound_get("fspec2_overheat"));
    			spawn_base_dust(x - 24*spr_dir, y, "dash_start", spr_dir);
    		}
		}
		if (window == 7){
			hsp = 0;
			vsp = 0;
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_hit_fx(x, y, fspec2_zap_linger);
    			var dropped_zapgun = spawn_hit_fx(x + 6*spr_dir, y-74, fspec2_drop_gun);
    			dropped_zapgun.hsp = -4*spr_dir;
    			dropped_zapgun.vsp = -6;
    			dropped_zapgun.grav = 0.5;
    		}
		}
		if (window == 8){
			hsp = 0;
			vsp = 0;
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			move_cooldown[AT_FSPECIAL_2] = 120;
    		}
		}
    break;
    case AT_FSPECIAL2_FAIL:
    can_fast_fall = false;
    	if (window == 1){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 0.8, 1);
    		}
    	}
    break;
    case AT_USPECIAL:
    can_wall_jump = true;
    can_fast_fall = false;
    fuel_should_refill = false;
    is_using_jetpack = true;
    	if (window == 1){
    		if (window_timer == 1 && !hitpause){
    			anti_thrust_stall++;
    		}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2 && !hitpause){
				sound_play(sound_get("uspec1_start"));
			}
    		
    	}
    	if (window == 2){
    		if (window_timer == 1 && !hitpause){
    			jetpack_sfx = sound_play(sound_get("uspec1_loop"));
    		}
    	}
		if (window == 3){
			if (!special_down){
				window = 4;
				window_timer = 0;
				sound_stop(jetpack_sfx);
			}
			if (jetpack_fuel <= 0 || shield_down || anti_thrust_stall >= 4 || y <= get_stage_data(SD_TOP_BLASTZONE_Y) - 64){
				window = 5;
				window_timer = 0;
				invincible = false;
				initial_invince = false;
				invince_time = 0;
				anti_thrust_stall = 0;
				sound_stop(jetpack_sfx);
				sound_stop(jetpack_warning_sfx);
			}
		}
		if (window == 3 || window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (quota_level < 7){
				hsp = lengthdir_x(6, jetpack_dir)
				vsp = lengthdir_y(5, jetpack_dir)
			} else {
				hsp = lengthdir_x(11, jetpack_dir)
				vsp = lengthdir_y(9, jetpack_dir)
			}
		}
		if (window == 5){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				vsp = -8;
				spawn_hit_fx(x, y - 56, 143);
				var explosion = create_hitbox(AT_USPECIAL, 1, x, y-56);
				explosion.can_hit_self = true;
				jetpack_fuel_low = true;
				cant_use_jetpack = true;
				jetpack_fuel = 0;
				sound_stop(jetpack_sfx);
			}
		}
		if (window == 3 || window == 2 || window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (jetpack_fuel < jetpack_fuel_max/2){
				if (get_gameplay_time() % 5 == 0){
					spawn_hit_fx(x , y - (char_height/2), jetpack_smoke);
				}
			}
			fuel_rate = round(lerp(9, 18, weight_value/weight_max));
			jetpack_fuel -= fuel_rate;
		}
    break;
    case AT_USPECIAL_2:
    	can_fast_fall = false;
    	can_wall_jump = true;
    	if (window < 5){
    		can_move = false;
    		hud_offset = 52;
    	}
    	if (window == 2 || window == 3){
    		if (quota_level < 8){
    			soft_armor = 15;
    		} else {
    			super_armor = true;
    		}
    	} else {
    		soft_armor = 0;
    		super_armor = false;
    	}
    	if (window == 1){
    		vsp *= 0.8;
    		if (window_timer == 1){
    			hsp *= 0.5;
    		}
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			cruiser_rev_sound = sound_play(sound_get("uspec2_charge"));
    		}
    	}
    	if (window == 2){
    		if (!free){
    			hsp = clamp(hsp, -7, 7);
    		} else {
    			hsp = clamp(hsp, -3, 3);
    		}
    		if (right_down && cruiser_charge > 7){
    			hsp += 0.35;
    			wheels_index += abs(hsp/10);
    			if (!cruiser_sounds_playing){
    				cruiser_engine_sound = sound_play(sound_get("uspec2_roll_loop"));
    				cruiser_sounds_playing = true;
    			}
    		}
    		if (left_down && cruiser_charge > 7){
    			hsp -= 0.35;
    			wheels_index += abs(hsp/10);
    			if (!cruiser_sounds_playing){
    				cruiser_engine_sound = sound_play(sound_get("uspec2_roll_loop"));
    				cruiser_sounds_playing = true;
    			}
    		}
    		if (!left_down && !right_down){
    			wheels_index = lerp(wheels_index, 0, 0.2);
    			sound_stop(cruiser_engine_sound);
    			cruiser_sounds_playing = false;
    		}
    		if (!hitpause){
    			cruiser_charge++;
    		}
    		if (hsp <= 1 && spr_dir == 1 || hsp >= -1 && spr_dir == -1 || free){
    			set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 0);
    		} else {
    			reset_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME);
    		}
    		
    		if (hsp >= -1 && spr_dir == 1 || hsp <= 1 && spr_dir == -1 || free){
    			set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 0);
    		} else {
    			reset_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME);
    		}
    		if ((cruiser_charge > 7) && (!special_down || cruiser_charge >= 100)) || was_parried{
    			var dir = right_down - left_down;
    			if (dir != 0) spr_dir = dir;
    			window = 3;
    			window_timer = 0;
    			sound_stop(cruiser_rev_sound);
    			sound_stop(cruiser_engine_sound);
    			cruiser_sounds_playing = false;
    			if (was_parried) cruiser_charge = 0;
    			destroy_hitboxes();
    		}
    		if (shield_down){
    			window = 9;
    			window_timer = 0;
    			sound_stop(cruiser_rev_sound);
    			sound_stop(cruiser_engine_sound);
    			cruiser_sounds_playing = false;
    		}
    		if (!hitpause && cruiser_charge > 6 && get_gameplay_time() % 6 == 0){
    			var smoke = spawn_hit_fx(x - 96*spr_dir , y - 32, jetpack_smoke);
    			smoke.vsp = -5;
    			smoke.depth = depth-1;
    			if (!free) spawn_base_dust(x - 84*spr_dir, y, "dash", spr_dir);
    		}
    	}
    	if (window == 3){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			sound_play(sound_get("uspec2_active"));
    			sound_play(sound_get("uspec2_boost"));
    			if (!free && !hitpause) spawn_base_dust(x - 76*spr_dir, y, "dash_start", spr_dir);
    		}
    	}
    	if (window == 4){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			hsp = (5 + (round(cruiser_charge/25))) * spr_dir;
    			vsp = -12 - (round(cruiser_charge/15));

    		}
    	}
    	if (window == 4 || window == 5 || window == 6 || window == 7){
    		 hud_offset = 96 - (rabbit_suit*24);;
    	}
    	
    	if (window == 7){
    		if (!free){
    			window = 8;
    			window_timer = 0;
    			hud_offset = 52;
    			destroy_hitboxes();
    			sound_play(asset_get("sfx_tow_anchor_land"), false, noone, 1, 0.5);
    			sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 0.7);
    			spawn_base_dust(x + 70*spr_dir, y, "dash_start", -spr_dir);
    			spawn_base_dust(x - 30*spr_dir, y, "dash_start", spr_dir);
    		}
    	}
    	if (window == 8){
    		hud_offset = 52;
    		if (!hitpause && get_gameplay_time() % 6 = 0){
    			var smoke = spawn_hit_fx(x - 72*spr_dir , y - 84, jetpack_smoke);
    			smoke.vsp = -5;
    			smoke.depth = depth-1;
    		}
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			spawn_hit_fx(x + 12*spr_dir, y - 44, vfx_explosion);
    			sound_play(sound_get("uspec2_explode"));
    			if (!was_parried){
				var explosion = create_hitbox(AT_USPECIAL_2, 5, x, y-56);
				explosion.can_hit_self = true;
    			}
				cruiser_debris_crash();
				i_exploded = true;
				in_cruiser = false;
				move_cooldown[AT_USPECIAL_2] = 120;
    		}
    	}
    	if (window == 9){
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			vsp = -20;
    			sound_play(sound_get("uspec2_eject"));
    			in_cruiser = false;
    			spawn_base_dust(x + 70*spr_dir, y, "dash_start", -spr_dir);
    			spawn_base_dust(x - 60*spr_dir, y, "dash_start", spr_dir);
    			var eject = spawn_hit_fx(x + 1*spr_dir, y - 62, vfx_cruiser_eject);
    			eject.spr_dir = spr_dir;
    			can_fast_fall = true;
    		}
    	}
    break;
    case AT_USPECIAL_FAIL:
    	can_wall_jump = true;
    break;
    case AT_DSPECIAL:
    	can_fast_fall = false;
    	if (window == 1){
    		if (window_timer = 1 && !hitpause){
    			available_scrap[31].orig_value = random_func(10, 199, true) + 1;
    			available_scrap[31].value = available_scrap[31].orig_value;
    		}
    	}
    	if (window == 2){
    		if (window_timer == 17 && !hitpause){
    			spawn_hit_fx(x, y, dspecial_linger)
    		}
    		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    			if (scan_nofind) {
    				window = 5;
    				window_timer = 0;
    			}
    			if (!has_scrap){
    				scrap_found_timer = 0;
    				current_scrap = available_scrap[random_func(7, array_length(available_scrap), true)];
    				//current_scrap = available_scrap[9]; //debug thing
    				prev_scrap = current_scrap;
    				scrap_visual_dir = spr_dir;

    				if (current_scrap.index == 31){
    					if (random_func(9, 10, true) > 0){
    						current_scrap = available_scrap[random_func(8, array_length(available_scrap) - 1, true)];
    						prev_scrap = current_scrap;
    						//print("no dog here.");
    					}
    				}
    				scrap_visual_size = current_scrap.size;
    				scrap_visual_name = string(current_scrap.name);
    				scrap_visual = true;
    				if (current_scrap.index == 7){
    					sound_play(sound_get("quackerz"), false, noone, 1, 1);
    				}
    				if (current_scrap.index == 18){
    					sound_play(sound_get("scrap_mask_laugh" + string(random_func(6, 2, true) + 1 )), false, noone, 0.75, 1);
    				}
    				if (current_scrap.index == 19){
    					sound_play(sound_get("scrap_mask_cry" + string(random_func(6, 2, true) + 1 )), false, noone, 0.75, 1);
    				}
    				if (current_scrap.index == 16 && !instance_exists(not_the_bees)){
    					not_the_bees = create_hitbox(AT_DSPECIAL_2, 3, x, y - 50);
    				}
    				/*
    				if (scanned_player_value){
    					current_scrap.value = round(current_scrap.orig_value*1.5);
    				} else {
    					current_scrap.value = current_scrap.orig_value;
    				}*/
    				place_anim = current_scrap.size;
    				scrap_visual_value = current_scrap.value;
    			}
    		}
    	}
    	if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    		if (current_scrap != noone && !has_scrap){
    			has_scrap = true;
    			item_weight =  current_scrap.weight;
    			calculate_weight();
    			//print("Scrap found: " + string(current_scrap.name));
    		}
    	}
    	if (window == 6){
    		if (window_timer == 3 && !hitpause){
    			if (!instance_exists(jeb_obj)){
    				jeb_obj = instance_create(x + 36*spr_dir, y - 54, "obj_article2");
    		}
    			if (has_scrap && instance_exists(jeb_obj) && array_length(jeb_obj.scrap_on_counter) < 5 && jeb_obj.state <= 2){
    				with (jeb_obj){
    					scrap_total += player_id.current_scrap.value;
    					sound_play(player_id.current_scrap.sfx, false, noone, 0.6, 1);
    					array_push(scrap_instances, player_id.current_scrap);
						var scrap_num = array_length(scrap_on_counter);
						scrap_instances[scrap_num].pos = random_func(5, 98, true);
						scrap_instances[scrap_num].index = player_id.current_scrap.index;
    					array_push(scrap_on_counter, scrap_instances[scrap_num]);
    				}
    			}
    			scrap_found_timer = 0;
    			item_weight = 0;
    			current_scrap = noone;
    			has_scrap = false;
    			calculate_weight();
    			}
    	}
    break;
    case AT_DSPECIAL_2:
    if (window == 1 || window == 4 || window == 7 || window == 13 || window == 16 || window == 10) && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
    	item_weight = 0;
    	has_scrap = false;
    	calculate_weight();
    	if (window == 16 && !hitpause && free){
    		vsp = -5;
    	}
    }
       hud_offset = 42 - (rabbit_suit*24);
    break;
    case AT_TAUNT:
    taunt_timer++;
    if (window == 2 && !taunt_down && taunt_timer > 64){
    	window = 3;
    	window_timer = 0;
    }
    if (special_pressed && !is_ranking_up && quota_level < quota_level_max && get_match_setting(SET_PRACTICE) == true){
		is_ranking_up = true;
		quota_level += 1;
		quota_current = 0;
	}
    break;
    case AT_TAUNT_2:
    taunt_timer++;
    if (window == 2 && !taunt_down && taunt_timer > 60){
    	window = 3;
    	window_timer = 0;
    }
    break;
}

#define calculate_weight()

	weight_value = passive_weight + item_weight;
	dash_speed = lerp(7, 4, weight_value/weight_max);
	initial_dash_speed = lerp(7.5, 4.5, weight_value/weight_max);
	wave_land_adj = lerp(1.4, 1, weight_value/weight_max);
	air_max_speed = lerp(4.5, 3, weight_value/weight_max);
	gravity_speed = lerp(0.5, 0.65, weight_value/weight_max);
	leave_ground_max = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	max_jump_hsp = round(lerp(7, 3, weight_value/weight_max)*2) / 2;
	wave_friction = lerp(0.11, 0.2, weight_value/weight_max);


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

#define drop_melee_vfx()

if (attack == AT_UAIR || attack == AT_UAIR_2 || attack == AT_UAIR_3){
    var dropped_melee = spawn_hit_fx(x + 14*spr_dir, y - 26, vfx_drop_melee[curr_melee]);
    dropped_melee.hsp = 2 * spr_dir;
    dropped_melee.vsp = -5;
    dropped_melee.spr_dir = spr_dir;
    dropped_melee.draw_angle = -90*spr_dir;
}

if (attack == AT_FAIR || attack == AT_FAIR_2 || attack == AT_FAIR_3){
	var dropped_melee = spawn_hit_fx(x - 14*spr_dir, y - 22, vfx_drop_melee[curr_melee]);
    dropped_melee.hsp = 2 * -spr_dir;
    dropped_melee.vsp = -5;
    dropped_melee.spr_dir = -spr_dir;
    dropped_melee.draw_angle = -180*spr_dir;
}

if (attack == AT_USTRONG|| attack == AT_USTRONG_2 || attack == AT_USTRONG_3){
	var dropped_melee = spawn_hit_fx(x + 20*spr_dir, y - 25, vfx_drop_melee[curr_melee]);
    dropped_melee.hsp = 1 * spr_dir;
    dropped_melee.vsp = -1;
    dropped_melee.spr_dir = spr_dir;
    dropped_melee.draw_angle = -90*spr_dir;
}

#define strong_walk()

    strong_walk_dir = right_down - left_down;
    if (strong_walk_dir == 0){
    	strong_walk_hsp = 0;
    	hsp = 0;
    }
    	if (strong_walk_dir != 0 && window == 1 && smash_charging){
    	    if (!hitpause){
    	    	if (hsp < walk_speed || hsp > -walk_speed){
					strong_walk_hsp += walk_accel*strong_walk_dir;
					strong_walk_hsp = clamp(strong_walk_hsp, -walk_speed, walk_speed)
					hsp = strong_walk_hsp;
					//print(hsp);
    	    	}
				if (strong_charge % 8 == 0){
					spawn_base_dust(x - 4*spr_dir, y, "walk", spr_dir);
				}
    		}	
    	}
    	
#define zap_gun()

    	if (attack == AT_FSPECIAL_2 && hbox_num <= 4){
			with (oPlayer) if (place_meeting(x, y, other) && id != other.player_id){
				with (other.player_id){
					destroy_hitboxes();
					window = 4;
					window_timer = 0;
					sound_play(sound_get("fspec2_detect"), false, noone, 0.7, 1);
				}
			}
		}
    	
#define terminal_browsing()

    		switch (terminal_slot){
    			case 0: //melee weapon
    			if (right_pressed){
    				terminal_melee_index++;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 3;
    				window_timer = 0;
    			}
    			if (left_pressed){
    				terminal_melee_index--;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 4;
    				window_timer = 0;
    			}
    			if (attack_pressed && terminal_slot_buffer = 0){
    				if (quota_level < melee_weapons[terminal_melee_index].rank_req || curr_melee == melee_weapons[terminal_melee_index].index){
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_error"));
    					terminal_slot_buffer = 10;
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				} else {
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_confirm"));
    					terminal_slot_buffer = 10;
    					curr_melee = melee_weapons[terminal_melee_index].index
    					if (!melee_weapons[terminal_melee_index].was_bought){
    						melee_weapons[terminal_melee_index].was_bought = true;
    						overtime_bonus += 4;
    					}
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				}
    			}
    			break;
    			case 1: //fspec
    			if (right_pressed){
    				terminal_fspec_index++;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 3;
    				window_timer = 0;
    			}
    			if (left_pressed){
    				terminal_fspec_index--;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 4;
    				window_timer = 0;
    			}
    			if (attack_pressed && terminal_slot_buffer = 0){
    				if (quota_level < fspecial_tools[terminal_fspec_index].rank_req || curr_fspec == fspecial_tools[terminal_fspec_index].index){
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_error"));
    					terminal_slot_buffer = 10;
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				} else {
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_confirm"));
    					terminal_slot_buffer = 10;
    					curr_fspec = fspecial_tools[terminal_fspec_index].index
    					if (!fspecial_tools[terminal_fspec_index].was_bought){
    						fspecial_tools[terminal_fspec_index].was_bought = true;
    						overtime_bonus += 4;
    					}
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				}
    			}
    			break;
    			case 2: //uspec
    			if (right_pressed){
    				terminal_uspec_index++;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 3;
    				window_timer = 0;
    			}
    			if (left_pressed){
    				terminal_uspec_index--;
    				sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    				window = 4;
    				window_timer = 0;
    			}
    			if (attack_pressed && terminal_slot_buffer = 0){
    				if (quota_level < uspecial_tools[terminal_uspec_index].rank_req || curr_uspec == uspecial_tools[terminal_uspec_index].index){
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_error"));
    					terminal_slot_buffer = 10;
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				} else {
    					sound_play(sound_get("terminal_type" + string( random_func(0, 5, true) + 1 ) ));
    					sound_play(sound_get("terminal_confirm"));
    					terminal_slot_buffer = 10;
    					curr_uspec = uspecial_tools[terminal_uspec_index].index
    					if (!uspecial_tools[terminal_uspec_index].was_bought){
    						uspecial_tools[terminal_uspec_index].was_bought = true;
    						overtime_bonus += 4;
    					}
    					window = random_func(0, 2, true) + 3;
    					window_timer = 0;
    				}
    			}
    			break;
    	}

#define cruiser_debris_crash()
var debris1 = spawn_hit_fx(x + 2*spr_dir, y - 36, vfx_cruiser_debris[0]);
debris1.spr_dir = spr_dir;
debris1.draw_angle = -180*spr_dir;
debris1.hsp = -4*spr_dir;
debris1.vsp = -12;
var debris2 = spawn_hit_fx(x - 12*spr_dir, y - 60, vfx_cruiser_debris[1]);
debris2.spr_dir = spr_dir;
debris2.draw_angle = -180*spr_dir;
debris2.hsp = -2*spr_dir;
debris2.vsp = -16;
var debris3 = spawn_hit_fx(x + 2*spr_dir, y - 70, vfx_cruiser_debris[1]);
debris3.spr_dir = -spr_dir;
debris3.draw_angle = 180*spr_dir;
debris3.hsp = 4*spr_dir;
debris3.vsp = -12;

#define knife_rapid_jab()


	if (attack_down){
		if (right_down || left_down){
    		window = 8;
		} else {
			window = 7;
			hsp = 0;
		}
	}

// spawn_base_dust made by Supersonic
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
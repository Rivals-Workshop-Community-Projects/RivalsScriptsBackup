//Jab
if (attack == AT_JAB){
	if (window == 1 && window_timer == 2){
		jab_parried = false;
	}
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x + (28 * spr_dir), y, "dattack", spr_dir*-1);
		// windbox rune
		if(windRune){
			for (var i = 0; i < 6; i++){//>
				spawn_base_dust( (x + (24+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
				spawn_base_dust( (x + (54+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
				spawn_base_dust( (x + (84+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
			}
		}
	}
	if (window == 3){
		if (has_hit && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)
		|| !has_hit && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5)){
			if (attack_down && !jab_parried){
				attack_end();
				window = 1;
				window_timer = 0;
				has_hit = false;
			}
			if (jab_parried){
				//
			}
		}
		if (has_hit){
			can_jump = true;
		}
		if (has_hit && window_timer > get_window_value(attack, window, AG_WINDOW_LENGTH) - 6
		|| !has_hit && window_timer > ((get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5)-6)){
			can_attack = true;
			move_cooldown[AT_JAB] = 2;
		}
	}
	clamp(hsp, -3, 3)
	can_move = true;
	hsp = clamp(hsp, -5.2, 5.2);
	if (left_down && !right_down){
		hsp += -0.5 - (jabRune * 0.52);
	} else if (!left_down && right_down){
		hsp += 0.5 + (jabRune * 0.52);
	}
}

//Dash Attack
if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == 2){
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir)
		}
	}
}

//Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir)
			spawn_base_dust( x + (22 * spr_dir), y, "dash", spr_dir*-1)
		}
	}
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 5)){
		hud_offset = 42;
	}
}

//Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		clear_button_buffer(PC_ATTACK_PRESSED);
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10 * spr_dir), y, "dattack", spr_dir);
			clear_button_buffer(PC_ATTACK_PRESSED);
		}
	}
	if (window != 6){
		if (free){
			spawn_base_dust( x - (16 * spr_dir), y, "dash", spr_dir)
			set_state(PS_IDLE_AIR);
			if (hsp > 9){
				hsp = 10
			}
			if (hsp < -9){ //>
				hsp = -10
			}
			hsp *= 0.6
		}
		if (window != 1 && window != 5){
			if (dtiltRune && !hitpause){
				can_jump = true;
			}
		}
	}
	if (window == 6){
		if (window_timer == 1){
			spawn_base_dust( x - (0 * spr_dir), y, "jump", spr_dir)
		}
	}
}

//Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-3){
			sound_play(sfx_air_ride_quick_spin_short);
		}
	}
}

//Up Air
if (attack == AT_UAIR){
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 5)){
		hud_offset = 46;
	}
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){//>
		sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
	}
}

//Down Air
if (attack == AT_DAIR){
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
		sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
	}
}

//Forward Strong: Broom Flick
if (attack == AT_FSTRONG){
	if (window == 1){
		if (window_timer == 2){
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10 * spr_dir), y, "walk", spr_dir)
		}
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 5){
			sound_play(sfx_star_allies_cleaning_swipe_1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (34 * spr_dir), y, "dash_start", spr_dir*-1)
			spawn_base_dust( x - (-6 * spr_dir), y, "dattack", spr_dir)
			hsp = 2.6*spr_dir;
			
			if(windRune){
				for (var i = 0; i < 6; i++){//>
					spawn_base_dust( (x + (24+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (54+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (84+(i*6)) * spr_dir), y-(i*7), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (24+(i*6)) * spr_dir), y-42-(i*7), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (54+(i*6)) * spr_dir), y-42-(i*7), "wavedash", spr_dir*-1);
					spawn_base_dust( (x + (84+(i*6)) * spr_dir), y-42-(i*7), "wavedash", spr_dir*-1);
				}
			}
		}
	}
	if (window == 4){
		if (image_index == 11){
			fstrong_land_timer++;
			if (fstrong_land_timer == 1){
				spawn_base_dust( x - (6 * spr_dir), y, "walk", spr_dir)
				sound_play(land_sound);
			}
		}
	} else {
		fstrong_land_timer = 0;
	}
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || (window == 4 && image_index < 10)){
		hud_offset = 46;
	}//>
}

//Up Strong
if (attack == AT_USTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (8 * spr_dir), y, "dash_start", spr_dir*-1)
			if (ustrongJumpRune){
				vsp = -7.2 - (strong_charge / 11);
			}
		}
	}
	if (window == 4){
		if (image_index == 9){
			ustrong_land_timer++;
			if (ustrong_land_timer == 1){
				//spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir)
				spawn_base_dust( x - 12, y, "walk", 1)
				spawn_base_dust( x + 12, y, "walk", -1)
				sound_play(land_sound);
			}
		}
	} else {
		ustrong_land_timer = 0;
	}
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || (window == 4 && image_index < 8)){
		hud_offset = 38;
	}//>
}

//Down Strong
if (attack == AT_DSTRONG){
	if (window == 2 || window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (window == 2){
				spawn_base_dust( x - (14 * spr_dir), y, "dash", spr_dir);
				sound_play(sfx_krdl_water_use, false, noone, 0.4, 1.2);
			}
			if (window == 4){
				spawn_base_dust( x + (14 * spr_dir), y, "dash", spr_dir*-1);
				sound_play(sfx_krdl_water_use, false, noone, 0.4, 1.2);
			}
			sound_play(asset_get("sfx_swish_medium"), false, noone, 1, 1.05);
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Neutral Special: Cleaning Pitch
if (attack == AT_NSPECIAL){
	if (window == 1){
		nspecial_charged = false;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_charge);
		}
	}
	if (window == 2){
		//hsp = clamp(hsp, -2.25, 2.25);
		if (!special_down){
			window = 3;
			window_timer = 0;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window_timer = 0;
			if (nspecial_charged == false){
				nspecial_charged = true;
				sound_stop(sfx_charge);
				sound_play(sfx_charge_max);
				var fx = spawn_hit_fx( x + -2 * spr_dir, y - 24, 304 );
				fx.pause = 8.58;
			}
		}
		if (nspecial_charged == true){
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sfx_star_allies_clean_pitch_swipe_charged);
		} else if (nspecial_charged == false){
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sfx_star_allies_clean_pitch_swipe);
		}
	}
    if (window == 3){
		sound_stop(sfx_charge);
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var water_proj = create_hitbox( AT_NSPECIAL, 1, x+(24*spr_dir), y-38 );
			if (nspecial_charged == true){
				water_proj.hsp *= 1.15
				water_proj.vsp *= 1.1
				water_proj.water_proj_was_charged = true;
				spawn_base_dust( x - (4 * spr_dir), y, "dash_start", spr_dir)
				if(additionalNspecChargeRune){
					var waterSmallProj1 = create_hitbox( AT_NSPECIAL, 2, x+(32*spr_dir), y-42 );
					var waterSmallProj2 = create_hitbox( AT_NSPECIAL, 4, x+(32*spr_dir), y-42 );
				}
			}
			else if (nspecial_charged == false){
				water_proj.hsp *= 0.85
				water_proj.vsp *= 0.95
				water_proj.water_proj_was_charged = false;
				spawn_base_dust( x - (2 * spr_dir), y, "dash", spr_dir)
			}
			water_proj.projAngleTickRotateBack = spr_dir;
		}
	}
	if (window == 5){
		move_cooldown[AT_NSPECIAL] = 60;
	}
}

//Forward Special: Cleaning Nago
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
    if (window == 1){
		fspecJumpSavedHsp = 0;
		fspecJumpRuneInputted = false;
		hsp *= 0.92;
		vsp *= 0.92;
        if (window_timer == 6){
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
        }
		if (window_timer == 6){
			sound_play(sfx_blip, false, noone, 1, 1);
        }
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (2 * spr_dir), y, "dash_start", spr_dir)
		}
    }
	if (!hitpause){
		if (window == 2 || window == 3){
			vsp = clamp(vsp, -1, 1)
			if (window_timer == 4 || window_timer == 9){
				var water_vfx = spawn_hit_fx( x + 4 * spr_dir, y, water_trail_vfx );
				water_vfx.depth = 10;
			}
			if (place_meeting(x + 4 * spr_dir, y, asset_get("par_block"))){
				window = 7;
				window_timer = 0;
				sound_stop(sfx_star_allies_clean_nago);
				sound_play(sfx_stomp);
				spawn_base_dust(x+(24*spr_dir), y-6, "walljump", spr_dir * -1);
				move_cooldown[AT_FSPECIAL] = 9999999;
				vsp = -3.5;
				x -= 2 * spr_dir;
				destroy_hitboxes();
			}
			
			if (fspecialJumpRune){
				if (jump_pressed && !hitpause){
					window = 5;
					window_timer = 0;
					fspecJumpSavedHsp = hsp;
					fspecJumpRuneInputted = true;
					destroy_hitboxes();
				}
			}
		}
	}
	if (window == 4){
		move_cooldown[AT_FSPECIAL] = 99999;
		if (window_timer == 12){
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
		}
	}
	if (window == 5){
		hsp *= 0.67;
		vsp *= 0.67;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!gb_alt && !gold_alt){
				spawn_hit_fx( x + 0 * spr_dir, y, fspecial_nago_throw_vfx );
			} else if (gb_alt && !gold_alt){
				spawn_hit_fx( x + 0 * spr_dir, y, fspecial_nago_throw_ea_vfx );
			} else if (!gb_alt && gold_alt){
				spawn_hit_fx( x + 0 * spr_dir, y, fspecial_nago_throw_gold_vfx );
			}
			spawn_base_dust( x + (2 * spr_dir), y, "jump", spr_dir)
			window = 6;
			window_timer = 0;
			vsp = -8;
			if (!fspecialJumpRune && !fspecJumpRuneInputted){
				hsp = 5*spr_dir;
			} else if (fspecialJumpRune && fspecJumpRuneInputted){
				hsp = fspecJumpSavedHsp;
			}
			sound_play(sfx_friend_bounce);
		}
	}
	if (window == 6){
		move_cooldown[AT_FSPECIAL] = 99999;
	}
}

//Up Special: Cleaning ChuChu
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	// rune
	if (uspecialBoostRune && window > 1 && has_hit && !hitpause){
		can_attack = true;
		if (attack_pressed || (up_stick_pressed || down_stick_pressed || left_stick_pressed || right_stick_pressed)){
			sound_stop(sfx_star_allies_clean_chuchu);
			sound_play(sfx_star_allies_clean_chuchu_end);
		}
	}
    if (window == 1){
		hsp *= 0.75;
		vsp *= 0.6;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_star_allies_clean_chuchu);
			sound_play(asset_get("sfx_bird_sidespecial"));
			hsp += 3.5 * spr_dir
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir)
			if (free){
				spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir)
			}
			
			star_vfx = spawn_hit_fx( x - 30 * spr_dir, y, uspecial_star_vfx );
			star_vfx.draw_angle = -95*spr_dir;
			star_vfx2 = spawn_hit_fx( x + 30 * spr_dir, y, uspecial_star_vfx );
			star_vfx2.draw_angle = 95*spr_dir;
			
			sparkle_vfx = spawn_hit_fx( x - 25 * spr_dir, y, uspecial_sparkle_vfx );
			sparkle_vfx.draw_angle = -40*spr_dir;
			sparkle_vfx2 = spawn_hit_fx( x + 25 * spr_dir, y, uspecial_sparkle_vfx );
			sparkle_vfx2.draw_angle = 40*spr_dir;
			sparkle_vfx3 = spawn_hit_fx( x - 25 * spr_dir, y, uspecial_sparkle_vfx );
			sparkle_vfx3.draw_angle = -60*spr_dir;
			sparkle_vfx4 = spawn_hit_fx( x + 25 * spr_dir, y, uspecial_sparkle_vfx );
			sparkle_vfx4.draw_angle = 60*spr_dir;
			
			y -= 8;
		}
	}
	if (window == 2 || window == 3 || window == 4){
		if (window_timer == 2 || window_timer == 4 || window_timer == 6 || window_timer == 8 || window_timer == 10 || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!hitpause){
				var x_offset = random_func( 0, 18, true )+9;
				if (window == 4){
					var y_offset = 10;
				} else {
					var y_offset = 20;
				}
				var angle_change_1 = random_func( 0, 24, true );
				var angle_change_2 = random_func( 0, 12, true );
				var angle_change_3 = random_func( 0, 24, true );
				var angle_offset = (-20*spr_dir);
				star_vfx = spawn_hit_fx( x - x_offset * spr_dir, y+y_offset, uspecial_star_vfx );
				star_vfx.draw_angle = (-12+(angle_change_1))*spr_dir;
				sparkle_vfx = spawn_hit_fx( x - x_offset * spr_dir, y+y_offset, uspecial_sparkle_vfx );
				sparkle_vfx.draw_angle = (-12+(angle_change_2))*spr_dir;
			}
		}
	}
	if (window == 4){
		if (vsp < -1){
			//vsp += 0.7
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sfx_star_allies_clean_chuchu);
			sound_play(sfx_star_allies_clean_chuchu_end);
			vsp = -4.5;
			spawn_base_dust( x + (0 * spr_dir), y, "doublejump", spr_dir)
		}
	}
}

//Down Special: Friend Super-Vac
if (attack == AT_DSPECIAL){
	if (window == 1){
		throw_angle = 45;
		dspecial_holding_vac_no_angle_selected = 0;
	}
    if (window == 2){
        if (up_down && throw_angle < 75){
        	throw_angle = 75;
			dspecial_holding_vac_no_angle_selected = 0;
        	sound_play(sfx_krdl_menu_move);
        }
        if (down_down && throw_angle > 15){
        	throw_angle = 15;
			dspecial_holding_vac_no_angle_selected = 0;
        	sound_play(sfx_krdl_menu_move);
        }
		if (!up_down && !down_down){
			throw_angle = 45;
			dspecial_holding_vac_no_angle_selected++;
			if (dspecial_holding_vac_no_angle_selected == 1){
				sound_play(sfx_krdl_menu_move);
			}
		}
		
		//Reversing direction
		if (left_down && !right_down){
			spr_dir = -1;
		} else if (!left_down && right_down){
			spr_dir = 1;
		}
		
        if (special_down && shield_pressed){
        	window = 5;
        	window_timer = 0;
			sound_play(asset_get("sfx_jumpground"));
        }
        if (!special_down){
        	window = 3;
        	window_timer = 0;
        } 
    }
    
    if (window == 3 && window_timer == 6){
    	vacuum = instance_create(x+20*spr_dir, y-20, "obj_article1"); 
    	vacuum.ogSprDir = vacuum.spr_dir
    	if (throw_angle == 75){
    		vacuum.hsp = 1.5*spr_dir;
    		vacuum.vsp = -8;
    	}
    	if (throw_angle == 45){
    		vacuum.hsp = 3*spr_dir;
    		vacuum.vsp = -4;
    	}
    	if (throw_angle == 15){
    		vacuum.hsp = 7*spr_dir;
    		vacuum.vsp = -2;
    	}
    }
    
    if (window == 5 && window_timer == 6){
    	vacuum = instance_create(x+30*spr_dir, y-10, "obj_article1"); 
    	vacuum.state = 1;
		if (!free){
			sound_play(asset_get("sfx_shovel_hit_med2"));
		} else {
			sound_play(asset_get("sfx_swipe_medium2"));
		}
    }
}
if (attack == AT_DSPECIAL_2){
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && vacuum.state == 2){
		vacuum.state = 3;
		vacuum.state_timer = 0;
		vacuum.image_index = 0;
		vacuum.throw_direction = spr_dir;
	}
}

//Taunt
if (attack == AT_TAUNT){
	if (window == 4){
		if (window_timer == 8){
			spawn_base_dust( x - (6 * spr_dir), y, "walk", spr_dir)
			spawn_base_dust( x + (6 * spr_dir), y, "walk", spr_dir*-1)
			//sound_play(land_sound);
		}
	}
	if (window == 5){
		if (window_timer == 3){
			if (taunt_down){
				window_timer = 2;
			}
		}
	}
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
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
	
	case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": dlen = 21; dfx = 16; dfg = 0; break;
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

//--------------------------------------------
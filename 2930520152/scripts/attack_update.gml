//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(aether_alt_input){
	var aether_input = !special_down;
} else {
	var aether_input = (shield_pressed || shield_down);
}

var rof = variable_instance_exists(self, "superTrue");

var dir;
var for_down;
var back_down;
dir = right_down ? 1 : -left_down;
for_down = (dir == spr_dir);
back_down = (dir*-1 == spr_dir);

//eruption removeal

var normal_snuff = (attack == AT_JAB || attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK || attack == AT_NAIR || attack == AT_FAIR
|| attack == AT_UAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG);

var whifflag_check = get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG);

if(normal_snuff && window == get_attack_value(attack, AG_NUM_WINDOWS) && 
window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) + round(get_window_value(attack, window, AG_WINDOW_LENGTH) * !has_hit * .5 * whifflag_check) && eruption_stored){
	eruption_stored = 0;
}

// gives him grab
if((attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_JAB || attack == AT_NAIR)
&& window == 1 && window_timer < 5 && attack_pressed && special_pressed /*!free*/ && (rof || has_rune("A"))){
	set_attack(AT_DSPECIAL_2);
}

//standard voice clips
var normal_voice = (attack == AT_FTILT || attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK || attack == AT_NAIR || attack == AT_FAIR
|| attack == AT_UAIR || attack == AT_BAIR || attack == AT_DAIR || attack == AT_FTHROW || attack == AT_UTHROW);
var throw_voice = ((attack == AT_NTHROW && window == 3) || ((attack == AT_DTHROW || attack == AT_EXTRA_1) && window == 3));

if(((normal_voice && window == 1) || (attack == AT_JAB && window == 7) || throw_voice) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	voice_play();
}

switch(attack){
	case AT_JAB:
	{
		
	}
	break;
	
	case AT_FTILT:
	{
		reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
		var base_kb = get_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
		var kb_scaling = get_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
		if(window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH) && !hitpause){
			if(up_down || up_stick_down){
				set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 8);
				set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
				set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -60);
				set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
				set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, base_kb + 1);
				set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, kb_scaling + .05);
				
				set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 50);
				set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 70);
				set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -55);
				set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
				set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 30);
				set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
				set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 50);
				set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .4);
				set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, .8);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("flareu"));
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 12);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_VSPEED, -4);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GRAVITY, 0);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_AIR_FRICTION, 0);
			} else if(down_down || down_stick_down){
				set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 13);
				set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 15);
				set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -16);
				set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 35);
				set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, base_kb - 1);
				set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, kb_scaling - .15);
				
				set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 60);
				set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 70);
				set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -10);
				set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
				set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 30);
				set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
				set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
				set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .4);
				set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, .8);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("flared"));
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED, 10);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_VSPEED, 0);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GRAVITY, .5);
				set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_AIR_FRICTION, .1);
			} else {
				reset_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START);
				reset_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START);
				reset_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y);
				reset_hitbox_value(AT_FTILT, 1, HG_ANGLE);
				reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
				
				reset_hitbox_value(AT_FTILT, 2, HG_LIFETIME);
				reset_hitbox_value(AT_FTILT, 2, HG_HITBOX_X);
				reset_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y);
				reset_hitbox_value(AT_FTILT, 2, HG_WIDTH);
				reset_hitbox_value(AT_FTILT, 2, HG_HEIGHT);
				reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
				reset_hitbox_value(AT_FTILT, 2, HG_ANGLE);
				reset_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER);
				reset_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE);
				reset_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_HSPEED);
				reset_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_VSPEED);
				reset_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_GRAVITY);
				reset_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_AIR_FRICTION);
			}
		}
	}
	break;
	
	case AT_UTILT:
	{
		can_fast_fall = hitpause && get_hitbox_value(AT_UTILT, 1, HG_HIT_SFX) == sound_get("sfx_attack_l");
		if (window == 1){
	        if (attack_down || up_stick_down){ 
		        set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -10);
		        set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, 0);
				set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 0);
				set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
				set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
				set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
				set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_UTILT, 1, HG_FINAL_BASE_KNOCKBACK, 8);//6
				set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
				set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 8);//12
				set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("sfx_attack_l"));
	        } else {
	        	reset_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED);
	        	reset_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED);
				reset_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE);
				reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
				reset_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES);
				reset_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH);
				reset_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START);
				reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
				reset_hitbox_value(AT_UTILT, 1, HG_FINAL_BASE_KNOCKBACK);
				reset_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING);
				reset_hitbox_value(AT_UTILT, 1, HG_LIFETIME);
				reset_hitbox_value(AT_UTILT, 1, HG_HIT_SFX);
	        }
		}
		if(window == 3 && window_timer == 8 && !hitpause && get_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START) != 8){
			vsp = 6;
		}
		if(window == 4 && !free){
			reset_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START);
		}
	}
	break;
	
	case AT_UAIR:
	{
		if(window == 1 && get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) && !hitpause){
			if(attack_down || up_strong_down || strong_down || up_stick_down){
				set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 10);
				set_window_value(AT_UAIR, 2, AG_WINDOW_GOTO, 5);
				set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
				set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 0);
				set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
			} else {
				reset_attack_value(AT_UAIR, AG_NUM_WINDOWS);
				reset_window_value(AT_UAIR, 2, AG_WINDOW_GOTO);
				reset_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH);
				reset_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME);
				reset_window_value(AT_UAIR, 2, AG_WINDOW_SFX);
			}
		}
		if(window == 10){
			can_wall_jump = true;
		}
	}
	break;
	
	case AT_FSTRONG:
	{
		if(window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1){
			if(taunt_pressed && !fstrong_taunted){
				fstrong_taunted = true;
				clear_button_buffer(PC_TAUNT_PRESSED);
				sound_play(sound_get("vc_taunt1"), false, false, voice_brawl);
				sound_play(sound_get("vc_ult_taunt2"), false, false, voice_ult);
			}
		}
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("vc_fstrong"), false, false, voice_brawl);
			sound_play(sound_get("vc_ult_fsmash"), false, false, voice_ult);
		}
		if(window == 3 && !free && !hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit_player){
			shake_camera(6, 6);
		}
	}
	break;
	case AT_USTRONG:
	{
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("vc_ustrong"), false, false, voice_brawl);
			sound_play(sound_get("vc_ult_usmash"), false, false, voice_ult);
		}
		if(window == 3 && !free && !hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit_player){
			shake_camera(6, 6);
		}
	}
	break;
	case AT_DSTRONG:
	{
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("vc_dstrong"), false, false, voice_brawl);
			sound_play(sound_get("vc_ult_dsmash"), false, false, voice_ult);
		}
	}
	break;
	
	case AT_NSPECIAL:
	{
		can_fast_fall = false;
		if(window > 1 && window < 5 && vsp > 0){
			vsp *= .8;
			hsp *= .9;
		}
		if(window == 2 && window_timer == 2 && !hitpause){
			spawn_base_dust(x, y, "land");
		}
		if(window == 2 && !hitpause){
			if(special_down){
				if(shield_pressed){
					set_state(PS_PRATFALL);
					if(eruption_charges >= 3){
						eruption_stored = true;
					}
					sound_play(asset_get("sfx_forsburn_consume_fail"), false, false, 1.5);
				} else {
					eruption_charge_timer++;
					if(eruption_charge_timer >= 30 && eruption_charges < 3){
						eruption_charge_timer = 0;
						eruption_charges++;
						sound_play(asset_get("sfx_burnapplied"));
						var hfx = spawn_hit_fx(x, y - char_height/2, small_quick);
				        hfx.depth = depth - 1;
				        hfx.store_damage = true;
					} else if(eruption_charge_timer >= 50 && eruption_charges >= 3){
						sound_play(sound_get("sfx_spark1"));
						window = 3;
						window_timer = 0;
						state_timer = 7;
						eruption_fullcharge = true;
						eruption_charges = 3;
						super_armor = true;
					}
				}
			} else {
				window = 5;
				window_timer = 0;
			}
		}
		if(window == 4 && !hitpause && state_timer > 27){
			window = 5;
			window_timer = 0;
		}
		if(window == 5){
			reset_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH);
			var longth = get_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH);
			set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, longth +  10 * (eruption_charges - 1));
			if(free){
				set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 7);
			} else {
				reset_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO);
			}
		}
		if(window >= 6){
			super_armor = false;
		}
		if(window == 8 && window_timer == 1){
			if(!hitpause){
				if(eruption_fullcharge){
					sound_play(sound_get("vc_nspecial"), false, false, voice_brawl);
					sound_play(sound_get("vc_ult_nspecial2"), false, false, voice_ult);
				} else {
					voice_play();
				}
			}
			switch(eruption_charges){
				case 1:
				eruption_type = 1;
				break;
				case 2:
				eruption_type = 2;
				break;
				case 3:
				eruption_type = 4;
				break;
			}
			if(eruption_fullcharge){
				eruption_type = 7;
			}
			eruption_spawn_x = x + 20 * spr_dir;
			eruption_spawn_y = y;
			instance_create(eruption_spawn_x, eruption_spawn_y, "obj_article2");
			// eruption_use_timer = eruption_use_timer_max;
			// eruption_charges = 3;
		}
		if(window == 8 && window_timer == 11 && eruption_charges > 1){
			switch(eruption_charges){
				case 2:
				eruption_type = 3;
				break;
				case 3:
				eruption_type = 5;
				break;
			}
			if(eruption_fullcharge){
				eruption_type = 8;
			}
			instance_create(eruption_spawn_x, eruption_spawn_y, "obj_article2");
			// eruption_use_timer = eruption_use_timer_max;
			// eruption_charges = 3;
		}
		if(window == 9 && window_timer == 9 && eruption_charges > 2){
			eruption_type = 6;
			if(eruption_fullcharge){
				eruption_type = 9;
			}
			instance_create(eruption_spawn_x, eruption_spawn_y, "obj_article2");
			// eruption_use_timer = eruption_use_timer_max;
			// eruption_charges = 3;
		}
		if(window == 10 && eruption_stored){
			eruption_stored = 0;
		}
	}
	break;
	
	case AT_FSPECIAL:
	{
		if(has_rune("J")){
			quick_draw_charge = max_quick_draw_charge;
			
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
			var hsped = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, hsped + quick_draw_charge/quick_draw_speed_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			var base_kb = get_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, base_kb + quick_draw_charge/quick_draw_base_kb_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			var kb_scaling = get_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, kb_scaling + quick_draw_charge/quick_draw_kb_scale_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
			var hitpause_scale = get_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, hitpause_scale + quick_draw_charge/quick_draw_kb_scale_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
			var damage_var = get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, damage_var + quick_draw_charge/quick_draw_damage_var);
		}
		can_fast_fall = false;
		if(free){
			reset_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE);
		} else {
			set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
		}
		if(has_hit || !free){
			reset_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE);
		} else {
			set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 7);
		}
		if(window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)){
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
			if(!special_down){
				window = 5;
				window_timer = 0;
			} else {
				sound_play(sound_get("sfx_prepare" + string(player)), true, false, .7);
			}
		}
		if (window == 2 && !hitpause){
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
			var hsped = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, hsped + quick_draw_charge/quick_draw_speed_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			var base_kb = get_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, base_kb + quick_draw_charge/quick_draw_base_kb_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			var kb_scaling = get_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, kb_scaling + quick_draw_charge/quick_draw_kb_scale_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
			var hitpause_scale = get_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, hitpause_scale + quick_draw_charge/quick_draw_kb_scale_var);
			
			reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
			var damage_var = get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, damage_var + quick_draw_charge/quick_draw_damage_var);
			
			
			if(quick_draw_charge < max_quick_draw_charge){
				quick_draw_charge++;
			}
	        if (!special_down){
	            window = 5;
	            window_timer = 0;
	            sound_stop(sound_get("sfx_prepare" + string(player)));
	        }
	        if(window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH) && quick_draw_charge == max_quick_draw_charge){
	        	window = 3;
	        	window_timer = 0;
	        	sound_stop(sound_get("sfx_prepare" + string(player)));
	        }
	    }
		if(window == 2 && window_timer == 2 && !hitpause){
			spawn_base_dust(x, y, "dash_start");
		}
		if(window < 5){
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH);
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH) + quick_draw_charge/floor((max_quick_draw_charge/2)));
		}
		if ((window == 3 || window == 4) && !hitpause){
	        if (!special_down || state_timer >= 180){
	            window = 5;
	            window_timer = 0;
	        }
	    }
	    if(window >= 1 && window <= 4){
		    if(window >= 2 && window <= 4){
		    	can_move = false;
		    	if(vsp < 0){
		    		vsp *= .8;
		    	}
		    }
		    if(window == 1){
		    	vsp *= .8;
		    }
	    	hsp *= .9;
	    }
	    if(window > 4){
	    	can_wall_jump = true;
	    }
	    if(window == 5 || window == 6){
		    if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free) {
		        for (var i = 1; i < 30; i++){
		            if (!place_meeting(x + hsp + 2 * spr_dir, y- i ,asset_get("par_block"))) {
		                y -= i;
		                break;
		            }
		        }
		    }
		    with(obj_article2){
		    	if(variable_instance_exists(self, "is_ike_eruption") && state != 420){
		    		if(place_meeting(x, y, other.hurtboxID)){
		    			state = 420;
		    			state_timer = 0;
		    			image_index = 0;
		    			other.eruption_stored = 1;
		    			sound_play(asset_get("sfx_burnend"));
		    		}
		    	}
		    }
	    }
	    if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
	    	sound_play(sound_get("vc_fspecial"), false, false, voice_brawl);
	    	sound_play(sound_get("vc_ult_fspecial"), false, false, voice_ult);
	    }
	    if(window == 6){
	    	if(special_pressed){
	    		if(up_down && (!free || (free && (rof || has_rune("F"))))){
	    			set_attack(AT_USPECIAL);
	    			clear_button_buffer(PC_SPECIAL_PRESSED);
	    			uspecial_pratless = eruption_stored;
	    		} else if(down_down && (!free || (free && (rof || has_rune("F")))) && window_timer > 1){
	    			set_attack(AT_DSPECIAL);
	    			clear_button_buffer(PC_SPECIAL_PRESSED);
	    		} else if(window_timer > 1){
		    		window = 8;
		    		window_timer = 0;
		    		vsp *= .2;
		    		hsp *= .2;
		    		sound_play(sound_get("sfx_dashswing"));
		    		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
		    		clear_button_buffer(PC_SPECIAL_PRESSED);
		    		clear_button_buffer(PC_ATTACK_PRESSED);
	    		}
	    	} else if((attack_pressed || attack_down) && (!free || (free && (rof || has_rune("F"))))){
	    		reset_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH);
				reset_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT);
	    		set_attack(AT_DSPECIAL_2);
	    		hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE);
	    	} else if(jump_pressed && (!free || (free && (rof || has_rune("F"))))){
	    		can_jump = true;
	    		hsp /= 2;
	    	}
	    	move_cooldown[AT_USTRONG] = 6; // prevents side b canceled ustrong
	    	move_cooldown[AT_NSPECIAL] = 2; // prevents side b canceled nspecial
	    	move_cooldown[AT_FSPECIAL] = 2;
	    	doing_fspecial = 2;
	    }
	    if(window == 6){
	    	// auto collision
	    	// var x_center = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X);
	    	// var y_center = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
	    	// var x_offset = get_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH)/2 - 10;
	    	// var y_offset = get_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT)/2 - 6;
	    	// with(hurtboxID){
	    	// 	var collision = collision_ellipse(other.x + (x_center - x_offset - 5) * other.spr_dir, other.y + y_center - y_offset, other.x + (x_center + x_offset - 5) * other.spr_dir, other.y + y_center + y_offset, pHurtBox, true, true);
	    	// }
	    	// if(collision && !jump_pressed){
	    	// 	window = 8;
	    	// 	window_timer = 0;
	    	// 	vsp *= .2;
	    	// 	hsp *= .2;
	    	// 	sound_play(sound_get("sfx_dashswing"));
	    	// 	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
	    	// 	clear_button_buffer(PC_SPECIAL_PRESSED);
	    	// 	clear_button_buffer(PC_ATTACK_PRESSED);
	    	// }
	    }
	    if(window == 9 && window_timer == get_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH) && eruption_stored){
	    	eruption_stored = 0;
	    }
	}
	break;
	
	case AT_USPECIAL:
	{
		can_wall_jump = true;
		can_fast_fall = false;
		if(has_rune("B")){
			if(window < 10){
				super_armor = true;
			} else {
				super_armor = false;
			}
		}
		if(has_hit_player && uspecial_big_hit){
			reset_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X);
			reset_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y);
			reset_hitbox_value(AT_USPECIAL, 2, HG_WIDTH);
			reset_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT);
			
			reset_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X);
			reset_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y);
			reset_hitbox_value(AT_USPECIAL, 3, HG_WIDTH);
			reset_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT);
			
			reset_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X);
			reset_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y);
			reset_hitbox_value(AT_USPECIAL, 4, HG_WIDTH);
			reset_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT);
			
			reset_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X);
			reset_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y);
			reset_hitbox_value(AT_USPECIAL, 5, HG_WIDTH);
			reset_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT);
			
			reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
			reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER);
			reset_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 3, HG_ANGLE);
			reset_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER);
			reset_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 4, HG_ANGLE);
			reset_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER);
			reset_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 5, HG_ANGLE);
			reset_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER);
			reset_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK);
			
			set_num_hitboxes(AT_USPECIAL, 9);
		} else if(!has_hit_player || uspecial_small_hit){
			set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 30);
			set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -40);
			set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
			set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
			
			set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 30);
			set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -40);
			set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
			set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 90);
			
			set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 30);
			set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -40);
			set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 60);
			set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 90);
			
			set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 30);
			set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -40);
			set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 60);
			set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 90);
			
			if(uspecial_small_hit){
				set_num_hitboxes(AT_USPECIAL, 14);
			} else {
				set_num_hitboxes(AT_USPECIAL, 9);
			}
			
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 55);
			set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
			set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 55);
			set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 9);
			set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 55);
			set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 9);
			set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 55);
			set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 9);
			set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 4);
		}
		if(window < 2){
			if((spr_dir == 1 && (joy_dir <= 70 || joy_dir >= 290)) || (spr_dir == -1 && joy_dir >= 110 && joy_dir <= 250)) && !joy_pad_idle {
				reset_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED);
				reset_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START);
			} else {
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
			}
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				if(random_func_2(abs(floor(x%200)), 2, true)){
					sound_play(sound_get("vc_uspecial1"), false, false, voice_brawl);
					sound_play(sound_get("vc_ult_uspecial1"), false, false, voice_ult);
				} else {
					sound_play(sound_get("vc_uspecial2"), false, false, voice_brawl);
					sound_play(sound_get("vc_ult_uspecial2"), false, false, voice_ult);
				}
			}
		}
		if(window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && !hitpause){
			if(instance_exists(aether_sword)){
				instance_destroy(aether_sword);
			}
			aether_sword = instance_create(x + 30 * spr_dir, y - 120, "obj_article1");
		}
		if(window == 4 && window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH) && !hitpause){
			reset_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED);
			if(!hitpause && (aether_input || was_parried)){
				if((uspecial_pratless || rof || has_rune("L")) && !was_parried){
					set_state(PS_IDLE_AIR);
					prev_state = PS_ATTACK_AIR;
					move_cooldown[AT_USPECIAL] = 30;
					clear_button_buffer(PC_SHIELD_PRESSED);
				} else {
					set_state(PS_PRATFALL);
				}
				if(instance_exists(aether_sword)){
					spawn_hit_fx(aether_sword.x, aether_sword.y, 302);
					create_hitbox(AT_USPECIAL, 10, aether_sword.x, aether_sword.y);
				} else {
					spawn_hit_fx(x + 40 * spr_dir, y - 65, 302);
					create_hitbox(AT_USPECIAL, 10, x + 40 * spr_dir, y - 65);
				}
				vsp /= 3;
				hsp /= 1.2;
				sound_play(asset_get("sfx_blow_medium3"));
			} else {
				sound_play(sound_get("sfx_swordspinh"));
			}
		}
		if(window == 8 && !free && !hitpause){
			window++;
			window_timer = 0;
			destroy_hitboxes();
			sound_play(sound_get("sfx_sword_groundhit"));
			shake_camera(6, 6);
			if(eruption_stored){
				eruption_type = 2;
				eruption_spawn_x = x + 50 * spr_dir;
				eruption_spawn_y = y;
				instance_create(eruption_spawn_x, eruption_spawn_y, "obj_article2");
			}
		}
		if(window == 10 && window_timer == get_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH) && eruption_stored){
	    	eruption_stored = 0;
	    }
	}
	break;
	
	case AT_DSPECIAL:
	{
		can_move = false;
		can_fast_fall = false;
		if(!has_rune("K")){
			move_cooldown[AT_DSPECIAL] = 20;
		}
		if(window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) && !hitpause){
	    	sound_play(asset_get("sfx_mol_bat_ready"), false, 0, 275, .6)
	    	if(!has_rune("K")){
	    		super_armor = true;
	    	}
	    }
	    if(window == 2 && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) && !hitpause){
	    	if(!has_rune("K")){
	    		super_armor = false;
	    	}
	    }
	    if(has_rune("K") && ((window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
	    || (window == 2 && window_timer < get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)))){
	    	shader_start();
	    	perfect_dodging = true;
	    	shader_end();
	    }
	}
	break;
	
	case AT_DSPECIAL_2:
	{
		can_move = false;
		can_fast_fall = false;
		if(rof || has_rune("A") || true){
			was_parried = false;
		}
		if(ike_grabbed_id != noone){
			hsp = 0;
			vsp = 0;
			if(instance_exists(ike_grabbed_id)){
				super_armor = false;
				ike_grabbed_id.super_armor = false;
				ike_grabbed_id.soft_armor = 0;
				ike_grabbed_id.invincible = false;
				ike_grabbed_id.invince_time = 0;
				with(ike_grabbed_id){
					var hsped = lengthdir_x(point_distance(x,y,other.x+30*other.spr_dir,other.y-6)/5,point_direction(x,y,other.x+30*other.spr_dir,other.y-6));
        			var vsped = lengthdir_y(point_distance(x,y,other.x+30*other.spr_dir,other.y-6)/5,point_direction(x,y,other.x+30*other.spr_dir,other.y-6));
        			x += hsped;
        			y += vsped;
        			state = PS_PRATLAND - free;
				}
			}
		}
		if(window == 4 && window_timer < get_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH) && !hitpause && window_timer >= 12){
			attack_end();
			if(!free && !on_throw_plat){
				if(for_down){
					set_attack(AT_FTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
					reset_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING);
				} else if(back_down){
					set_attack(AT_NTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
					reset_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING);
				} else if(up_down){
					set_attack(AT_UTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
					reset_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING);
				} else if(down_down){
					set_attack(AT_DTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE);
				}
			} else {
				if(for_down){
					set_attack(AT_FTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
					
			    	reset_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING);
			    	var kb = get_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING);
			    	set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, kb - .1);
						    	
				} else if(back_down){
					set_attack(AT_NTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
					
					reset_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING);
			    	var kb = get_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING);
			    	set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, kb - .1);
					
				} else if(up_down){
					set_attack(AT_UTHROW);
					hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
					
					reset_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING);
			    	var kb = get_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING);
			    	set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, kb - .1);
					
				} else if(down_down){
					set_attack(AT_EXTRA_1);
					hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE);
				}
				// if(!joy_pad_idle){
				// 	set_attack(AT_EXTRA_1);
				// 	hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
				// }
			}
		} else if(window == 4 && window_timer == get_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH)){
			attack_end();
			set_attack(AT_FTHROW);
			hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
			reset_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING);
		}
	}
	break;
	
	case AT_NTHROW: //back throw
	{
		if(window == 5 && window_timer == get_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH) && !hitpause){
			spr_dir *= -1;
		} else {
			back_throw_turn_around_turbo_mode_fix = 1;
		}
	}
	break;
	
	case AT_DTHROW:
	{
		// if(window == 3 && !hitpause){
		// 	if(window_timer == 6){
		// 		vsp = -8;
		// 	}
		// 	if(window_timer == 9){
		// 		vsp = 8;
		// 	}
		// }
	}
	break;
	
	case AT_TAUNT:
	{
		if(window == 1 && window_timer == 1){
			sound_play(sound_get("vc_taunt1"), false, false, voice_brawl);
			sound_play(sound_get("vc_ult_taunt2"), false, false, voice_ult);
		}
	}
	break;
	
	case AT_TAUNT_2:
	{
		if(window == 1){
			if(window_timer == 19 && !hitpause){
				sound_play(sound_get("vc_finalsmash"), false, false, voice_brawl);
				sound_play(sound_get("vc_ult_finalsmash"), false, false, voice_ult);
			}
		}
	}
	break;
	
	case AT_EXTRA_2:
	{
		if(window == 1){
			if(window_timer == 19 && !hitpause){
				sound_play(sound_get("vc_finalsmash"), false, false, voice_brawl);
				sound_play(sound_get("vc_ult_finalsmash"), false, false, voice_ult);
			}
		}
		if(window_timer > 20 || window > 1) && earrape{
			shake_camera(1, 2);
		}
		if(has_hit){
			set_window_value(AT_EXTRA_2, 1, AG_WINDOW_GOTO, 3);
		} else {
			reset_window_value(AT_EXTRA_2, 1, AG_WINDOW_GOTO);
		}
	}
	break;
}

if(attack == AT_FTHROW || attack == AT_NTHROW || attack == AT_UTHROW || attack == AT_DTHROW || (attack == AT_EXTRA_1 && window < 5)){
	can_move = false;
	can_fast_fall = false;
}

if((attack == AT_FTHROW || attack == AT_NTHROW || attack == AT_UTHROW) && on_throw_plat && 
window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && instance_exists(throw_plat)){
    var hfx = spawn_hit_fx(throw_plat.x, throw_plat.y, 303);
    hfx.spr_dir = throw_plat.spr_dir;
    hfx.pause = 6;
    
    var hfx = spawn_hit_fx(throw_plat.x, throw_plat.y, 303);
    hfx.spr_dir = throw_plat.spr_dir * -1;
    hfx.pause = 6;
    
    instance_destroy(throw_plat);
}

// if (attack == AT_USPECIAL){
//     if (window == 1 && window_timer == 1){
    
// }

#define spawn_base_dust // written by supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define voice_play
var rng = 1 + random_func_2(abs(floor(x%200)), 11, true);
if(rng > 0 && rng < 10){
	sound_play(sound_get("vc_" + string(rng)), false, false, voice_brawl);
}
if(attack == AT_NSPECIAL){
	sound_play(sound_get("vc_ult_nspecial1"), false, false, voice_ult);
} else {
	var rng_2 = 1 + random_func_2(abs(floor(x%200)), 5, true);
	if(rng_2 > 0 && rng_2 < 5){
		sound_play(sound_get("vc_ult_" + string(rng_2)), false, false, voice_ult);
	}
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion
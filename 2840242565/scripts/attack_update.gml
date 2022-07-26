//Jab
if (attack == AT_JAB){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_star_allies_gooey_lick_2, false, noone, 1, 1);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_star_allies_gooey_flicker_lick, true, noone, 1, 1);
		}
	}
	if (window == 5 || window == 8){
		if (window_timer > 2 && !attack_down){
			window = 9;
			window_timer = 0;
			sound_stop(sfx_star_allies_gooey_flicker_lick);
		}
		if (window == 8){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				window = 5;
				window_timer = 0;
				sound_play(asset_get("sfx_swipe_weak1"));
			}
		}
	}
	if (window == 8){
		if (window_timer < 2){
			image_index = 12;
		} else if (window_timer > 1 && window_timer < 4){
			image_index = 5;
		} else if (window_timer > 3){
			image_index = 6;
		}
	}
	if (window == 9){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (16 * spr_dir), y, "dash", -spr_dir);
			sound_play(sfx_star_allies_gooey_lick_1, false, noone, 1.2, 1);
			hsp = 3*spr_dir
			x += 6*spr_dir;
		}
	}
}

//Dash Attack
if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
			sound_play(asset_get("sfx_blink_dash"), false, noone, 0.6, 1.2);
			sound_play(asset_get("sfx_spin_longer"), false, noone, 0.8, 0.82);
			//sound_play(asset_get("sfx_ice_ftilt"), false, noone, 0.6, 1.8);
		}
	}
	if (window == 2 || window == 3){
		if (window_timer == 1
		|| window_timer == 5
		|| window_timer == 9
		|| window_timer == 13
		|| window_timer == 17
		|| window_timer == 21
		|| window_timer == 25){
			if (!hitpause){
				spawn_base_dust( x - (0 * spr_dir), y, "dash", spr_dir);
			}
		}
	}
}

//Forward Tilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (42 * spr_dir), y, "wavedash", -spr_dir);
		}
	}
}

//Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == 8){
			sound_play(sfx_star_allies_gooey_parasol, false, noone, 0.85, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10), y, "dash", 1)
			spawn_base_dust( x + (10), y, "dash", -1)
		}
	}
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3 || (window == 4 && image_index < 11)){
	    hud_offset = 80;
	}
}

//Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_swish_medium"), false, noone, 0.9, 1.75);
			sound_play(sfx_star_allies_gooey_lick_2, false, noone, 1, 1);
			hsp = 5*spr_dir;
		}
	}
}

//Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.9, 2);
		}
	}
}

//Forward Air
if (attack == AT_FAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_star_allies_gooey_lick_1, false, noone, 0.6, 1.1);
			sound_play(asset_get("sfx_swish_medium"), false, noone, 0.6, 1.05);
		}
	}
}

//Up Air
if (attack == AT_UAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_star_allies_gooey_flicker_lick_cut, false, noone, 0.85, 1);
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.9, 1.1);
			sound_play(asset_get("sfx_swish_weak2"), false, noone, 0.9, 1.1);
		}
	}
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3 || window == 4){
	    hud_offset = 54;
	}
}

//Down Air
if (attack == AT_DAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_krdl_parasol_twirl, false, noone, 1, 1);
		}
	}
}

//Back Air
if (attack == AT_BAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.85, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.85, 1.3);
			if (hsp < 0.1 && hsp > -1.5){
				hsp += -1.4*spr_dir
			}
		}
	}
}

//Forward Strong
if (attack == AT_FSTRONG){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_absa_whip_charge"), false, noone, 0.85, 1);
		}
	}
	if (window == 2){
		if (window_timer == 1){
			sound_play(asset_get("sfx_ice_ftilt"), false, noone, 1, 1.2);
			spawn_base_dust( x - (-2 * spr_dir), y, "dash_start", spr_dir);
		}
	}
}

//Up Strong
if (attack == AT_USTRONG){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_absa_whip_charge"), false, noone, 0.85, 1);
		}
	}
	if (window == 2){
		if (window_timer == 2){
			sound_play(jump_sound, false, noone, 0.85, 1);
			sound_stop(asset_get("sfx_absa_whip_charge"));
		}
		if (window_timer == 6){
			spawn_base_dust( x, y, "jump", spr_dir);
		}
		if (window_timer == 10){
			sound_play(asset_get("sfx_absa_orb_hit"));
		}
	}
	if ((window == 2) || window == 3 || window == 4 || window == 5 || window == 6 || window == 7 ||(window == 8 && image_index < 14)){
	    hud_offset = 68;
	}
	if (image_index == 14){
		ustrong_grounded_timer++;
		if (ustrong_grounded_timer == 1){
			sound_play(land_sound);
			spawn_base_dust( x, y, "land", spr_dir);
		}
	} else {
		ustrong_grounded_timer = 0;
	}
}

//Down Strong
if (attack == AT_DSTRONG){
	can_fast_fall = false;
	can_wall_jump = true;
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-5){
			sound_play(sfx_krdl_stone_form, false, noone, 1, 1);
		}
		if (up_down && !down_down){
			dstrong_vspChange = -4.5;
		} else if (!up_down && down_down){
			dstrong_vspChange = 2.5;
		} else if (!up_down && !down_down){
			dstrong_vspChange = 0;
		}
		
		if (left_down && !right_down){
			dstrong_hspChange = -5.2;
		} else if (!left_down && right_down){
			dstrong_hspChange = 5.2;
		} else if (!left_down && !right_down){
			dstrong_hspChange = 0;
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x, y, "jump", spr_dir)
		}
	}
	if (window == 2){
		if (window_timer < 8){
			vsp = -9 + dstrong_vspChange;
			hsp = dstrong_hspChange;
		} else if (window_timer > 7){
			vsp = 0;
			hsp = clamp(hsp, -0.15, 0.15);
		}
	}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 1, 1);
			sound_stop(sfx_krdl_stone_form);
			spawn_base_dust( x, y, "doublejump", spr_dir);
			spawn_base_dust( x, y+12, "land", spr_dir);
			dstrong_fall_timer = 0;
		}
	}
	if (window == 4){
		if(!hitpause){
			vsp = 14.8;
			hsp = 0;
			spawn_base_dust( x - 10, y, "dash", -1);
			spawn_base_dust( x + 10, y, "dash", 1);
			dstrong_fall_timer++;
			if (dstrong_fall_timer > 29){
				can_jump = true;
				can_shield = true;
			}
		}
		if (down_down){
			fall_through = true;
		} else if (!down_down){
			fall_through = false;
		}
		if (!free){
			window = 5;
			window_timer = 0;
			destroy_hitboxes();
			sound_play(sfx_krdl_stone_land, false, noone, 1, 1);
			spawn_base_dust( x - 18, y, "dash_start", -1);
			spawn_base_dust( x + 18, y, "dash_start", 1);
			spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir);
			shake_camera( 8, 4 );
		}
		if (window_timer == 2){
			window_timer = 0;
		}
	}
	if (window == 6){
		if ((has_hit && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		|| (!has_hit && window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))*1.5)){
			sound_play(sfx_krdl_stone_exit, false, noone, 1, 1);
			spawn_base_dust( x + 16, y, "dash", -1);
			spawn_base_dust( x - 16, y, "dash", 1);
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if window_timer == 5 {
			sound_play(sound_get("sfx_cutter_spin4"));
			move_cooldown[AT_NSPECIAL] = 96;
		}
	}
}

if (attack == AT_NSPECIAL_2) && !was_parried {
    can_attack = true;
	can_jump = true;
	can_shield = true;
	can_move = true;
}

if (get_player_color( player ) != 0) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_cutter"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_cutterbig"));
}

if (attack == AT_FSPECIAL){
	//window 1
	if (window == 1){
		vsp = clamp(vsp, -2, 2)
		hsp = clamp(hsp, -3.5, 3.5)
		vsp *= 0.65;
		if (window_timer == 1){
			clear_button_buffer( PC_SPECIAL_PRESSED );
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
			sound_play(asset_get("sfx_absa_whip_charge"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-4){
			sound_play(asset_get("sfx_burnapplied"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			sound_play(asset_get("sfx_flare_razer"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var burnFX = spawn_hit_fx(x-(6*spr_dir),y-14,gooey_fspec_fire_lrg);
			burnFX.draw_angle -= 180;
		}
		if (special_pressed && state_timer > 5 && strong_fspecial = false){
			strong_fspecial = true;
			sound_play(asset_get("mfx_confirm"), false, noone, 0.85, 1.3);
			clear_button_buffer( PC_SPECIAL_PRESSED );
		}
	}
		//Trail Stuff
    if ((window > 1 && window < 4) && !hitpause && strong_fspecial == true){
    
	//Fspecial Hitboxes if STRONG input.
	set_num_hitboxes(AT_FSPECIAL, 2);

	set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -15);
	set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

	set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -15);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 70);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    
        if (state_timer%3 == 0){
        	if (draw1 <= 0){
        		draw1_x = x;
        		draw1_y = y;
        		draw1 = 1;
        		draw1_index = image_index;
        	}
        	else if (draw2 <= 0){
        		draw2_x = x;
        		draw2_y = y;
        		draw2 = 1;
        		draw2_index = image_index;
        	}
        	else if (draw3 <= 0){
        		draw3_x = x;
        		draw3_y = y;
        		draw3 = 1;
        		draw3_index = image_index;
        	}
        	else if (draw4 <= 0){
        		draw4_x = x;
        		draw4_y = y;
        		draw4 = 1;
        		draw4_index = image_index;
        	}
        	else if (draw5 <= 0){
        		draw5_x = x;
        		draw5_y = y;
        		draw5 = 1;
        		draw5_index = image_index;
        	}
        }
    } else {
	
	//Fspecial hitboxes if additional input.
    set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -15);
	set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

	set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 16);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -15);
	set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 70);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
	set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    }

if (window == 2 && !hitpause) {
	if strong_fspecial = true  {
			if window_timer < 12 {
		hsp = 15 * spr_dir;
		} else if (window_timer > 12 && window_timer < 20) {
		hsp = 10 * spr_dir;
		} else if window_timer > 20 {
		hsp = 6 * spr_dir;
		}
} else if strong_fspecial = false  {
			if window_timer < 12 {
		hsp = 10 * spr_dir;
		} else if (window_timer > 12 && window_timer < 20) {
		hsp = 6 * spr_dir;
		} else if window_timer > 20 {
		hsp = 4 * spr_dir;
		}
}
}

if (window == 2){
	if (place_meeting(x + 4 * spr_dir, y, asset_get("par_block"))){
		window = 4;
		window_timer = 0;
		sound_play(sfx_stomp);
		spawn_base_dust(x+(24*spr_dir), y-6, "walljump", spr_dir * -1);
		move_cooldown[AT_FSPECIAL] = 9999999;
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
		vsp = -3.5;
		x -= 2 * spr_dir;
		destroy_hitboxes();
	}
	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if (!hitpause){
			sound_play(asset_get("sfx_burnend"));
			//spawn_hit_fx(x,y,gooey_fspec_fire_med)
		}
	}
	
	if(!strong_fspecial){
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	}
}

if window == 3 {
	strong_fspecial = false;
}
		

}

//Up Special
if (attack == AT_USPECIAL){
	can_wall_jump = true;
    if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(asset_get("sfx_frog_nspecial_shove"), false, noone, 0.55, 1.4);
			sound_play(asset_get("sfx_bird_downspecial"), false, noone, 1, 1.1);
			sound_play(sfx_star_allies_gooey_dark_laser_flare, false, noone, 0.8, 1.05);
			y -= 8;
			spawn_base_dust( x, y+8, "jump", spr_dir);
		} else {
			hsp *= 0.875;
			vsp *= 0.875;
		}
	}
	if (window == 4){
		if (vsp < 1){
			vsp += 1.2
		}
	}
}

//DSPEC GRAB

if (attack == AT_DSPECIAL){	
	if(window == 1){
		cutter_proj_dir_selected = 0;
		if (free){
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 7);
		} else {
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
		}
	}
    if (window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		window = 6;
    }
    if(window == 1){
    	dspecial_grabbed_player = noone;
		if (window_timer == 3){
			sound_play(sfx_dspec_grab_start);
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				hsp += 2.2*spr_dir;
				spawn_base_dust( x + (40 * spr_dir), y, "land", spr_dir);
			}
		}
    }
    if(window < 4 and dspecial_grabbed_player!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    } 
    if(window == 4){
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
   			grabbed_player_obj.x = x;
    			grabbed_player_obj.y = y;
    			
    			if window_timer = 14 {
				window = 5;
				window_timer = 0;
			}
    	}
    	
    	if window == 5 {
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitstop_full = 2;
   			grabbed_player_obj.x = x;
    			grabbed_player_obj.y = y;
    	
		  	if	window_timer == 59 {
		  		window = 6;
		  		window_timer = 6;
		  	}
		  	
		if (left_pressed || left_down) {
			spr_dir = -1;
		}
		else if spr_dir = -1 && (right_pressed || right_down){
			spr_dir = 1;
		}
		  	
		  	if special_pressed {
		  		window = 7;
		  		window_timer = 0;
		  	}
		  	
    	}
    	
    	if window == 7 {
    		if window_timer < 7 {
    			grabbed_player_obj.hitstop = 2;
    			grabbed_player_obj.hitstop_full = 2;
   				grabbed_player_obj.x = x + (spr_dir * 40);
    			grabbed_player_obj.y = y;
    		}
			if (window_timer == 6){
				if (!free){
					spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
				}
			}
    	}
    	
    	if window == 3 || window == 6 || (window == 7 && window_timer > 7) {
			if (hit_player_obj != noone){
             hit_player_obj.visible = true;
			}
    	}
    	
    can_fast_fall = false;
	
	
	//Cutter Interaction
	if (window == 8){
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
		if (special_down && window_timer > 10){
			window_timer = 9;
		}
		if (!joy_pad_idle){
			if ((up_down || up_stick_down) && !(down_down || down_stick_down) && !((left_down || left_stick_down)||(right_down || right_stick_down))){
				//print("up")
				cutter_proj_dir_selected = 1;
			} else if (!(up_down || up_stick_down) && !(down_down || down_stick_down) && ((left_down || left_stick_down)||(right_down || right_stick_down))){
				if (!(left_down || left_stick_down)&&(right_down || right_stick_down)){
					//print("right");
					cutter_proj_dir_selected = 2;
					spr_dir = 1;
				} else if ((left_down || left_stick_down)&&!(right_down || right_stick_down)){
					//print("left");
					cutter_proj_dir_selected = 4;
					spr_dir = -1;
				}
			} else if (!(up_down || up_stick_down) && (down_down || down_stick_down) && !((left_down || left_stick_down)||(right_down || right_stick_down))){
				//print("down")
				cutter_proj_dir_selected = 3;
			}
		} else {
			cutter_proj_dir_selected = 0;
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_krdl_spit);
			sound_play(sound_get("sfx_sword_swipe1"));
			sound_play(sound_get("sfx_cutter_spin4"));

			var cutterMadeByDSpec = create_hitbox(AT_NSPECIAL, 4, x, y-14);
			cutterMadeByDSpec.throwType = cutter_proj_dir_selected;
			
			if (cutter_proj_dir_selected == 1){//Up
				cutterMadeByDSpec.hsp = 0;
				cutterMadeByDSpec.vsp = -12;
				spawn_hit_fx(x,y-26,304)
			} else if (cutter_proj_dir_selected == 2){//Right
				cutterMadeByDSpec.hsp = 12;
				cutterMadeByDSpec.vsp = 0;
				spawn_hit_fx(x+26,y-6,304)
			} else if (cutter_proj_dir_selected == 3){//Down
				cutterMadeByDSpec.hsp = 0;
				cutterMadeByDSpec.vsp = 12;
				spawn_hit_fx(x,y+26,304)
			} else if (cutter_proj_dir_selected == 4){//Left
				cutterMadeByDSpec.hsp = -12;
				cutterMadeByDSpec.vsp = 0;
				spawn_hit_fx(x-26,y,304)
			} else if (cutter_proj_dir_selected == 0){//No Direction
				spawn_hit_fx(x+(26*spr_dir),y-6,304);
			}
		}
		//print(cutter_proj_dir_selected)
	}
	if (window == 9){
		//print("Cutter fired");
		cutter_proj_dir_selected = 0;
	}
}

//Taunt
if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == 12){
			sound_play(sfx_star_allies_gooey_lick_1, false, noone, 0.8, 1.2);
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
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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

// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL ||
	attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL_2){
	if (!has_hit){
		trigger_b_reverse();
	}
}

if ( attack == AT_TAUNT ){
	if (!hitpause){
		if (window == 1 && window_timer == 1){
			sound_play(asset_get("sfx_charge_blade_ready"),false,noone,0.5,1.5)
			sound_play(asset_get("sfx_tech"),false,noone,0.4,1.5)
			sound_play(sound_get("spinny"),false,noone,0.5,1.1)
			
		}
		if (window == 3 && window_timer == 1){
				sound_play(sound_get("taunt_a"),false,noone,1,1.25)
				//instance_create( x, y, "obj_article1" );
		}
	}
}

if ( attack == AT_JAB ){
	//was_parried = false;
	if (window == 2 && window_timer == 1){
		if (!hitpause){
			sound_play(sound_get("SWS1"),false,noone,0.5,1.1)
		}
	}
	/*if (window == 4 && window_timer == 3){
		//can_attack = true;//dang this allows jab
		if (is_attack_pressed( DIR_UP )){
			set_attack(AT_UTILT);
		}
		if (is_attack_pressed( DIR_DOWN )){
			set_attack(AT_DTILT);
		}
		if ( (is_attack_pressed( DIR_LEFT )&&spr_dir==-1) || (is_attack_pressed( DIR_RIGHT )&&spr_dir==1) ){
			set_attack(AT_FTILT);
		}
	}*/
}

if ( attack == AT_FTILT ){
	if (window == 2 && window_timer == 1){
		if (!hitpause){
			sound_play(sound_get("SWS1"),false,noone,0.7,1)
			sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.6,0.9)
			spawn_base_dust(x-(6*spr_dir), y, "dash")
			spawn_base_dust(x-(22*spr_dir), y, "dash_start")
		}
	}
}
if ( attack == AT_UTILT ){
	if (window == 1 && window_timer == 4){
		if (!hitpause){
			sound_play(sound_get("SWS1"),false,noone,0.6,0.8)
			sound_play(asset_get("sfx_swipe_weak2"),false,noone,0.7,0.9)
			spawn_base_dust(x+(22*spr_dir), y, "dash", spr_dir*-1)
			spawn_base_dust(x+(52*spr_dir), y, "walk", spr_dir*-1)
		}
	}
}
if ( attack == AT_DTILT ){
	if (window == 1 && window_timer == 2){
		if (!hitpause){
			sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,0.6)
			spawn_base_dust(x-(22*spr_dir), y, "dash")
			spawn_base_dust(x-(52*spr_dir), y, "walk")
		}
	}
	if (!was_parried){
		if (window > 4 || (window==4&&window_timer>5)){
			if (has_hit){
				if (is_special_pressed( DIR_DOWN )){
					set_attack(AT_DSPECIAL);
				}
			}
		}
	}
}
if ( attack == AT_DATTACK ){
	if (window == 1 && window_timer == 1){
		if (!hitpause){
			sound_play(asset_get("sfx_kragg_roll_end"),false,noone,1,1.4)
			//sound_play(asset_get("sfx_kragg_roll_start"),false,noone,0.6,1.3)
		}
	}
	if (window == 2 && window_timer == 1){
		if (!hitpause){
			sound_play(asset_get("sfx_frog_uspecial_divekick"),false,noone,0.6,1.3)
			sound_play(asset_get("sfx_swipe_weak1"),false,noone,1,1)
			spawn_base_dust(x, y, "dash")
			spawn_base_dust(x+(28*spr_dir), y, "dash_start")
		}
	}
	if (!was_parried){
		var dattack_speed_timer_max = 26;
		if (window == 3 && window_timer == 1){
			dattack_speed_timer = dattack_speed_timer_max;
		}
		if (window >= 3){
			if (!hitpause){
				var dat_spd = ease_quadIn( 0, 95, dattack_speed_timer, dattack_speed_timer_max )/10;
				hsp = dat_spd * spr_dir;
				dattack_speed_timer = clamp(dattack_speed_timer-1, 0, 500);
			}
		}
		if (window == 3){
			if (window_timer%2==0){
				spawn_base_dust(x+(16*spr_dir), y, "dash")
			}
		}
		if (window == 4){
			if (window_timer < 7){//out of 16
				if (window_timer%3==0){
					spawn_base_dust(x-(28*spr_dir), y, "walk")
				}
			}
		}
	}
}
if ( attack == AT_NAIR ){
	if (window == 1 && window_timer == 1){
		clear_button_buffer( PC_ATTACK_PRESSED );
	}
	if (!was_parried){
		if (((window == 2 && has_hit)) || window == 3 || window == 4){
			if (attack_pressed){
				set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);
				window = 5;
				window_timer = 0;
				destroy_hitboxes();
			}
		}
	}
	if (!hitpause){
		/*if (window == 3 && window_timer == 1){
			var tmp_hfx = spawn_hit_fx(x+(30*spr_dir), y-28, 27)
			tmp_hfx.depth = 30;
			sound_play(sound_get("ting"),false,noone,0.8,1.4)
		}*/
		if (window == 5 && window_timer == 8){
			sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,0.7,1.3)
			sound_play(asset_get("sfx_swipe_medium1"),false,noone,0.6,1.1)
			sound_play(sound_get("swing_starshoot_b"),false,noone,0.7)
			sound_play(sound_get("SWL3"),false,noone,1,1.1)
		}
	}
	if (window == 6 || window == 7){
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
	}
}
if ( attack == AT_FAIR ){
	if (window == 1 && window_timer == 1){
		if (!hitpause){
			sound_play(asset_get("sfx_shovel_swing_light1"),false,noone,1,1.2)
			sound_play(asset_get("sfx_grass_creature"),false,noone,0.6,2.5)
			if (get_synced_var( player )==3){//D
				if (get_player_color( player ) == 10){
					sound_play(sound_get("asayzll_1"),false,noone,1,1)
				}
			}
		}
	}
	if (window == 2 && window_timer == 2){
		if (!hitpause){
			sound_play(asset_get("sfx_waterhit_heavy"),false,noone,0.7,1.1)
			//sound_play(sound_get("SWB2"),false,noone,0.7,1)
			if (get_synced_var( player )==3){//D
				if (get_player_color( player ) == 7){
					sound_play(sound_get("dash"),false,noone,1,1)
					var sfxdid = true;
				}
				if (get_player_color( player ) == 9){
					sound_play(sound_get("kris_1"),false,noone,1,1)
					var sfxdid = true;
				}
				if (get_player_color( player ) == 10){
					sound_play(sound_get("asayzll_2"),false,noone,1,1)
					var sfxdid = true;
				}
			}
			if (sfxdid == false){
				sound_play(sound_get("SWB2"),false,noone,0.7,1)
			}
			//spawn_hit_fx( x+(90*spr_dir), y, hfx_splash )//yea this is where it woulda've been used, but it wasnt very good
		}
	}
	/*if (window == 2 && window_timer == 3){
		var tmp_fx = spawn_hit_fx( x-10+random_func( 1, 20, true )+(80*spr_dir), y-50-20+random_func( 4, 40, true ), fx_ice_mist_A);
		
		tmp_fx.image_alpha = 0.25;
		tmp_fx.hsp = ((1.5+random_func( tmp_fx%5, 1, false ))*spr_dir)/2
		tmp_fx.vsp = ((1+random_func( tmp_fx%5, 2, false ))*-1)/1.1
		
		var tmp_fx = spawn_hit_fx( x-10+random_func( 2, 20, true )+(80*spr_dir), y-30-20+random_func( 5, 40, true ), fx_ice_mist_A);
		
		tmp_fx.image_alpha = 0.25;
		tmp_fx.hsp = ((2+random_func( tmp_fx%5, 1, false ))*spr_dir)/2
		tmp_fx.vsp = ((-1+random_func( tmp_fx%5, 2, false ))*1)/1.25
		
		var tmp_fx = spawn_hit_fx( x-10+random_func( 3, 20, true )+(80*spr_dir), y-10-20+random_func( 6, 40, true ), fx_ice_mist_A);
		
		tmp_fx.image_alpha = 0.25;
		tmp_fx.hsp = ((1.5+random_func( tmp_fx%5, 1, false ))*spr_dir)/2
		tmp_fx.vsp = ((1+random_func( tmp_fx%5, 2, false ))*1)/1.1
	}*/
}
if ( attack == AT_UAIR ){
	if (window == 1 && window_timer == 2){
		if (!hitpause){
			sound_play(asset_get("sfx_swipe_heavy1"),false,noone,0.7,1.1)
		}
	}
}
if ( attack == AT_DAIR ){
	if (!hitpause){
		if (window == 2){
			if (window_timer == 1){
				sound_play(asset_get("sfx_shovel_swing_heavy1"),false,noone,0.7,1.3)
			}
			if (window_timer == 2){
				sound_play(asset_get("sfx_shovel_swing_med1"),false,noone,0.7,1.1)
				sound_play(sound_get("SWB2"),false,noone,0.6,1.4)
			}
		}
	}
}
if ( attack == AT_FSTRONG ){
	if (window == 3 && window_timer == 2){
		if (right_down&&spr_dir==1){}else
		if (left_down&&spr_dir==-1){}else
		if (up_down || up_stick_down){
			set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 11);
			window = 9;
			window_timer = 0;
		}else if (down_down || down_stick_down){
			set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 14);
			window = 12;
			window_timer = 0;
		}
		if (!hitpause){
			sound_play(asset_get("sfx_icehit_heavy1"),false,noone,0.8,1.4)
			sound_play(asset_get("sfx_icehit_medium2"),false,noone,1,0.9)
			sound_play(sound_get("ice_short"),false,noone,0.2,1.3)
			sound_play(sound_get("ice_short"),false,noone,0.3,1.4)
			sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.8,0.8)
			sound_play(asset_get("sfx_ori_sein_fstrong_hit"),false,noone,0.7,0.4)
			spawn_base_dust(x+(16*spr_dir), y, "dash_start", spr_dir)
			spawn_base_dust(x+(20*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(54*spr_dir), y, "dash_start", spr_dir*-1)
				sound_stop(asset_get("sfx_ice_hammerstart"))
		}
	}
	if (!hitpause){
		if (smash_charging){
			if (strong_charge%10==0){
				spawn_base_dust(x-(32*spr_dir), y, "dash", spr_dir)
				spawn_base_dust(x+(32*spr_dir), y, "dash", spr_dir*-1)
			}
			if (strong_charge%10==4){
				spawn_base_dust(x-(16*spr_dir), y, "dash", spr_dir)
				spawn_base_dust(x+(16*spr_dir), y, "dash", spr_dir*-1)
			}
		}
		if (window == 1 && window_timer == 1){
				sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.5,0.8)
				sound_play(sound_get("ting"),false,noone,0.7,1.25)
				sound_play(sound_get("ice_short"),false,noone,0.2,0.7)
				sound_play(asset_get("sfx_ice_hammerstart"),false,noone,0.8,1.3)
				sound_play(asset_get("sfx_ice_hammerstart"),false,noone,1,1.6)
		}
		if (window == 2 && window_timer == 1){
				sound_play(asset_get("sfx_swipe_medium1"),false,noone,0.7,0.5)
		}
		if (window == 4 && window_timer == 1){
				var tmp_hfx = spawn_hit_fx(x+(75*spr_dir), y-31, 28)
				tmp_hfx.depth = 30;
		}
		if (window == 9 && window_timer == 1){
				var tmp_hfx = spawn_hit_fx(x+(69*spr_dir), y-38, 28)
				tmp_hfx.depth = 30;
		}
		if (window == 12 && window_timer == 1){
				var tmp_hfx = spawn_hit_fx(x+(70*spr_dir), y-19, 28)
				tmp_hfx.depth = 30;
		}
	}
	if (window == 7 && window_timer == 1){
		reset_attack_value(AT_FSTRONG, AG_NUM_WINDOWS);
	}
}
if ( attack == AT_USTRONG ){
	if (window == 2 && window_timer == 3){
		if (!hitpause){
			sound_play(asset_get("sfx_spin"),false,noone,0.8,1)
			sound_play(asset_get("sfx_clairen_spin"),false,noone,0.5,1.2)
			sound_play(sound_get("SWB2"),false,noone,0.7,1.3)
			spawn_base_dust(x-(10*spr_dir), y, "dash_start", spr_dir)
			spawn_base_dust(x+(10*spr_dir), y, "dash_start", spr_dir*-1)
		}
	}
}
if ( attack == AT_DSTRONG ){
	if (window == 2 && window_timer == 3){
		if (!hitpause){
			sound_play(asset_get("sfx_swish_medium"),false,noone,0.5,1)
			sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,0.7,0.755)
			spawn_base_dust(x-(38*spr_dir), y, "dash_start", spr_dir)
			spawn_base_dust(x+(38*spr_dir), y, "dash_start", spr_dir*-1)
		}
	}
}
if ( attack == AT_NSPECIAL ){
	move_cooldown[AT_NSPECIAL] = 30;
	move_cooldown[AT_NSPECIAL_2] = 30;
	if (window == 1){
		if (!wow_wavebounce_happened){
			if (move_start_spr_dir_tracker != spr_dir){
				hsp = hsp*-1;
				wow_wavebounce_happened = true;
			}
		}
	}
	if (window == 2 && window_timer == 5){
		if (!hitpause){
			var tmp_hfx = spawn_hit_fx(x+(39*spr_dir), y-28, 27)
			tmp_hfx.depth = 30;
			if (get_synced_var( player )==3 && (get_player_color( player ) == 6||get_player_color( player ) == 16)){
					sound_play(sound_get("dr_1"),false,noone,0.7,1)
			}else{
				sound_play(sound_get("ice_short"),false,noone,0.7,1.2)
				sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.7,1)
				sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.7,1.3)
			}
			spawn_base_dust(x-(24*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(24*spr_dir), y, "dash", spr_dir*-1)
		}
	}
}
if ( attack == AT_NSPECIAL_2 ){
	move_cooldown[AT_NSPECIAL_2] = 70;
	move_cooldown[AT_NSPECIAL] = 30;
	if (!hitpause){
		if (window == 3 && window_timer == 1){
			var tmp_hfx = spawn_hit_fx(x+(30*spr_dir), y-30, 27)
			tmp_hfx.depth = 30;
			if (get_synced_var( player )==3 && (get_player_color( player ) == 6||get_player_color( player ) == 16)){
					sound_play(sound_get("dr_1"),false,noone,0.7,1.2)
			}else{
				sound_play(asset_get("sfx_buzzsaw_throw"),false,noone,0.8,1.15)
				sound_play(sound_get("ice_short"),false,noone,0.5,1.5)
				sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.4,1.4)
			}
		}
		if (window == 4 && window_timer == 4){
				//var pull_to_x = 37 * spr_dir;
				//var pull_to_y = -20;
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1,0.9)
			sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.7,0.8)
			spawn_base_dust(x-(22*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(22*spr_dir), y, "dash", spr_dir*-1)
			var tmp_hb = create_hitbox( AT_NSPECIAL, 1, x+(30 * spr_dir), y-80 )
			tmp_hb.ice_vsp_b = -14;
			tmp_hb.ice_hsp_b = 1*spr_dir;
			tmp_hb.length = 300;//80
			tmp_hb.ice_fake_lifetime_b = 100;//80
			tmp_hb.ice_verticalmode_b = true;
			tmp_hb.sprite_index = sprite_get("nspecial_ice_blue");
			/*var tmp_hb = create_hitbox( AT_NSPECIAL, 1, x+(37 * spr_dir), y-40 )
			tmp_hb.ice_vsp_b = -11;
			tmp_hb.ice_hsp_b = 2*spr_dir;
			tmp_hb.length = 120;
			var tmp_hb = create_hitbox( AT_NSPECIAL, 1, x+(37 * spr_dir), y-40 )
			tmp_hb.ice_vsp_b = -10;
			tmp_hb.ice_hsp_b = 3*spr_dir;
			tmp_hb.length = 120;*/
		}
	}
	/*if (window == 2 && window_timer == 5){
		if (!hitpause){
			var tmp_hfx = spawn_hit_fx(x+(39*spr_dir), y-28, 27)
			tmp_hfx.depth = 30;
			sound_play(sound_get("ice_short"),false,noone,0.7,1.2)
			sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.7,1)
			sound_play(asset_get("sfx_ice_fspecial_hit_ground"),false,noone,0.7,1.3)
			spawn_base_dust(x-(24*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(24*spr_dir), y, "dash", spr_dir*-1)
		}
	}*/
}
if ( attack == AT_FSPECIAL_2 ){
	if (!hitpause){
		var fsp_loop_atk_charge = fsp_loop_count_max;//8
		if (window == 2 || window == 3){
			if (state_timer > 10){//16
				if (!special_down){
					window = 4; window_timer = 0;
					sound_play(sound_get("woosh_1"),false,noone,0.5,2.5)
					sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.6,1)
					sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,0.4,3)
					reset_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH);
				}
				if (attack_pressed){
					window = 4; window_timer = 0;
					spr_dir = spr_dir*-1;
					hsp = clamp(hsp*-20, -4, 4);
					white_flash_timer = 7;
					sound_play(sound_get("swosh2"),false,noone,0.8,0.8)
					sound_play(sound_get("woosh_1"),false,noone,0.5,2.5)
					sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.6,1)
					sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,0.4,3)
					set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);//+2
				}
				if (shield_pressed){
					window = 8; window_timer = 0;
					sound_play(asset_get("sfx_frog_fspecial_cancel"),false,noone,0.6,1.2)
					sound_play(sound_get("beam_charged"),false,noone,1,1.2)
				}
			}
			if (state_timer%10==0){
				spawn_base_dust(x-(32*spr_dir), y, "dash", spr_dir)
			}
			if (state_timer%10==4){
				spawn_base_dust(x-(16*spr_dir), y, "dash", spr_dir)
			}
		}
		if (window == 2){
			if (fsp_loop_count >= fsp_loop_atk_charge){
				sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.6,1)
				sound_play(sound_get("swing_starshoot_a"),false,noone,0.8,1.5)
				window = 3;
				white_flash_timer = 10;
			}else{
				if (window_timer==1){
					sound_play(sound_get("woosh_1"),false,noone,0.5,1.5)
					if (state_timer > 16){
						fsp_loop_count++;
					}
				}
			}
		}
		if (window == 3){
			if (window_timer==1){
				sound_play(sound_get("woosh_1"),false,noone,0.5,2)
				sound_play(sound_get("woosh_1"),false,noone,0.5,1)
			}
		}
		if (window==2||window==3||window==4){
			fsp_vulnerable = true;
		}else{fsp_vulnerable = false;}
		
		var fspecial_speed_timer_max = 30;
		if (window == 4){
			hsp = 2*spr_dir;
			vsp = 0;
			var tmp_wl = get_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH);
			if (window_timer = tmp_wl-2){
				spawn_hit_fx(x+(30*spr_dir), y-30, 27)
				//hsp = (4+(fsp_loop_count/1.5))*spr_dir*-1;
				//strong_charge = round(ease_quadIn( 0, 30, fsp_loop_count, 9 ))
				//print(string(strong_charge))
				//print(string(fsp_loop_count))
				reset_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE)
				reset_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK)
				reset_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING)
				reset_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT)
				reset_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT)
				
				set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE,
				round(get_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE)*(1+((fsp_loop_count-1)/20))));
				set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK,
				get_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK)*(1+((fsp_loop_count-1)/20)));
				set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING,
				get_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING)*(1+((fsp_loop_count-1)/7.8)));
				if (fsp_loop_count>=8){set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 199)
					set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"))
					sound_play(sound_get("wind2"),false,noone,0.7,1.7)};
				set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 13);//9
				//print(string(get_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK)))
				//print(string(get_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING)))
				
				fspecial_speed_timer = fspecial_speed_timer_max;
				sound_play(asset_get("sfx_ice_shatter_big"),false,noone,1,1.2)
				sound_play(asset_get("sfx_ice_dspecial_ground"),false,noone,0.9,1.3)
				sound_play(asset_get("sfx_ice_burst_up"),false,noone,0.7,1)
				//x = x+(16*spr_dir)
				spawn_base_dust(x-(4*spr_dir), y, "dash")
				spawn_base_dust(x+(48*spr_dir), y, "dash_start", spr_dir*-1)
				
				fsp_loop_count_storage = fsp_loop_count;
				fsp_loop_count = 0;
				
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 1, 20, true )+(40*spr_dir), y-30-20+random_func( 4, 40, true ), fx_ice_mist_B);
				
				tmp_fx.image_alpha = 0.15;
				tmp_fx.hsp = (((fsp_loop_count_storage/fsp_loop_count_max)*1.5)+random_func( tmp_fx%5, 1, false ))*spr_dir
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 2, 20, true )+(40*spr_dir), y-30-20+random_func( 5, 40, true ), fx_ice_mist_C);
				
				tmp_fx.image_alpha = 0.15;
				tmp_fx.hsp = (((fsp_loop_count_storage/fsp_loop_count_max)*1.5)+random_func( tmp_fx%5, 1, false ))*spr_dir
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 3, 20, true )+(40*spr_dir), y-30-20+random_func( 6, 40, true ), fx_ice_mist_D);
				
				tmp_fx.image_alpha = 0.15;
				tmp_fx.hsp = (((fsp_loop_count_storage/fsp_loop_count_max)*1.5)+random_func( tmp_fx%5, 1, false ))*spr_dir
			}
		}
		if (window == 5){
			if (window_timer == 1){
				if (fsp_loop_count_storage>=fsp_loop_count_max){
					if (was_parried==false){
					if (raincloud_present==false){
						var cloudcloud = instance_create( x+(30*spr_dir), y, "obj_article1" );
						cloudcloud.hsp = 4*spr_dir;
						cloudcloud.vsp = -8;
						//CHANGE THIS FOR RAINCLOUD DURATION
						var raincloud_apply_time = 700;//500
						cloudcloud.ushr_rainclouded = true;//??
						cloudcloud.ushr_rainclouded_timer = raincloud_apply_time;//TIMER
						cloudcloud.ushr_rainclouded_timer_max = raincloud_apply_time;
					}
					}
				}
			}
		}
		if (window == 5||window == 6||window == 7){
			can_move = false;
			if (window==5){vsp = 0;}
			if (window==6){vsp = clamp(vsp,-200,1);}
			var fsp_spd = ease_quadIn( 0, 4+round(ease_linear(0,17,fsp_loop_count_storage,8)), fspecial_speed_timer, fspecial_speed_timer_max );//10
			if (!free){fsp_spd = fsp_spd/1.5}
					if (was_parried==false){
			hsp = fsp_spd * spr_dir * -1;
					}
			fspecial_speed_timer = clamp(fspecial_speed_timer-1, 0, 500);
			//vforce's ledge snap code thank you
			if (place_meeting(x + hsp, y, asset_get("par_block")) && free) 
			{
				for (var i = 1; i < 30; i++)
				{
					if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
					{
						y -= i;
						break;
					}
				}
			}
		}
		if (window < 6){
			can_fast_fall = false;
		}
		if (window >= 5){
			can_wall_jump = true;
		}
	}
}


if ( attack == AT_FSPECIAL ){
	fsp_did = true;
	can_fast_fall = false;
	if (!was_parried){
		var fspecial_speed_timer_max = 30;
		if (window == 1 && window_timer == 1){
			vsp = clamp(vsp, -500, 0);
			if (!hitpause){
				sound_play(asset_get("sfx_forsburn_cape_swipe"),false,noone,0.6,1.6)
			}
		}
		if (window == 1 && window_timer == 9){//3//4//7
			if (!hitpause){
				sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.6,1)
				sound_play(asset_get("sfx_shovel_swing_heavy2"),false,noone,0.6,1.1)
				sound_play(sound_get("woosh_1"),false,noone,0.65,1)
				sound_play(sound_get("woosh_1"),false,noone,0.3,1.5)
				spawn_base_dust(x, y, "dash")
				spawn_base_dust(x+(28*spr_dir), y, "dash_start")
			}
		}
		if (window == 2 && window_timer == 1){
			fspecial_speed_timer = fspecial_speed_timer_max;
		}
		if (!hitpause){
			if (window == 2 || window == 3){
				var fsp_spd = ease_quadIn( 0, 11, fspecial_speed_timer, fspecial_speed_timer_max );//10
				hsp = fsp_spd * spr_dir;
				fspecial_speed_timer = clamp(fspecial_speed_timer-1, 0, 500);
			}
			if (window == 2){
				if (window_timer%5==0){
					spawn_base_dust(x-(16*spr_dir), y, "dash")
				}
			}
			if (window == 3){
				if (window_timer < 7){//out of 14
					if (window_timer%5==0){
						spawn_base_dust(x-(28*spr_dir), y, "walk")
					}
				}
			}
		}
		
		if (window == 3 || window == 4){
			can_wall_jump = true;
		}
		if (window == 3){
			if (special_pressed){
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 8);
				window = 5;
				window_timer = 0;
				hsp = 0;
				vsp = 0;
				move_is_fresh = true;
				destroy_hitboxes();
			}
		}
		if (window == 4){
			move_cooldown[AT_FSPECIAL] = 4;//3
		}
		if (window == 5){
			if (!hitpause){
				hsp = 6*spr_dir
			}
		}
		if (window == 5 && window_timer == 5){
			if (!hitpause){
				sound_play(asset_get("sfx_ice_shatter_big"),false,noone,1,1.2)
				sound_play(asset_get("sfx_ice_dspecial_ground"),false,noone,0.9,1.3)
				sound_play(asset_get("sfx_ice_burst_up"),false,noone,0.7,1)
				//x = x+(16*spr_dir)
				spawn_base_dust(x-(4*spr_dir), y, "dash")
				spawn_base_dust(x+(48*spr_dir), y, "dash_start", spr_dir*-1)
			}
		}
		if (window == 5 || window == 6 || window == 7){
			can_move = false;
			if (!hitpause){
				if (free){
					hsp = hsp+(0.04*spr_dir)
				}
				vsp = 0;
			}
		}
	}
	if (fsp_airstart){//IF started in air
		if (!free){//THEN IF landed
			if (!was_parried){
				if (special_down && !special_pressed){
					fsp_airstart = false;
				}else{
					if (window>1){
						move_cooldown[AT_FSPECIAL] = 4;//0//4//11?
						landing_lag_time = 6;//6//8?
						set_state( PS_LANDING_LAG );
						hsp = clamp(hsp, dash_speed*-1, dash_speed);
					}
				}
			}else{
				window = 10;//does not exist
				window_timer = 100;//hope it works question mark
			}
		}
	}
	if (!fsp_airstart){//IF started on ground
		if (free){//THEN IF went off ledge
			fsp_airstart = true;
		}
	}
}
if ( attack == AT_USPECIAL ){
	if (window>1){
		hud_offset = 58;
	}
	if (window == 1 && window_timer == 5){
		spawn_hit_fx(x+(2*spr_dir), y, 111)
		spawn_base_dust(x, y, "jump")
	}
	if (window == 1 && window_timer == 1){
		if (!hitpause){
			sound_play(asset_get("sfx_frog_uspecial_cast"),false,noone,0.8)
			sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.5)
		}
	}
	if (window == 1 && window_timer == 6){
		if (!free){//GROUNDED
			create_hitbox( AT_USPECIAL, 1, x, y )
		}else{//AERIAL
			create_hitbox( AT_USPECIAL, 2, x, y )
		}
	}
	if (window == 4 || window == 5){
		if (!free){
			//landing_lag_time = prat_land_time;
			set_state( PS_PRATLAND );
		}
	}
	if (!was_parried){
		if (window == 4 || window == 5 || window == 8){
			can_wall_jump = true;
		}
		var uspecial_speed_timer_max = 24;
		if (window == 2 && window_timer == 1){
			uspecial_speed_timer = uspecial_speed_timer_max;
		}
		if (window == 4 || window == 5){
			var uspecial1_amount_of_hsp_clamp = 3;
			hsp = clamp(hsp,uspecial1_amount_of_hsp_clamp*-1,uspecial1_amount_of_hsp_clamp);
			if (!hitpause){
				if (window==4){
					if (window_timer%3==1 && window_timer < 12){
						spawn_hit_fx(x, y, 108)
					}
				}
				if (uspecial_speed_timer > 0){
					var usp_spd = ease_quadIn( 0, -14, uspecial_speed_timer, uspecial_speed_timer_max );
					vsp = usp_spd;
					uspecial_speed_timer = clamp(uspecial_speed_timer-1, 0, 500);
				}
			}
		}
		if ((window == 4 && window_timer > 11)||window==5){//>11//out of 23
			if (special_down){
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
				window = 6;
				window_timer = 0;
				destroy_hitboxes();
			}
		}
	}//was_parried false
	if (was_parried){
		vsp = clamp(vsp,0,100);
	}
	//this is umbrella mode
	if (window==6){
		vsp = clamp(vsp,-100,6);
	}
	if (window==7 && window_timer == 1){
		if (!hitpause){
			vsp = -7;//-6
			sound_play(asset_get("sfx_waveland_orc"),false,noone,1,1)
			spawn_base_dust(x+(22*spr_dir), y+2, "walk", spr_dir*-1)
			spawn_base_dust(x-(22*spr_dir), y+2, "walk")
		}
	}
	if (window==7 || window==8){
		vsp = clamp(vsp,-100,2.5);
	}
	if (window==8){
		can_fast_fall = true;
		if (!hitpause){
			if (window_timer%6==0){
				spawn_base_dust(x+(14*spr_dir), y+14, "walk", spr_dir*-1)
				spawn_base_dust(x-(14*spr_dir), y+14, "walk")
			}
		}
		if (down_pressed || shield_pressed || was_parried){
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
			window = 10;
			window_timer = 0;
		}
		if (!free){
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
			window = 9;
			window_timer = 0;
			spawn_base_dust(x, y, "land")
		}
	}
	if (window>=7){
		can_wall_jump = true;
	}
	if (window>=6 && window!=10 && window!=8){
		can_fast_fall = false;
	}
}
if ( attack == AT_DSPECIAL_2 ){
	dsp_did = true;
	if (!hitpause){
		if (window == 1){
			hsp = 0;
			vsp = 0;
		}
		var tmp_frame = get_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH);
		if (window == 1 && window_timer == 1){
			move_is_fresh = true;
			sound_play(asset_get("sfx_jumpground"),false,noone,1,1.1)
			//sound_play(asset_get("sfx_charge_blade_ready"),false,noone,1,1.3)
			sound_play(asset_get("sfx_ell_dtilt1"),false,noone,0.8,1)
		}
		if (window == 1 && window_timer == tmp_frame){
			sound_play(sound_get("bounce3"),false,noone,1,1)
			//sound_play(sound_get("bounce3"),false,noone,1,1.5)
			spawn_base_dust(x-(10*spr_dir), y, "n_wavedash", spr_dir)
			dsp_bounce_count = 0;
			//hsp = 6*spr_dir;
			//vsp = -6;
			invincible = true;
			invince_time = 3;
		}
		var dspecial_speed_timer_max = 24;
		if (window == 2 && window_timer == 1){
			dspecial_speed_timer = dspecial_speed_timer_max;
		}
		if (window == 2 || window == 3){
			//print(string(has_hit))
			if (dspecial_speed_timer > 0){
				var dsp_spd_h = ease_quadIn( 4, 8, dspecial_speed_timer, dspecial_speed_timer_max );
				hsp = (dsp_spd_h*spr_dir)+(right_down-left_down);
				dspecial_speed_timer = clamp(dspecial_speed_timer-1, 0, 500);
				if (has_hit_player||has_hit){
				}else{
					var dsp_spd_v = ease_cubeIn( -2, -10, dspecial_speed_timer, dspecial_speed_timer_max );
					vsp = dsp_spd_v;
					dspecial_speed_timer = clamp(dspecial_speed_timer-1, 0, 500);
				}
			}
		}
		if (window >= 3 || window == 8){
			can_wall_jump = true;
		}
		if (window == 3 || window == 8){
			if (!free){
				if (dsp_bounce_count>=1 || !special_down){
					window = 4; window_timer = 0;
					vsp = -3;
					destroy_hitboxes()
					//print("stopped... it was:"+string(dsp_bounce_count))
					spawn_base_dust(x, y, "land", spr_dir)
					sound_play(asset_get("sfx_land_light"),false,noone,1,1)
				}else{
					dsp_downpour = false;
					if (window==8){window=3;}
					vsp = -6;
					hsp = clamp(hsp+2*(right_down-left_down),-6,6);
					dsp_bounce_count++;
					//print(string(dsp_bounce_count))
					spawn_base_dust(x-(10*spr_dir), y, "dash", spr_dir)
					spawn_base_dust(x+(10*spr_dir), y, "dash", spr_dir*-1)
					sound_play(sound_get("bounce"),false,noone,1,1)
					sound_play(sound_get("bounce2"),false,noone,0.9,1.2)
				}
			}
			/*if (has_hit){//this isnt working??????????????
				attack_end();
				has_hit = false;
			}*/
			//vforce's ledge snap code thank you
			if (place_meeting(x + hsp, y, asset_get("par_block")) && free && vsp>-2) 
			{
				for (var i = 1; i < 30; i++)
				{
					if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
					{
						y -= i;
						break;
					}
				}
			}
		}
		if (window == 8){
			fall_through = true;
			vsp = 1;
			//vsp = clamp(vsp+0.5, -620, dsp_downpour_vsp);
			//hsp = dsp_downpour_hsp*spr_dir;
			if (window_timer==get_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH)){
				window_timer=0;
			}
		}
		var min_timer_wait = 20*(1.5-has_hit_player);
		if (window == 3 && window_timer == min_timer_wait){
			white_flash_timer = 10;
		}
		if (window == 3 && window_timer > min_timer_wait){
			if (shield_pressed||jump_pressed){
				destroy_hitboxes()
				window = 4; window_timer = 0;
			}
		}
		if (window == 3 && window_timer > min_timer_wait){
			if (!special_down){
				destroy_hitboxes()
				window = 4; window_timer = 0;
			}
			can_fast_fall = true;
		}else{
			can_fast_fall = false;
		}
		if (window == 4){
			if (window_timer == 1){
				sound_play(asset_get("sfx_pigeon_spin"),false,noone,0.6,3)
				destroy_hitboxes()
			}
		}
		if (window != 6){
			dsp_hsp_store = hsp;
			dsp_vsp_store = vsp;
		}
		if (window == 6 && window_timer == 1){
			hsp = dsp_hsp_store/2;
			vsp = dsp_vsp_store-2;
		}
	}
}
if ( attack == AT_DSPECIAL ){
	if (!hitpause){
		if (window == 1 && window_timer == 1){
			sound_play(asset_get("sfx_clairen_hair"),false,noone,1,1.1)
			spawn_base_dust(x-(12*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(12*spr_dir), y, "dash", spr_dir*-1)
		}
		if (window == 1 && window_timer == 4){
			sound_play(asset_get("sfx_orca_snow_evaporate"),false,noone,0.4,1.6)
		}
		if (window == 7 && window_timer == 1){
			sound_play(asset_get("sfx_buzzsaw_throw"),false,noone,0.8,1.15)
		}
		if (window == 8 && window_timer == 5){
			sound_play(asset_get("sfx_clairen_fspecial_dash"),false,noone,1,0.9)
			spawn_base_dust(x-(22*spr_dir), y, "dash", spr_dir)
			spawn_base_dust(x+(22*spr_dir), y, "dash", spr_dir*-1)
		}
	}
	if (instance_exists(grabbed_player_obj)) {
		
		if ( (window >= 5 && window <= 12) || (window==12&&window_timer<=6) ){
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
		}
		
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 9) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.force_depth = 1;
			grabbed_player_obj.depth = depth-1;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (!dsp_hit) {
				if (!hitpause){
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
					window = 5;
					window_timer = 0;
					dsp_hit = true;
				}
			}
			 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 37 * spr_dir;
				var pull_to_y = -20;
			//on the first window, pull the opponent into the grab.
			if (window == 5) { 
				
				if (!hitpause){
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
			}
			if (window == 6) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x
				grabbed_player_obj.y = y + pull_to_y
			}
			if (window == 7) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x + (10 * spr_dir) + (sin( get_gameplay_time()*0.8 )*4)
				grabbed_player_obj.y = y + pull_to_y - 10 + (sin( get_gameplay_time()*0.8 )*1)
				if (window_timer%5==0){
					spawn_base_dust(x-(12*spr_dir), y, "dash", spr_dir)
					spawn_base_dust(x+(12*spr_dir), y, "dash", spr_dir*-1)
				}
			}
			if (window == 8) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x
				grabbed_player_obj.y = y + pull_to_y
				if (window_timer==1){
					if ( (spr_dir == 1 && left_down)||(spr_dir == -1 && right_down) ){
						spr_dir = spr_dir*-1;
					}
				}
				if (window_timer==5){
					var raincloud_apply_time = 500;//CHANGE THIS FOR RAINCLOUD DURATION
					if (grabbed_player_obj.ushr_rainclouded == false){
						grabbed_player_obj.ushr_rainclouded = true;
						grabbed_player_obj.ushr_rainclouded_timer = raincloud_apply_time;//TIMER
						grabbed_player_obj.ushr_rainclouded_timer_max = raincloud_apply_time;
						var cloudcloud = instance_create( x, y, "obj_article1" );
						cloudcloud.applied_player_id = grabbed_player_obj;
					}else{//if true
						grabbed_player_obj.ushr_rainclouded_timer = raincloud_apply_time;//TIMER
						grabbed_player_obj.ushr_rainclouded_timer_max = raincloud_apply_time;
					}
				}
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}




//CUSTOM WINDOW GRID STUFF
if ( get_window_value( attack, window, AG_IASA_THIS_WINDOW ) ){
	if (!was_parried){
		if (get_window_value( attack, window, AG_IASA_THIS_WINDOW ) == 1){
			iasa_script();
			can_wall_jump = true;
		}
		if (get_window_value( attack, window, AG_IASA_THIS_WINDOW ) == 2){
			if (has_hit){
				iasa_script();
				can_wall_jump = true;
			}
		}
	}
}
if ( get_window_value( attack, window, AG_AUTOCANCEL )>0 ){
	if (get_window_value( attack, window, AG_AUTOCANCEL )==2){
		//does nothing so you can override
	}else{
		set_attack_value( attack, AG_LANDING_LAG, land_time*(1.5-(0.5*has_hit_player)) );
		//print(string(land_time*(1.5-(0.5*has_hit_player))))
		can_wall_jump = true;
	}
}else{
	reset_attack_value( attack, AG_LANDING_LAG );
}






//=======================================================================================================================//


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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if (newdust != -4){
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
}
return newdust;



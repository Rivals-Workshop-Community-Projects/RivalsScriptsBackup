// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	hsp = clamp(hsp, -2, 2)
	vsp = clamp(vsp, -15, 2)
	can_fast_fall = false;
	
	move_cooldown[AT_NSPECIAL] = 20
}

if (attack == AT_FSPECIAL){
	can_move = false;
	vsp = clamp(vsp, -15, 4)
	if (window == 1){
		if (window_timer == 1){
			sound_play(sound_get("ding_3"));
			if (fsp_air_track>0){
				fsp_air_track=fsp_air_track-1;
				track_altered = true;
			}
		}
	}
	if (!hitpause){
		if (fsp_air_track>0){
			if (window == 2 || window == 4){
				if (window_timer == 1){
					if (free){
						vsp = -4+down_down-up_down
						hsp = 7*spr_dir
					}else{
						hsp = 8.5*spr_dir
					}
				}
			}
		}
	}
	if (window == 6){
		if (!was_parried){
			can_wall_jump = true;
			can_jump = true;
		}
		move_cooldown[AT_FSPECIAL] = 20
	}
}

if (attack == AT_JAB){
	if (has_hit_player){
		if (!was_parried){
			if (window == 3 || window >= 6){
				can_jump = true;
			}
		}
	}
}

if (attack == AT_NAIR){
	if (attack_down){
		if (window == 2){
			gravity_speed = 0.2;
		}else{
			gravity_speed = 0.25;
		}
		grav_altered = true;
	}else{
		gravity_speed = orig_grav;
		grav_altered = false;
	}
}

if (attack == AT_USTRONG){
	if (window==1){
		switch (window_timer){
			case 4://6
			sound_play(sound_get("hit_medium_3"));
			break;
			case 14://20
			sound_play(asset_get("sfx_watergun_fire"));
			break;
		}
	}
}

if (attack == AT_USPECIAL){
	if (window>1 && window < 10){
		//can_move = false;
	}
	if (!hitpause){
		if (window==2){
			if (window_timer==4){
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==3){
			if (window_timer==6||window_timer==12){
				sound_stop(sound_get("wind_1"));
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==4){
			if (window_timer==6){
				sound_stop(sound_get("wind_1"));
				sound_play(sound_get("wind_1"));
			}
		}
		if (window==7){
			if (runeI){
				if (window_timer==1){
					sound_play(sound_get("wind_2"), false, noone, 1, 1.4);
				}
			}else{
				if (window_timer==5){
					sound_play(sound_get("wind_2"));
				}
			}
		}
	}
	if (window>4){
		can_wall_jump = true;
	}
}

if (attack == AT_DSPECIAL){
	if (window == 1){
		if (window_timer == 1){
			reset_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME);
			reset_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH);
			if (dsp_air_track>0){
				dsp_air_track=dsp_air_track-1;
				track_altered = true;
			}
		}
	}
	can_move = false;
	if (!hitpause){
	if (dsp_air_track>0){
		if (window < 7){
			vsp = clamp(vsp, -15, 1)
		}
		if (window == 7){
			vsp = clamp(vsp, -15, 3)
		}
		}else{
		if (window < 7){
			vsp = clamp(vsp, -15, 6)
		}
		if (window == 7){
			vsp = clamp(vsp, -15, 6)
		}
	}
	if (window == 7){
		if (!was_parried){
			can_jump = true;
		}
	}
	if (window == 3||window == 5){
		if (window_timer == 1){
			if (right_down){
				dsp_dir = 1;
			}else if (left_down){
				dsp_dir = -1;
			}else{
				dsp_dir = 0;
			}
			if (dsp_dir!=0){
				hsp=10*dsp_dir
			}
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 14);
			set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 13);
			if (has_hit_player){
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 9);
			}
		}
	}
	if (window == 4||window == 6){
		if (dsp_dir!=0){
			var tmp_wl = get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH);
			hsp = ease_linear( 10, 0, window_timer, tmp_wl )*dsp_dir
		}
	}
	
	}
}

if (attack == AT_DSTRONG){
	if (window == 3){
		if (window_timer == 8){
			var tv = instance_create(x, y+4, "obj_article1");
			tv.player_id = id;
			tv.player = player;
			tv.spr_dir = spr_dir;
		}
	}
	if (window < 6){
		can_move = false;
	}
}

if (attack == AT_FSTRONG){
	if (window == 1){
		if (window_timer == 1){
			fstrong_store = 0;
			if (safety_strap == "off"){
				sound_play(sound_get("ding_2"),false,noone,0.6);
			}
		}
		hsp=clamp(hsp+(0.7*spr_dir),-2+right_down,2-left_down)
	}
	if (window == 2){
		if (window_timer == 1){
			if (!hitpause){
				switch (fstrong_store){
					case 0:
					case 1:
						//drop down
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(18*spr_dir), y-32)
						hb_tmp.grav = 0.5
						hb_tmp.proj_angle = -15*spr_dir
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(18*spr_dir), y-32)
						}
						hb_tmp.vsp = 1.5
						hb_tmp.length = 30
						hb_tmp.kb_scale = 0
						hb_tmp.sound_effect = sound_get("hit_bowling_weak")
						break;
					case 2:
						//drop down
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(-4*spr_dir), y-8)
						hb_tmp.grav = 0.5
						hb_tmp.proj_angle = -100*spr_dir
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(-4*spr_dir), y-8)
						}
						hb_tmp.vsp = 1.5
						hb_tmp.length = 20
						hb_tmp.kb_scale = 0
						hb_tmp.sound_effect = sound_get("hit_bowling_weak")
						break;
					case 3:
					case 4:
						//throw back
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(-44*spr_dir), y-19)
						hb_tmp.grav = 0.2
						hb_tmp.proj_angle = 80*spr_dir
						hb_tmp.hsp = -9*spr_dir
						hb_tmp.length = 16
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(-44*spr_dir), y-19)
						if (runeG){
						hb_tmp.hsp = -8*spr_dir
						}else{
						hb_tmp.hsp = -5*spr_dir
						}
						hb_tmp.length = 40
						}
						hb_tmp.vsp = -4
						hb_tmp.hit_flipper = 5
						hb_tmp.sound_effect = sound_get("hit_bowling_moderate")
						hb_tmp.through_platforms = -1;
						break;
					case 5:
						//drop down
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(-40*spr_dir), y-16)
						hb_tmp.grav = 0.5
						hb_tmp.proj_angle = 85*spr_dir
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(-40*spr_dir), y-16)
						}
						hb_tmp.hsp = 1*spr_dir
						hb_tmp.vsp = 1.5
						hb_tmp.length = 30
						hb_tmp.kb_scale = 0
						hb_tmp.sound_effect = sound_get("hit_bowling_weak")
						break;
					case 6:
						//throw low
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(8*spr_dir), y-16)
						hb_tmp.grav = 0.8
						hb_tmp.vsp = -3
						hb_tmp.proj_angle = 90*spr_dir
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(8*spr_dir), y)
						}
						hb_tmp.hsp = 8.5*spr_dir
						hb_tmp.sound_effect = sound_get("hit_bowling_perfect")
						sound_play(sound_get("bowling"))
						sound_play(sound_get("bowling_glide"),true)
						break;
					case 7:
						//throw perfect
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(48*spr_dir), y-40)
						hb_tmp.hsp = 18*spr_dir
						hb_tmp.proj_angle = -90*spr_dir
						sound_play(sound_get("decisive"))
						sound_play(sound_get("swing_8"))
						sound_play(sound_get("swing_5"))
						sound_play(sound_get("swing_6"))
						hb_tmp.length = 20
						hb_tmp.kb_scale = 1
						spawn_hit_fx( x+(48*spr_dir), y-40, 113 )
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(48*spr_dir), y-10)
						hb_tmp.hsp = 7.8*spr_dir
						hb_tmp.vsp = -6
						}
						hb_tmp.sound_effect = sound_get("hit_bowling_perfect")
						break;
					case 8:
						//throw high
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(44*spr_dir), y-32)
						hb_tmp.proj_angle = -35*spr_dir
						hb_tmp.hsp = 8*spr_dir
						hb_tmp.vsp = -12
						hb_tmp.length = 20
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(44*spr_dir), y-32)
						hb_tmp.hsp = 4*spr_dir
						hb_tmp.vsp = -9.5
						hb_tmp.length = 65
						}
						hb_tmp.sound_effect = sound_get("hit_bowling_moderate")
						break;
					case 9:
					case 10:
						//drop down
						if (safety_strap == "off"){
						var hb_tmp = create_hitbox( AT_FSTRONG, 2, x+(38*spr_dir), y-56)
						hb_tmp.grav = 0.5
						hb_tmp.proj_angle = 20*spr_dir
						}else{
						var hb_tmp = create_hitbox( AT_FSTRONG, 1, x+(38*spr_dir), y-56)
						}
						hb_tmp.hsp = 3*spr_dir
						hb_tmp.vsp = -2
						hb_tmp.length = 40
						hb_tmp.sound_effect = sound_get("hit_bowling_moderate")
						break;
				}
				sound_play(sound_get("bowling_throw"));
				//print_debug( string(fstrong_store) )
			}
		}
	}
}



//the forbidden no-strap zone

if (safety_strap == "off"){
	if (!hitpause){
	if (attack == AT_FTILT){
		if (window == 1){
			if (window_timer == 6){
				var tmp_x_off = (66*spr_dir)
				var tmp_y_off = -50
				var hb_tmp = create_hitbox( AT_FTILT, 2, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = 8*spr_dir
				hb_tmp.vsp = -1.5
				hb_tmp.proj_angle = -80*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	if (attack == AT_DTILT){
		if (window == 1){
			if (window_timer == 5){
				var tmp_x_off = (69*spr_dir)
				var tmp_y_off = -20
				var hb_tmp = create_hitbox( AT_DTILT, 3, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = 9*spr_dir
				hb_tmp.vsp = -1.35
				hb_tmp.grav = 0.5
				hb_tmp.proj_angle = -95*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	if (attack == AT_UTILT){
		if (window == 2){
			if (window_timer == 5){
				var tmp_x_off = (25*spr_dir)
				var tmp_y_off = -70
				var hb_tmp = create_hitbox( AT_UTILT, 4, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = 4*spr_dir
				hb_tmp.vsp = -7.5
				hb_tmp.proj_angle = -28*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	if (attack == AT_DATTACK){
		if (window == 1){
			if (window_timer == 12){
				var tmp_x_off = (48*spr_dir)
				var tmp_y_off = -50
				var hb_tmp = create_hitbox( AT_DATTACK, 2, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = 8.5*spr_dir
				hb_tmp.vsp = -4
				hb_tmp.proj_angle = -65*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	
	if (attack == AT_NAIR){
		if (window == 1 && window_timer == 9||
			window == 2 && (
			window_timer == 3 ||
			window_timer == 7 ||
			window_timer == 11)){
			var tmp_x_off = (25*spr_dir)
			var tmp_y_off = -65
			var hb_tmp = create_hitbox( AT_NAIR, 5, x+tmp_x_off, y+tmp_y_off )
			spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
			hb_tmp.hsp = (2*spr_dir)+(((window_timer/5)-2)*spr_dir)-(hsp/2)
			hb_tmp.vsp = -8+(vsp/2)
			hb_tmp.grav = 0.5
			hb_tmp.proj_angle = -10*spr_dir
			hb_tmp.through_platforms = 10
			sound_play(sound_get("hit_bowling_weak"),false,noone,0.5,1+window_timer/50);
		}
	}
	if (attack == AT_DAIR){
		if (window == 1){
			if (window_timer == 9){
				var tmp_x_off = (1*spr_dir)
				var tmp_y_off = 15
				var hb_tmp = create_hitbox( AT_DAIR, 4, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = (2*spr_dir)+(hsp/2)
				hb_tmp.vsp = 11+(vsp/2)
				hb_tmp.proj_angle = -170*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	if (attack == AT_UAIR){
		if (window == 1){
			if (window_timer == 8){
				var tmp_x_off = (20*spr_dir)
				var tmp_y_off = -110
				var hb_tmp = create_hitbox( AT_UAIR, 3, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = (3*spr_dir)+(hsp/2)
				hb_tmp.vsp = -7.5+(vsp/4)
				hb_tmp.proj_angle = -20*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	if (attack == AT_BAIR){
		if (window == 2){
			if (window_timer == 5){
				var tmp_x_off = (-74*spr_dir)
				var tmp_y_off = -40
				var hb_tmp = create_hitbox( AT_BAIR, 3, x+tmp_x_off, y+tmp_y_off )
				spawn_hit_fx( x+tmp_x_off, y+tmp_y_off, 14 )
				hb_tmp.hsp = (-9*spr_dir)+(hsp/2)
				hb_tmp.vsp = 2+(vsp/2)
				hb_tmp.proj_angle = 100*spr_dir
				hb_tmp.through_platforms = 10
				sound_play(sound_get("hit_bowling_weak"));
				
			}
		}
	}
	
	
	}
}







//exernal rune code
if (runeE){
	if (attack == AT_JAB){
		if (window == 6&&window_timer>5||window==8){
			if (attack_down){
				window=1
				window_timer=0
				attack_end()
			}
		}
	}
}

if (runeK){
	if (attack == AT_FSPECIAL){
		if (window == 1){
			if (window_timer == 1){
				window_timer = 11
				sound_play(sound_get("decisive"))
			}
		}
	}
}
if (runeI){
	if (attack == AT_USPECIAL){
		if (window == 3){
			if (window_timer == 1){
				window = 4
				window_timer = 1
			}
		}
	}
}

if (runeM){
	if (attack == AT_USTRONG){
		if (window == 3){
			if (window_timer == 4){
				var tmp_x_off = 20
				var tmp_y_off = 9
				var hb_tmp = create_hitbox( AT_USTRONG, 1, x+(16+tmp_x_off)*spr_dir, y-80+tmp_y_off )
				hb_tmp.hsp = 2*spr_dir
				hb_tmp.vsp = -7.5
				var tmp_x_off = 20
				var tmp_y_off = 9
				var hb_tmp = create_hitbox( AT_USTRONG, 1, x+(16-tmp_x_off)*spr_dir, y-80+tmp_y_off )
				hb_tmp.hsp = -2*spr_dir
				hb_tmp.vsp = -7.5
			}
		}
	}
}


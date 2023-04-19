// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//iasathing
if (get_window_value(attack, window, AG_IASA) == true){
	if (!was_parried && !pratfall_queue){
		iasa_script()
	}
}

if (attack == AT_JAB){
	was_parried = false;
	if ((window>=3 && window<5) && !was_parried){
		can_attack = false;
		move_cooldown[AT_JAB] = 1;
	if (has_hit){can_attack = true;}
	}
}

if (attack == AT_NAIR){
	if (window == 1 && window_timer == 1){
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
	}
	if (window>1 && window<5){
		if (attack_down){
			set_attack_value(AT_NAIR, AG_CATEGORY, 2);
		}else{
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}
	}
	if (!free && window<5 && attack_down){
		if (!was_parried){
			window = 5;
			window_timer = 0;
			set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);
			destroy_hitboxes()
			sound_play(asset_get("sfx_land_heavy"))
			sound_play(asset_get("sfx_waveland_gus"))
		}
	}
	if (window>=5 && window<7){
		if (has_hit){can_jump = true;}
		var bike_hsp_offset = 0
		if ( (spr_dir==1 && left_down)||(spr_dir==-1 && right_down) ){ bike_hsp_offset = spr_dir*-2; };
		if (!hitpause) { hsp = (7*spr_dir)+bike_hsp_offset; }
		if (was_parried){
			window = 7;
			window_timer = 0;
		}
		if (window_timer%6 == 0){
			if (!hitpause){
				sound_play(sound_get("step"), false, noone, 0.5);
			}
		}
	}
	if (window==7){
		hsp = 4*spr_dir;
	}
}
if (attack == AT_FAIR){
    if (window == 1 && window_timer == 1){
        cat_rand = random_func( 4, 3, true ); //0-2
    }
    if (!hitpause){
        if ( window == 2 && window_timer == get_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH)-1 ){
            sound_play(sound_get("SWE2"), false, noone, 0.3);
            
            if (cat_rand == 2){
                sound_play(sound_get("cat1"), false, noone, 0.5);
            }
        }
        if ( window == 5 && window_timer == get_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH)-1 ){
            sound_play(sound_get("SWE3"), false, noone, 0.3);
            
            if (cat_rand == 2){
                sound_play(sound_get("cat2"), false, noone, 0.5);
            }
        }
    }
    
}

if (attack == AT_UAIR){
	if (window == 2 && window_timer == 1){
		vsp = vsp-3//clamp(vsp-2, -16, 0);
	}
	if (window==3 || window==4){
		vsp = clamp(vsp, -16, 1);
		hsp = hsp + (sign(hsp)*-0.1)
	}
	if (window==5){
		if (!hitpause){
			if ((!attack_down && ! up_stick_down) || uair_timer >= uair_timer_max){
				window = 7;
				window_timer = 0;
				destroy_hitboxes()
			}
			vsp = clamp(vsp-0.45, -16, 2);
			hsp = hsp + (sign(hsp)*-0.1)
			uair_timer++;
			if (window_timer%16 == 0){
				attack_end()
				create_hitbox( AT_UAIR, 3, x, y );
			}
		}
	}
	if (window==6){
		if ((attack_down || up_stick_down) && uair_timer < uair_timer_max){
			window = 5;
			window_timer = 0;
		}
	}
	if (window==5 || window==6){
		can_fast_fall = false;
	}
	if (window>=5){
		can_shield = 1;
	}
	if (window==7){
		destroy_hitboxes()
		can_wall_jump = true;
	}
}

if (attack == AT_DAIR){
	if (window == 1){
		if (window_timer == 1){
			sound_play(sound_get("elec"), false, noone, 0.8, 1.2)
		}
		if (window_timer == 14){
			white_flash_timer = 5;
			sound_play(sound_get("neon"))
			sound_play(sound_get("elec"))
		}
	}
	if (window>2){
		can_wall_jump = true;
	}
}

if (attack == AT_FSTRONG){
	if (window == 1 && window_timer == 1){
		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6); //11 //16
	}
	if (window == 2 || window == 7 || window == 12){
		if (strong_charge<30){
			if (window==2){
				window = 7
				set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 7);
				set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 11); //11 //16
				sound_play(asset_get("sfx_forsburn_spew_end"), false, noone, 0.6, 0.8);
			}
		}else{
			if (window==7){
				window = 12
				set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 12);
				set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 16); //11 //16
				sound_play(asset_get("sfx_forsburn_spew_end"), false, noone, 0.6, 1);
			}
		}
	}
	if (window == 3 || window == 8 || window == 13){
		if ( window_timer == get_window_value(AT_FSTRONG, window, AG_WINDOW_LENGTH)-1 ){
			if (!hitpause){
				shake_camera(4, 3);
				sound_play(sound_get("thunder"), false, noone, 0.8);
				sound_play(asset_get("sfx_land_heavy"));
				sound_play(asset_get("sfx_zetter_downb"));
			}
		}
	}
}
if (attack == AT_USTRONG){
	hud_offset = 50;
	if (window == 1 && window_timer == 1){
		cat_rand = random_func( 4, 3, true ); //0-2
	}
	if (cat_rand == 2){
		if ( window == 2 && window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)-1 ){
			sound_play(sound_get("cat2long"), false, noone, 0.5, 1.1);
		}
	}
}


//specials


if (attack == AT_NSPECIAL) {
	if (window == 1 && window_timer == 6) { 
		sound_play(sound_get("handeye_in_quick"), false, noone, 0.9, 1.1)
	}
	if (window>4){
		vsp = 0;
		hsp = 0;
	}
	if (has_hit_player){
		if (!nsp_djump_healed){
			if (djumps > 0){
				djumps = 0;
				nsp_djump_healed = true;
			}
		}
	}
}
if (attack == AT_NSPECIAL_2) {
	hsp = 0;
	vsp = 0;
	if (window == 2 && window_timer == 1){
		door_storage.state = 3;
		door_storage.state_timer = 0;
	}
	if (window==7){
		iasa_script();
	}
}

//mawralgrab
if (attack == AT_NSPECIAL) {
	was_parried = false;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
	if (window == 1 && window_timer == 1) { 
		grabbed_player_obj = noone; 
		grabbed_player_relative_x = 0;
		grabbed_player_relative_y = 0;
		nsp_hit = false;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
	}
	if (window == 5 && window_timer == 5) { 
		if (spr_dir==1 && left_down){ spr_dir = -1 }
		if (spr_dir==-1 && right_down){ spr_dir = 1 }
	}
}
if (attack == AT_NSPECIAL && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= 6) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
		else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (!nsp_hit) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
			nsp_hit = true;
		}
		 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 26 * spr_dir;
			var pull_to_y = -6;
		//on the first window, pull the opponent into the grab.
		if (window == 4) { 
			
			if (!hitpause){
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
		}
		if (window >= 5) { 
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + pull_to_x
			grabbed_player_obj.y = y + pull_to_y
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}



if (attack == AT_FSPECIAL){
	fall_through = true;
	can_fast_fall = false;
	can_move = false;
	pratfall_queue = true;
	
	if (window == 1 && window_timer == 1){
		fsp_angle_str = 0;
		fsp_angle_move_a = 0;
		fsp_angle_move_b = 0;
		fsp_dir_lock = spr_dir;
		if (!free){vsp = short_hop_speed*-1};
		hsp = 7*spr_dir
		fsp_used = true;
		fsp_jump_storage = djumps;
		djumps = max_djumps;
	}
	if (window < 3){
		vsp = clamp(vsp, -20, 0)
	}
	if (window >= 3){
		var fsp_speed = ( 7 - ease_linear( 0, 4, fsp_timer, fsp_timer_max ) )*spr_dir
		
		fsp_angle_str = fsp_angle_str + ((up_down - down_down)*(spr_dir*1.5))
		fsp_angle_str = clamp(fsp_angle_str, -70, 70)
			fsp_angle_move_a = fsp_angle_str;
			fsp_angle_move_b = fsp_angle_move_a / 180 * -3.14; //45)*45)/180
		hsp = (fsp_speed * cos(fsp_angle_move_b));
		vsp = ((fsp_speed- (gravity_speed/10)) * sin(fsp_angle_move_b));
		iasa_script();
		fsp_timer++;
		
		spr_dir = fsp_dir_lock;
		clear_button_buffer( PC_SPECIAL_PRESSED );
		can_wall_jump = true;
		if (!free){
			set_state( PS_LANDING_LAG );
			landing_lag_time = 6;
		}
	}
/*	if (window == 3 && shield_down){
		window = 5;
		window_timer = 0;
	}*/
	if (window == 3){
		if (fsp_timer >= fsp_timer_max){
			window = 5;
			window_timer = 0;
		}
	}
	if (window == 4){
		window = 3;
		window_timer = 0;
	}
}

//reused from lumina:
//this is a custom homebrew "velocity-based" teleport.
//does not get you thru walls.
//it is such a messy code, but you can reference it if you want
if (attack == AT_USPECIAL){
	//usps1 usps2 usph  uspac uspe  uspr
	//0-0:1 1-2:2 3-3:1 4-5:2 6-7:2 8-8:1
	
	//Math.floor(angleDegree / 45) * 45
	can_fast_fall = false;
	if (window == 1){
		if (window_timer == 1){
			sound_play(sound_get("handeye_in"));
			sound_play(asset_get("sfx_boss_laser_hit"), false, noone, 0.3, 0.5);
			usp_land = false;
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 1);
		}
	}
	if (window <= 3){
		can_move = false;
		hsp = 0;
		vsp = 0;
	}
	if ( (window == 3 && window_timer == 8) || (window == 4 && window_timer == 6) ){
		if (special_down && door_storage != -4 && (door_storage.state==1||door_storage.state==3) && move_cooldown[AT_DSPECIAL]==0){
				if (window==3){
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 7);
					draw_indicator = false;
					invincible = true;
					invince_time = 1;
					fall_through = true;
				}
				if (window==4){
					//held uspecial
					x = door_storage.x
					y = door_storage.y
					sound_play(sound_get("handeye_out"));
					sound_play(sound_get("handeye_out"), false, noone, 0.9, 1.4);
					door_storage.state = 2;
					door_storage.state_timer = 0;
					door_storage.state_end = 4;
				}
		}else{
			//print("yeah yeah beebiss")
			//if (window==4){print("gubble")}
			//normal behavior
			var distance = 100;
			var angle = (round(joy_dir / 11.25) * 11.25) / 180 * -3.14; //45)*45)/180
			if (joy_pad_idle){
				hsp = 0;
				vsp = -distance;
			}else{
				hsp = (distance * cos(angle));
				vsp = (distance * sin(angle));
			}
			draw_indicator = false;
			invincible = true;
			invince_time = 1;
			fall_through = true;
			sound_play(sound_get("handeye_out"));
		}
	}
	//window 4 is the buffer
	if (window == 4){
		fall_through = true;
		draw_indicator = false;
		invincible = true;
		invince_time = 1;
		fall_through = true;
		if (window_timer>1&&window_timer<6){
			vsp = 0;
			hsp = 0;
		}
	}
	if (window == 4||window == 5){
		//??
	}
	if (window == 5 && window_timer == 1){
		fall_through = false;
		draw_indicator = true;
	}
	if (window >= 5 && window < 9){
		hsp = 0;
		vsp = 0;
	}
	if (window >= 7){
		can_wall_jump = true;
	}
}

if (attack = AT_DSPECIAL){
	can_move = false;
	can_fast_fall = false;
	if (window_timer!=1 && !free){hsp=0};
	if (window == 1){
		if (free){
			if (window_timer==1){
				if (dsp_phase1==0){
					//print("!phase1")
					ground_detector = instance_create( x, y, "obj_article2" );
					dsp_phase1++;
					window_timer--;
				}else if (dsp_phase1>0){
					//print("phase1")
					if (grounddetected){
						vsp = 0;
						hsp = 0;
						window_timer--;
						dsp_phase1++;
						if (dsp_phase1>=14){
							//print("detected, proceeding!")
							ground_detector.discarded = true;
							ground_detector = -4;
							grounddetected = false;
							spawn_hit_fx( x, y-(char_height/2), 66 );
							dsp_orig_y = y;
							dsp_phase1 = -1;
							vsp = 100;
							hsp = 0;
							visible = false;
							draw_indicator = false;
							invincible = true;
							invince_time = 1;
							sound_play(sound_get("door_tierup"), false, noone, 1, 1.3)
							sound_play(sound_get("door_tierup"), false, noone, 1, 1.3)
							sound_play(asset_get("sfx_boss_laser_hit"), false, noone, 0.6, 0.6);
						}
					}else{
						//print("didnt detect somehow")
						ground_detector.discarded = true;
						ground_detector = -4;
						grounddetected = false;
						attack = AT_DSPECIAL_2;
						state_timer = 0;
						window_timer = 0;
					}
				}
			}
		}
		if (dsp_orig_y!=0&&!free){
			var dsp_dist = dsp_orig_y - y;
			//print(string(dsp_dist))
			//up
			//spawn_hit_fx( x, y+((dsp_dist/3)*1), 66 );
			//spawn_hit_fx( x, y+((dsp_dist/3)*2), 66 );
			//spawn_hit_fx( x, y+((dsp_dist/3)*3), 66 );
			spawn_hit_fx( x, y-(char_height/2), 66 );
						visible = true;
						draw_indicator = true;
						invincible = false;
						invince_time = 0;
			
			//down
			dsp_orig_y = 0;
		}
		if (window_timer == 7){
			if (door_storage != -4){ //if door storage remembers a door (=door exists already), teleport it to here instead
				door_storage.x = x;
				door_storage.y = y;
				door_storage.spr_dir = spr_dir;
				if (door_storage.state == 1){
					door_storage.state = 0;
					door_storage.state_timer = 0;
				}
				move_cooldown[AT_DSPECIAL] = 125;
				spawn_hit_fx( x, y-(char_height/2), 66 );
			}else{
				door_storage = instance_create( x, y, "obj_article1" );
				door_storage.door_kind = random_func( 2, 13, true ); //0-12
				door_storage.spr_dir = spr_dir;
				move_cooldown[AT_DSPECIAL] = 125;
			}
		}
	}
}
if (attack = AT_DSPECIAL_2){
	if (window == 1 && window_timer == 1){
		var voice_rand = random_func( 1, 2, true )+1; //0-1
		sound_play(sound_get("voice"+string(voice_rand)), false, noone, 0.4);
		move_cooldown[AT_DSPECIAL_2] = 30;
	}
}






if (attack == AT_TAUNT){
	if (window == 2 && window_timer == 1){
		var flute_rand = random_func( 7, 5, true )+1; //0-4
		sound_play(sound_get("flute"+string(flute_rand)), false, noone, 0.6);
		
	}
}


if (attack==AT_UTILT||attack==AT_FTILT||attack==AT_DTILT){
  if (jabparry_queue == true){
    jabparry_queue = false;
    was_parried = true;
  }
}












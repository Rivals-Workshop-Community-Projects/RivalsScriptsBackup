//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND){
    trigger_b_reverse();
}

//NTHROW, UTHROW, USPECIAL, FSPECIAL
grabs();

if(attack == AT_JAB){
	if(window == 1 and window_timer == 1){
		no_tilt = false; 
		magnet_timer = 0;
	} 
	if(window == 6){ // KARA CANCELS
		if(is_attack_pressed(DIR_NONE)){//EXCLUSIVE JAB BUFFER
			no_tilt = 12;
		}
		no_tilt--;
		if(window_timer >= get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME)){
			if(no_tilt >=0 and special_pressed){
				var hs = get_window_value(attack, window+1, AG_WINDOW_HSPEED);
				hsp += hs*spr_dir;
				// print(hsp)
				if(up_down){
					set_attack(AT_USPECIAL);
				}else if(left_down or right_down){
					set_attack(AT_FSPECIAL);
				}else if(down_down){
					set_attack(AT_DSPECIAL);
				}else{
					set_attack(AT_NSPECIAL);
				}
			}
		}
	}
	if(window == 8){
		if(window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)){
			set_num_hitboxes(attack, 4 + attack_down);
			
		}
	}
	if(window == 9){
		user_event(2);
		magnet_timer++;
		if(magnet_timer%4 == 1) sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.7);
		if(!attack_down){
			window++;
			window_timer = 0;
		}
	}
	if(window == 10){
		user_event(3);
	}
}

if(attack == AT_DATTACK){
	if(window == 1 and window_timer == 9){
		sound_play(asset_get("sfx_obstacle_hit"))
		sound_play(asset_get("sfx_orcane_fspecial"))
	}
}

if(attack == AT_FSTRONG){
	if(window == 1 and window_timer == 1) { 
		reflect_id = noone;
		times_reflected = 0;
		jet_ball_timer = 0
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_INVINCIBILITY, 0);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 0);
	}
	can_counter = (window == 1 and window_timer > 3 and !smash_charging) or (window != 1 and window != 4)
	if(!can_counter){
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_INVINCIBILITY, 0);
	}else{
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_INVINCIBILITY, 2);
		// set_window_value(AT_FSTRONG, 3, AG_WINDOW_INVINCIBILITY, 2);
		// set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 2);
	} 
	var w = get_hitbox_value(attack, 1, HG_WINDOW);
	if(window < w){//Create reflector one frame earlier because frame 1 create hitbox doesn't exist :(
		if(can_counter and reflect_id == noone) {
			var fstrong_collide = false;
			with pHitBox {
				if(!fstrong_collide){
					if (player != other.player and type == 2 and !plasma_safe){ // hurtbox collide
						var fstrong_collide = place_meeting(x + hsp, y + vsp, other.hurtboxID);
						if(fstrong_collide){
							// other.spr_dir = (player_id.x < other.x) ? -1 : 1;
							destroyed = true;
							if(other.reflect_id == noone){
								sound_play(asset_get("sfx_absa_whip"));
							}
							other.reflect_id = player_id;
							other.times_reflected++;
						}
					}
				}
			}
		}
	}
	if(reflect_id != noone){
		// set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_lightning"));
		set_window_value(AT_FSTRONG, window, AG_WINDOW_INVINCIBILITY, 2);
		// set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 2);
	}
	if(window > 1){//Check if hitbox is active
		if(reflect_id and jet_ball_timer > jet_ball_time){
			var hbox = create_hitbox(attack, 2, (x + 30*spr_dir), y-60);
			hbox.bubble = true;
			hbox.static = true;
			hbox.volley_cooldown = 10;
			
			// else if(!instance_exists(lightning_hbox)){
				
			// 	if((spr_dir > 0 and reflect_id.x > x) or (spr_dir < 0 and reflect_id.x < x)){
			// 		spawn_lightning(true); //true == roaming, false == default
			// 	}else{
			// 		spawn_lightning(false);
			// 	}
				
			// }
			reflect_id = noone;
		}
	}
	// if(window == 4){
	// 	if(window_timer > 14*( 1 + !has_hit_player*0.5) ){
	// 		if(was_parried){
	// 			window = 29;
	// 		}else{
	// 			iasa_script();
	// 		}
			
	// 	}
	// }
}

if(attack == AT_DSTRONG){
	if(instance_exists(orb_lifetime_checker)){
		
		if(orb_lifetime_checker.static and orb_lifetime_checker.step_timer == orb_lifetime_checker.dust_length - 1){
			right_bubble = create_hitbox(attack, 7, x + spr_dir*90, y - 52);
			right_bubble.bubble = true;
			right_bubble.vsp = -0.5;
			right_bubble.hsp = 0.5*spr_dir;
		}
	}
	if(window == 2){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){	
			sound_play(asset_get("sfx_swish_medium"));
		}
	}
	if(window == 3){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2 and !hitpause and !was_parried){
			if(instance_exists(right_bubble)){
				orb_lifetime_checker = spawn_dust_fx(x + spr_dir*75, y - 48, orb_dissipate_spr, 15);
				orb_lifetime_checker.static = false;
			}else{
				orb_lifetime_checker = spawn_dust_fx(x + spr_dir*75, y - 48, orb_spawn_spr, 15);
				orb_lifetime_checker.static = true;
				// create_hitbox(attack, 6, x, y);
			}
		}
	}
	
	// if(window == 3 and window_timer == 1 and static >= 100){ 
	// 	if !instance_exists(right_bubble){ right_bubble = create_hitbox(attack, 3, x + 55, y + 10); right_bubble.bubble = true;}
	// 	if !instance_exists(left_bubble){ left_bubble = create_hitbox(attack, 3, x - 55, y + 10); left_bubble.bubble = true;}
	// }
}

if(attack == AT_UAIR){
	if(window == 1){
	}
}

if(attack == AT_BAIR){
	if(window == 1){
		if(window_timer == 1){ 
			sound_play(asset_get("sfx_swipe_medium1"))
		}
		if(free and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){ 
			wat_dust = spawn_dust_fx(x - 75*spr_dir, y-50, wat_spr, 12);
			wat_dust.dust_depth = depth;
		}
	}
}

//Multibox
if(attack == AT_DAIR){
    if(window == 2){
    	if(window_timer == 5){
    		 sound_play(asset_get("sfx_swipe_weak1"));
    	}
      if(window_timer == 10){
      	sound_play(asset_get("sfx_swipe_heavy2"));
      }
        
    }
}



if (attack == AT_FSPECIAL){
	hud_offset = 60
	if(window == 1 and window_timer == 1){
		have_armor = 1;
		sound_play(asset_get("sfx_waterwarp_start"));
	}
	
	if(have_armor and state_timer > 6 and window < 3){
		super_armor = 1;
	}else{
		super_armor = 0;
	}
	//f\left(x\right)=(x-a)/(b*0.12*0.9)-c
	// if(window == 2) soft_armor = 10 + window_timer*7/25
	// if(window >= 4) soft_armor = 0
	// if(window == 1 and window_timer > 7) soft_armor = 10
	
  if (window == 2){ //run
  	if(get_gameplay_time()%4 == 3 and hsp != 0){
  		spawn_hit_fx(x - spr_dir*25, y, wave_fx)
  		if(static == 100) sound_play(asset_get("sfx_hod_jab_end"), false, noone, 0.6, 1.7 - random_func(0, 1, false)*0.5)
  	}
  	if(!hitpause){
  		// print("NOOO")
	  	hsp += (hsp*spr_dir < 7)*spr_dir
	    hsp = hsp * 1.05;
	    hsp = clamp(hsp, -13, 13);
  	}
    if(shield_pressed){
      window = 10;
      window_timer = 0;
      super_armor = 0;
      clear_button_buffer(PC_SHIELD_PRESSED);
    }
    
    var fspecial_collide = collision_rectangle(x + 20, y - char_height, x + 72*spr_dir, y, oPlayer, true, true);
  	off_edge = window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH) and !fspecial_collide
  	
    if(fspecial_collide and window_timer > 3 and !hitpause and !free){
      window++;
      window_timer = 0;
      super_armor = 0;
      off_edge = false
      if(!position_meeting(spr_dir > 0 ? bbox_right : bbox_left, y, solids)){
      	hsp = 0
      }
    }
      
  }
  if(window == 3){
  	off_edge = false
  }
  if(window == 4){
  	if(has_hit_player){
  		set_window_value(attack, window, AG_WINDOW_GOTO, 5);
  	}else{
  		set_window_value(attack, window, AG_WINDOW_GOTO, 9);
  	}
  }
  
  //The leap, order matters, before the cancel, after run
	if(window == 2 or window == 10){
		if(free){
			var new_speed = (hsp - sign(hsp)*5)
			hsp = clamp(new_speed, -leave_ground_max, leave_ground_max)
			vsp = -5 + (down_down*2)
			window = 11
			window_timer = 0
			super_armor = 0;
		}
	}
  
  if(window == 10){
  	
  	if(window_timer == 1){
  		// if(abs(hsp) > 7){
  		// 	var sshsp = (abs(hsp) - 7)
  		// 	hsp *= (1 - (sshsp/6)*0.34)
  		// }
  		hsp = clamp(hsp, -8, 8)
  		sound_play(asset_get("sfx_springgo"))
  		shake_camera(3, 5);
  	}
  	if(window_timer > 9){
  		can_jump = true;
  	}
  }
  if(window == 11){
  	if(window_timer == 1){
  		sound_play(asset_get("sfx_bird_nspecial2"), false, noone, 0.6, 0.8)
  		sound_play(asset_get("sfx_holy_grass"), false, noone, 1, 0.7)
  	}
  	if(!free){
  		if(was_parried){
  				set_state(PS_PRATLAND)
  			}else{
  				set_state(PS_LAND)
  			}
  	}
  	can_move = true
  	can_fast_fall = false
  }
  if(window > 6){
  	if(has_hit_player and hit_player_obj.state == PS_HITSTUN){
  		hit_player_obj.force_depth = true
  		hit_player_obj.depth = depth - 1
  	}
  	have_armor = false
  }
  
}

if(attack == AT_FSPECIAL_AIR){
	can_fast_fall = false;
	can_move = false;
	// move_cooldown[attack] = 4;
	if(window == 1){
		if(window_timer == 1){
			if(hsp*spr_dir <= 0){
				hsp = spr_dir*3;
			}
		}
		// if(hsp*spr_dir < 3){
		// 	hsp += sign(hsp)*3
		// }
		
	}
	var dir_val = (-left_down*air_accel*0.8) + (right_down*air_accel*0.8);
	hsp += (dir_val)*(hsp*sign(dir_val) < 5);
	if(window == 3 or window == 2){
		
		if(window_timer > 4){
			can_wall_jump = true;
		}
		// if(!free){
		// 	window = 4;
		// 	window_timer = 0;
		// }
	}
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	move_cooldown[attack] = 99999;
	if(window == 1){
	    if(window_timer == 1){ 
	        times_through = 0;
	        _old_hsp = 0;
	        vel_lock = false;
	        moved_up = false
	    }
	    can_shield = true;
	    if(window_timer > 7){
	    	if(!vel_lock){
		    	vsp = min(0, vsp);
			    vel_lock = vsp == 0;
			    hsp = vsp == 0 ? 0 : hsp;
		    }else{
		    	vsp = 0; 
		    	hsp = 0;
		    }
	    }
	    
	    
	    if(window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){
	    	//var map_x = ease_linear(85, 35, 200*(spr_dir < 0) + spr_dir*( floor(100 + lengthdir_x(100, joy_dir)) ), 200)  ;
	    	
	    	var h_dir = left_down*-1 + right_down;
	    	if(h_dir != 0){
	    		spr_dir = h_dir;
	    	}
	    	
	    	if(!joy_pad_idle){
	    		var temp = round(abs(lengthdir_x(100, joy_dir)));
	    	}else{
	    		var temp = round(abs(lengthdir_x(100, 70)));
	    	}
	    	
	    	// print(temp)
	    	var map_x = ease_linear(90, 30, temp, 100);

	    	var velo = ease_quintOut(11, 15, round(map_x - 30), 60)
	    	var modifier_x = lengthdir_x(velo, map_x);
				var modifier_y = lengthdir_y(velo, map_x);
	    	
	    	set_window_value(attack, 2, AG_WINDOW_HSPEED, modifier_x)
	    	set_window_value(attack, 2, AG_WINDOW_VSPEED, modifier_y)
	    }
	}
  if (window == 2 or window == 3){
		can_move = false;
	  fly_dist = point_distance(0,0,hsp,vsp);
		can_wall_jump = true;
	  
	  if(cancel_cooldown > 0 and !hitstop) cancel_cooldown--
	  
	  if(!free){
	  	destroy_hitboxes();
	  	window = 5;
	  	window_timer = 0;
	  	set_window_value(attack, 7, AG_WINDOW_TYPE, 0);
	  }else{
	  	set_window_value(attack, 7, AG_WINDOW_TYPE, 7);
	  }

	  if (!moved_up){
      if (free && place_meeting(x+hsp,y, solids)){
        for (var i = 0; i < 39; i++){
          if (!place_meeting(x+hsp,y-(i+1), solids)){
              y -= i;
              moved_up = true;
              break;
          }
        }
      }
    }
	  if(left_down and hsp > -1*air_max_speed){
	  	hsp -= air_accel*.95;
	  }
	  if(right_down and hsp < air_max_speed){
	  	hsp += air_accel*.95;
	  }
	  if(shield_pressed and cancel_cooldown <= 0){
	  	if(was_parried){
	  		// window = 29;
	  	}else{
	  		//diferenca entre velocidade e -5 tem que ser no maximo -5 e no minimo -3
	    	var speeddd = min(-vsp - 5, -3)
	    	vsp += speeddd
	    	hsp = hsp - hsp/7
	  		set_state(PS_PRATFALL)
	  	}
	  	
	  }
	  var hsp_temp = hsp;
	  if(_old_hsp > 0 and hsp == 0) hsp = _old_hsp;
	  _old_hsp = hsp_temp;
		
  }
  if(window == 5){
  	if(window_timer == 1 and !hitpause) sound_play(asset_get("sfx_ori_stomp_hit"))
  	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){ 
  		if(instance_exists(grabbed_player_obj)){
  			spawn_dust_fx(x, y, lightningfx_uspecial_spr, 35);
  			set_num_hitboxes(attack, 2);
  		}else{
    		set_num_hitboxes(attack, 1);
    		create_hitbox(attack, 3, x, y)
    	}
  		
  	}
  }
  if (window > 4 && window < 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){ 
    window++;
    window_timer = 0;
  }
}

if (attack == AT_DSPECIAL){
	if(window == 1){
		if(window_timer == 1){ 
			falling_hbox = noone;
			sound_play(sound_get("dspecial"), false, noone, 1.1)
			if(free){
		        set_window_value(attack, 2, AG_WINDOW_VSPEED, -6);
		    }else{
		        set_window_value(attack, 2, AG_WINDOW_VSPEED, -7);
		    }
		} 
		if(window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) and vsp >= 1){ 
			vsp = 0;
			
		}
	}
	if(window == 2){
		if(window_timer == 1){ 
			dspecial_initial_speed = vsp;
		}
		if(vsp >= 0){
    		can_wall_jump = true;
    		if(vsp >= 3){
    			if(falling_hbox == noone){
    				window = 3;
    				window_timer = 0;
	    			falling_hbox = create_hitbox(attack, 2, 0, 0);
	    		}
    		}
    		if(!free){
    			window = 3;
					window_timer = 0;
    		}
    	}
    	var dir_val = (-left_down*air_accel*.95) + (right_down*air_accel*.95);
    	hsp += (dir_val)*(abs(hsp*dir_val) < 5);
    	hsp = clamp(hsp, -air_max_speed, air_max_speed);
	}
  if(window == 3){
  	can_wall_jump = true;
  	if(!free){
  		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) + 1;
  	}else{
  		// if(window_timer == 45){
	  	// 	white_flash_timer = 10
	  	// }
  		// if(window_timer >= 45){
	  	// 	can_shield = true
	  	// }
  	}
  	
  	var dir_val = (-left_down*air_accel*1) + (right_down*air_accel*1);
  	hsp += (dir_val)*(abs(hsp*dir_val) < 5);
  	hsp = clamp(hsp, -air_max_speed, air_max_speed);
  	
  	if(vsp >= max_fall){
  		vsp += grav
  		vsp = min(vsp, fast_fall)
  	}
  }
  if(!free){
  	if(instance_exists(falling_hbox)){
			falling_hbox.destroyed = true;
		}
  }
  if(window == 4){
		if(!wave_summoned and !free){
			var hleft = create_hitbox(AT_DSPECIAL, (static >= 100) + 3, x, y+4);
  		hleft.hsp = -20;
  		var hright = create_hitbox(AT_DSPECIAL, (static >= 100) + 3, x, y+4);
  		hright.hsp = 20;
  		hright.spr_dir = 1;
  		hleft.spr_dir = -1;
  		sound_play(asset_get("sfx_waterhit_heavy"))
  		wave_summoned = true;
		}
	}
  can_fast_fall = false;
  can_move = false;
  move_cooldown[AT_DSPECIAL_AIR] = 30;
  move_cooldown[AT_DSPECIAL] = 30;
}

if(attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer == 1){ 
			permanent_static = false;
			static = 0;
		}
		if(window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){ 
			
			var h_dir = left_down*-1 + right_down;
			var v_dir = up_down*-1 + down_down;
			
			set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, spr_dir*h_dir*4);	
			set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, v_dir*4);	
		}
		
		
	}
}

//Wallcrawl
if(attack == AT_EXTRA_1){
	hsp = 0;
	can_move = false;
	can_fast_fall = false;
	// can_wall_jump = false;
	// can_wall_cling = false;
	
	if(window == 1){
		stored_window_timer = window_timer;
		if(window_timer == 1){ 
			reset_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME);
			reset_window_value(AT_EXTRA_1, 3, AG_WINDOW_GOTO);
			reset_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE);
			reset_window_value(AT_EXTRA_1, 5, AG_WINDOW_GOTO);
			// do_pratfall = false;
			has_hit_player = false;
			
			vsp = 0;
		}
		if((is_special_pressed(DIR_ANY) or is_attack_pressed(DIR_ANY) or is_strong_pressed(DIR_ANY))){
			var h_offset = x - 49*spr_dir
			var v_offset = y - 80
			var not_coll = !position_meeting(h_offset, y-char_height-30, solids);
			// print(not_coll)
			set_window_value(attack, 3, AG_WINDOW_ANIM_FRAME_START, not_coll*10 + 11);
			set_window_value(attack, 4, AG_WINDOW_ANIM_FRAME_START, not_coll*10 + 15);
			set_window_value(attack, 5, AG_WINDOW_ANIM_FRAME_START, not_coll*10 + 20);
			
			set_hitbox_value(attack, 1, HG_HITBOX_X, not_coll*-45);
			set_hitbox_value(attack, 1, HG_HITBOX_Y, not_coll*40 + -145);
			set_hitbox_value(attack, 2, HG_HITBOX_X, not_coll*-30);
			
			window = 2;
			window_timer = 0;
		}
		
	}
	// print(has_hit_player)
	if(window <= 6){
		var sol_col = false;
		// with hurtboxID {
		// 	sol_col = place_meeting(x,y, other.solids);
		// }
		var sol_col = true
		if(sol_col){
			var h_offset = x - 34*spr_dir
			var v_offset = y - 80
			
			var col_above = position_meeting(h_offset, v_offset, solids);
			var col_below = position_meeting(h_offset, y, solids);
			
			if(!col_above){
				vsp += grav;
				if(!col_below){
					window = 29
				}
			}else{
				vsp = 0;
				var vel = 3;
				if(window <= 1){
					var temp_vsp = (up_down* -(vel)* col_above + down_down* (vel)* col_below);
				
					var _col_above = position_meeting(h_offset, v_offset + temp_vsp + vsp, solids);
					if(_col_above) vsp = temp_vsp;
				}
				
				
				hsp = 0;
				wallcrawl_image_index = ((vsp != 0)*(wallcrawl_image_index + wallcrawl_anim_speed*sign(vsp)*-1) + 8 ) % 8;
				
				if(col_below){
					
				}
			}
		}else{
			window = 7
			window_timer = 0;
		}
	}else{
		hsp = 0;
		vsp = 0;
	}
	
	if(window == 3){
		if(window_timer == 8 and has_hit_player){
			hit_player_obj.x = x - 30*spr_dir;
		}
	}
	
	if(window == 6){
		if(jump_down and stored_window_timer < get_window_value(attack, 1, AG_WINDOW_LENGTH)){
			window = 1;
			window_timer = stored_window_timer;
			has_hit_player = false;
			attack_end()
			reset_window_value(AT_EXTRA_1, 3, AG_WINDOW_GOTO);
			reset_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE);
			reset_window_value(AT_EXTRA_1, 5, AG_WINDOW_GOTO);
			// print(stored_window_timer)
		}
	}
	
	if(window == 7 or (window == 1 and !(jump_down or (can_tap_jump() and -spr_dir == -left_down + right_down) )) ){
		set_state(PS_WALL_JUMP);
	}
}

if(attack == AT_TAUNT){
	if(window == 1 and window_timer == 1){ 
		mark_to_cancel = false;
		sound_play(asset_get("sfx_waveland_wra"))
		// music_head = 0;
		// music_time = 0;
		// print(array_length_1d(midi))
		// active_notes = ds_list_create();
		// music_notes_num = array_length_1d(midi) - music_head;
	}
	if(!taunt_down){
		mark_to_cancel = true;
	}
	if((image_index == 13 or image_index == 5) and mark_to_cancel){
		window = 3;
		window_timer = 0;
		// ds_list_destroy(active_notes);
		// midi = 0;
	}
	if(window == 2){
		if(window_timer == 11 or window_timer == 28){
			var pr = 0.25
			var pitch = (random_func(0, 1, false)*pr/2 - pr) + 1;
			sound_play(asset_get("sfx_syl_ustrong_part1"), false, noone, 0.4, pitch)
			sound_play(asset_get("mfx_editor_paint"), false, noone, 0.4, pitch-0.2)
		}
		
		// music_time++;
		
		// check_active_notes();
		// queue_and_play_active_notes();
		// play_active_notes();
	}
	if(window == 3){
		if(window_timer == 18){
			sound_play(asset_get("sfx_blow_weak2"), false, noone, 0.5, 0.5)
		}
	}
	if(window == 4){
		if(col == 5 and modifier == 0){//Genesis
			if(window_timer == 1){
				spawn_dust_fx(x,y, G9_lightning_taunt_fx_spr, 16)
				var dt = spawn_dust_fx(x,y, G9_taunt_fx_spr, 40);
				dt.spr_dir = 1
			}
			if(window_timer == 4){
				sound_play(asset_get("sfx_absa_kickhit"))
				sound_play(asset_get("mfx_player_found"), false, noone, 0.4)
				sound_play(asset_get("mfx_title_start"), false, noone, 0.4)
			}
		}else{
			
		}
	}
	// if(window == 5){
	// 	if!(col == 5 and modifier == 0){// not Genesis
	// 		if(window_timer > 5){
	// 			iasa_script()
	// 		}
	// 	}
	// }
}

if(has_hit_player){
	static_cooldown = max(static_cooldown, 90);
}

#define StaticConsume(sp)

sound_play(asset_get("sfx_absa_new_whip2"));
sp.static_pull = 0;

#define check_active_notes()
// var size = ds_list_size(active_notes);
var i = 0;
while(i < ds_list_size(active_notes)){
	var notes = active_notes[| i];
	if(notes[@ 1] + notes[@ 2] < music_time - 1){
		sound_stop(notes[@ 5]);
		ds_list_delete(active_notes, i);
	}else{
		i++;
	}
}

#define queue_and_play_active_notes()


if(music_notes_num){
	
	var notes = midi[@ music_head];
	// print(notes)
	while(music_notes_num and notes[@ 1] < music_time){
		var volume = notes[@ 3]/127;
		print(notes[@0])
		var middle_c = notes[@ 4] == 0 ? 64 : 64;
		var pitch = power(1.05946, notes[@ 0] - middle_c);
		
		notes[@ 5] = sound_play(notes[@ 4] == 0 ? eee : violao, false, noone, volume, pitch);
		
		active_notes[| ds_list_size(active_notes)] = notes;
		music_head++;
		music_notes_num--;
		notes = music_notes_num != 0 ? midi[@ music_head] : 0;
	}
}

#define play_active_notes()

while( i < size ){
	
}

#define spawn_lightning(roaming)

var owner = reflect_id;

var x_loc = x + spr_dir*60;
var y_loc = y - 20;
var x_loc_other = roaming ? owner.x : x_loc + lightning_hbox_width*spr_dir;
var y_loc_other = roaming ? owner.y -owner.char_height/2 : y_loc;

var dire = point_direction(x_loc, y_loc, x_loc_other, y_loc_other);
var dist = point_distance(x_loc, y_loc, x_loc_other, y_loc_other);
var avg_x = (x_loc + x_loc_other)/2;
var avg_y = (y_loc + y_loc_other)/2;

lightning_hbox = create_hitbox(attack, 3, floor(avg_x), floor(avg_y));
lightning_hbox.mask_index = sprite_get("lightning_mask");
lightning_hbox.image_angle = dire;
lightning_hbox.proj_angle = dire;
lightning_hbox.image_xscale = dist/lightning_hbox_width;
lightning_hbox.set_image_xcale = dist/lightning_hbox_width;

// print(image_xscale)
lightning_hbox.image_yscale = 1;



#define grabs()

//Grab template by Mawral
if (attack == AT_NSPECIAL or attack == AT_USPECIAL_GROUND or attack == AT_USPECIAL or attack == AT_FSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) {  
    	switch_to_uthrow = false;
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
}


if(attack == AT_NSPECIAL){
	move_cooldown[attack] = 99999;
	if(window == 1){
		magnet_timer = 0;
		user_event(2)
	}
	if(window == 2){
		if(window_timer == 1 and magnet_timer == 0){
			// create_hitbox(attack, 1, x, y)
			sound_play(asset_get("sfx_dash_start"))
		}
		user_event(2);
	}
	if(window == 3){
		user_event(2);
		magnet_timer++;
		if(magnet_timer > 3){
			hsp = 0;
			vsp = 0;
		}
		
		if(magnet_timer > 24){
			set_window_value(attack, window, AG_WINDOW_TYPE, 0);
		}else{
			set_window_value(attack, window, AG_WINDOW_TYPE, special_down*9);
			
			if(magnet_timer%4 == 1){
				sound_play(asset_get("sfx_absa_orb_miss"));
				if(opponent_in_static){
					sound_play(asset_get("sfx_absa_dattack"), false, noone, 0.45, 1.65);
				}
			}
			if(!special_down){
				window++;
				window_timer = 0;
				destroy_hitboxes();
			}
		}
	}
	
	if(window == 5){
		user_event(3)
		// if(window_timer > 17 and free){
		// 	if(was_parried){
				
		// 	}else{
		// 		// if(window_timer == 18) move_cooldown[attack] = 9; 
		// 		// iasa_script();
		// 	}
		// }
		
		if(window_timer == 20){
			spawn_dust_fx(x +55*spr_dir, y-50, nspecial_water_throw_whiff_spr, 19)
		}
		
		if(window_timer > (31 + free*3)){
			if(was_parried){
				window = 29;
			}else{
				iasa_script();
			}
			
		}
	}
}

if (attack == AT_NTHROW){
	can_fast_fall = false;
	move_cooldown[AT_NSPECIAL] = 1;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if(window > 1 and window < 7){
		soft_armor = 25
	}else{
		soft_armor = 0
	}
	if(instance_exists(grabbed_player_obj)){
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 1) {
				can_move = false;
				if (window_timer <= 1) { reset_window_value(attack, 5, AG_WINDOW_GOTO) }
				
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 50 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			
				grabbed_player_obj.x = x + floor(ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length));
				grabbed_player_obj.y = y + floor(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
				
				// Look, I coded this once and now I have no clue how to translate it, this basically sums teh windows and does math to make an arc in which the character should follow, I had to plot this in demos to visualize it
				// Anyway, look away please
				if(window_timer == window_length){
					
					starting_x = grabbed_player_obj.x;
					starting_y = grabbed_player_obj.y;
					relative_dest_x = (10*2);
					if(!joy_pad_idle){
						var dir = spr_dir*dcos((floor(point_direction(0,0, dcos(joy_dir), -dsin(joy_dir))/45 + .5)%8)*45);
						relative_dest_x = spr_dir*lerp(-relative_dest_x-35, relative_dest_x, (dir+1)/2)
					}else{
						relative_dest_x *= spr_dir;
					}
					// print(relative_dest_x)
					relative_dest_y = -(110*2);
					count = 1;
					x2 = 0;
					
					drive_grabbed()
				}
				
			}
			
			if(window > 1 and window < 7){
				soft_armor = 25
			}else{
				soft_armor = 0
			}
			
			if(window == 2){
				can_move = false;
				var window_length = get_window_value(attack, 2, AG_WINDOW_LENGTH);
				drive_grabbed();
		
				if(window_timer == window_length){
					// var t = 24;
					// var s = x + ((relative_dest_x + 160) * spr_dir);
					// var so = x;
					// hsp = (s - so)/t;
					
					// var s = y + relative_dest_y + 10;
					// var so = y;
					// vsp = sqrt(abs(2 * (grav *0.5) * abs(s - so))) * sign(s - so) ;
					
					var hmax = relative_dest_y+char_height;
					
					hsp = (grabbed_player_obj.x-x)/ (get_window_value(attack, window+1, AG_WINDOW_LENGTH))
					vsp = -sqrt(-hmax*2*grav);
				}else{
					hsp = 0;
					vsp = 0;
				}
			}
			
			
			if (window == 3) { // Spawn Geyser
				can_move = false;
				var h_dir = left_down*-1 + right_down;
				if(window_timer == 1){
					geyser_dfx = spawn_hit_fx(x, y, nspecial_water_geyser_hfx)
					geyser_dfx.depth = depth -1;
				}
				drive_grabbed();
			}
			
			effects_nthrow()
			
			if(window == 4){
				can_move = false;
				custom_forward_air_drift(0.1)
				
				grabbed_player_obj.x = x + 0 * spr_dir;
				grabbed_player_obj.y = y - 92;
			}
			if(window == 5){
				can_move = false
				custom_forward_air_drift(0.1)
				grabbed_player_obj.x = x + 1 * spr_dir;
				grabbed_player_obj.y = lerp(grabbed_player_obj.y, y - 30, 0.6);
				//fall_through = true;
				
				if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					if(free){
						window = 8;
						window_timer = 0;
						hsp = -4*spr_dir;
						vsp = -3.5;
					}
				}
			}
			if(window == 6){
				if(window_timer <= 0 and !hitpause){
					var hsr = spawn_hit_fx(x, y, nspecial_water_explosion_hfx)
					hsr.depth = depth - 3;
				}
				grabbed_player_obj.x = x + 1 * spr_dir;
				grabbed_player_obj.y = y;
				
			}
		}
	}
	
	if(window == 8){
		can_move = false;
		custom_forward_air_drift(0.2)
		if(window_timer > 34) can_wall_jump = true
	}
}

if(attack == AT_USPECIAL_GROUND){
	can_fast_fall = false;
	if(window == 1){
		if(window_timer > 5) user_event(2);
		if(window_timer < 3) magnet_timer = 0;
		
	}
	if(window == 2){
		if(window_timer == 1 and magnet_timer == 0){
			// create_hitbox(attack, 1, x, y)
			sound_play(asset_get("sfx_dash_start"))
		}
		user_event(2);
	}
	if(window == 3){
		
		user_event(2);
		magnet_timer++;
		if(magnet_timer > 45){
			set_window_value(attack, window, AG_WINDOW_TYPE, 0);
		}else{
			
			if(magnet_timer % 4 == 1){
				sound_play(asset_get("sfx_absa_orb_miss"));
				if(opponent_in_static){
					sound_play(asset_get("sfx_absa_dattack"), false, noone, 0.45, 1.65);
				}
			}
			set_window_value(attack, window, AG_WINDOW_TYPE, special_down*9);
			
			
			// if(window_timer == 1) create_hitbox(attack, 1, 55, -115)
			// user_event(2);
			
			if(switch_to_uthrow){
				permanent_static = false;
				switch_to_uthrow = false;
				hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
				set_attack(AT_UTHROW);
			}else{
				if(!special_down){
					window++;
					window_timer = 0;
					destroy_hitboxes();
				}
			}
		}
		
	}
	if(window == 5){
		if(switch_to_uthrow){
			permanent_static = false;
			switch_to_uthrow = false;
			hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
			set_attack(AT_UTHROW);
		}
		if(magnet_timer >= 1){
			user_event(3);
		}
		if(window_timer > 5){
			move_cooldown[attack] = 5
		}
	}
}

if(attack == AT_USPECIAL_2){
	if(window == 1 and window_timer == 1) static = 0; 
	if(window == 2){
		can_move = false;
		can_fast_fall = false;
		if(has_hit_player){
			window = 3;
			window_timer = 0;
		}
	}
	
	if(window == 3){
		can_move = false;
		can_fast_fall = false;
	}
}



if (attack == AT_UTHROW or attack == AT_USPECIAL_GROUND){
	//can_fast_fall = false;
	if(attack == AT_UTHROW ){
		if(window >= 1 and window < 4){
			soft_armor = 25
		}else{
			soft_armor = 0
		}
	}
	if(instance_exists(grabbed_player_obj)) {
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			
			
			 
			//on the first window, pull the opponent into the grab.
			if (window == 1) { 
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				grabbed_player_obj.fall_through = true;
				
				var pull_to_x = 0;
				var pull_to_y = 0;
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				if(window_timer < 7){
					pull_to_x = 60 * spr_dir;
					pull_to_y = -95;
					// print("1")
					// window_length = 7;
				}else if(window_timer < 12){
					pull_to_x = 40 * spr_dir;
					pull_to_y = -55;
					// print("2")
					// window_length = 12;
				}else	if(window_timer < 18){
					pull_to_x = 30 * spr_dir;
					pull_to_y = -25;
					// print("3")
					// window_length = 18;
				}else if(window_timer < 24){
					pull_to_x = 60 * spr_dir;
					pull_to_y = -25;
					// print("4")
					// window_length = 24;
				}else if(window_timer < 30){
					pull_to_x = 10 * spr_dir;
					pull_to_y = -65;
					// print("5")
					// window_length = 30;
				}else{
					pull_to_x = -20 * spr_dir;
					pull_to_y = -0;
					// print("6")
					window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				}
				
				grabbed_player_obj.x =  floor(lerp( grabbed_player_obj.x, x + pull_to_x, 0.4));
				grabbed_player_obj.y = floor(lerp( grabbed_player_obj.y, y + pull_to_y, 0.4));
			}
			if(window == 2){
				relative_dest_x = 50;
				relative_dest_y = -125;
				if(window_timer <= 2){ 
					var t = 19;
					var s = x + relative_dest_x * spr_dir;
					var so = grabbed_player_obj.x;
					grabbed_player_obj.hsp = (s - so)/t;
					
					var s = y + relative_dest_y;
					var so = grabbed_player_obj.y;
					var v_final = 0;
					grabbed_player_obj.vsp = sqrt( abs( (v_final*v_final) + (2 * grabbed_player_obj.hitstun_grav * abs(s - so)) )) * sign(s - so) ;
				}
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}

if (attack == AT_FSPECIAL && instance_exists(grabbed_player_obj)) {
	//can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) - 2) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 3 or window == 4) {
			
			grabbed_player_obj.fall_through = true;
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 60 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + floor(ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length));
			grabbed_player_obj.y = y + floor(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
		}
		if (window == 5) { 
			grabbed_player_obj.fall_through = true;
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = ( 30 + (window_timer < 6)*20 )* spr_dir;
			var pull_to_y = -1*((window_timer > 5)*30 + 30);
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + floor(ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length));
			grabbed_player_obj.y = y + floor(ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length));
		}
		
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

if (attack == AT_USPECIAL && instance_exists(grabbed_player_obj)) {
	//can_fast_fall = false;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS) + 3) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 2 or window == 3) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var angle = fly_dir;
    		// spr_angle = fly_dir - 90;
    		var offset = char_height/2 + 10;
			var pull_to_x = ceil(lengthdir_x(offset, angle));
			var pull_to_y = ceil(-1*(char_height/2) + lengthdir_y(offset, angle));

			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = floor(lerp(grabbed_player_obj.x, x + pull_to_x, 0.5));
			grabbed_player_obj.y = floor(lerp(grabbed_player_obj.y, y + pull_to_y, 0.5));
		}
		
		if(window == 5){
			grabbed_player_obj.x = x;
			grabbed_player_obj.y = y;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

#define custom_forward_air_drift(modifier)
modifier = 1 - modifier

var forward_extra = 1 - (x - starting_x < 0)*0.5

var dir_val = (-left_down*air_accel*1) + (right_down*air_accel*1);
dir_val = clamp(dir_val+hsp, -air_max_speed, air_max_speed) - hsp
hsp += dir_val - (dir_val*spr_dir > 0)*modifier*dir_val*forward_extra

#define effects_nthrow()
var geyser_length = 20;
if(instance_exists(geyser_dfx)){
	// print(geyser_dfx.step_timer)
	
	// indicador_x = x ;
		
	// 	//indicador_y = y + v*t + 0.5*grav*grav_mult*t*t;
	// geyser_dfx.x = lerp(geyser_dfx.x, indicador_x, 0.1) ;
	
	if(geyser_dfx.step_timer >= 10){
		
	}
	if(geyser_dfx.step_timer >= (geyser_length - 1)){
		// print("Tried to spawn")
		var t = 20;
		var v = -2.8;
		var grav_mult = get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
		indicador_x = x + hsp*t;
		
		indicador_y = y + v*t + 0.5*grav*grav_mult*t*t;
		
		hoop_dfx = spawn_hit_fx(indicador_x, indicador_y, nspecial_water_hoop_hfx);
		hoop_dfx.spr_dir = ((hsp*spr_dir >= 2)*2 + -1)*spr_dir;
		hoop_dfx.depth = depth -1;
	}
	
}
if(instance_exists(hoop_dfx)){ // Correct hoop position
	// print(hoop_dfx.step_timer)
	var t = 4;
	var v = -2.8;
	var grav_mult = get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
	indicador_x = x + hsp*t;
	
	//indicador_y = y + v*t + 0.5*grav*grav_mult*t*t;
	hoop_dfx.x = lerp(hoop_dfx.x, indicador_x, 0.07) ;
}

#define drive_grabbed()

	var window_length = get_window_value(attack, 2, AG_WINDOW_LENGTH);
	var window2_length = get_window_value(attack, 3, AG_WINDOW_LENGTH);
	
	var starting_offset = 0
	
	if(relative_dest_x != 0){
		var sub_r_x = relative_dest_x + starting_offset
		var d = 1.5*sub_r_x;
		var t = count*d/(window_length+window2_length)
		// x2 = ease_linear(0, 30, count, window_length+window2_length);
		
		var x_squared = (t - sub_r_x)*(t - sub_r_x);
		var relative_dest_x_squared = (sub_r_x*sub_r_x);
		
		
		var new_y = -1*(x_squared)*(relative_dest_y / relative_dest_x_squared) + relative_dest_y;
	
	}else{
		var sub_r_x = 1
		var d = 1.5*sub_r_x;
		var t = count*d/(window_length+window2_length)
		// x2 = ease_linear(0, 30, count, window_length+window2_length);
		
		var x_squared = (t - sub_r_x)*(t - sub_r_x);
		var relative_dest_x_squared = (sub_r_x*sub_r_x);

		var new_y = -1*(x_squared)*(relative_dest_y / relative_dest_x_squared) + relative_dest_y;
	}
	
	if(!hitpause) count++;
	grabbed_player_obj.y = floor(starting_y + new_y);
	grabbed_player_obj.x = floor(starting_x + (relative_dest_x == 0 ? 0 : t));
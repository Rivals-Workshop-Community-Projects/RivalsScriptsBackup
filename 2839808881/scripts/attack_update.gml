//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack == AT_COPY_FIRE
|| attack == AT_COPY_BEAM
|| attack == AT_COPY_RANGER
|| attack == AT_COPY_FIGHTER
|| attack == AT_COPY_SWORD
|| attack == AT_COPY_WATER
|| attack == AT_COPY_LEAF
|| attack == AT_COPY_ICE
|| attack == AT_COPY_TORNADO
|| attack == AT_COPY_BOMB
|| attack == AT_COPY_MIKE
|| attack == AT_COPY_ABYSS
|| attack == AT_COPY_ESP
|| attack == AT_COPY_DRILL
|| attack == AT_COPY_SPARK){
	trigger_b_reverse();
}

//from animation.gml (i dont feel like integrating it into the case statement)
if attack == AT_USTRONG && window > 1 && !(window == 2 && window_timer > get_window_value(attack, 2, AG_WINDOW_LENGTH)) && window < 4{
	hud_offset = lerp(hud_offset, 180, 0.5);
}
if attack == AT_UAIR && window > 1 && window != 3{
	hud_offset = lerp(hud_offset, 90, 0.5);
}


// per-attack logic

switch(attack){
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		/*
		switch(window){
			case 1:
				times_through = 0;
			break;
			case 4:
			break;
			case 8:
				if(window_time_is_div(5)){
				    create_hitbox(AT_JAB,3,x+24*spr_dir,y-25);
				}
				if(window_time_is_div(3)){
				    sound_play(asset_get("sfx_swipe_weak2"));
				    hsp+= 1*spr_dir;
				}			
				if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				    times_through+=1;
				}
				if(times_through >= 3){
					window = 9;
					window_timer = 0;
				}
				if(window_timer == 8){
					spawn_base_dust( x, y, "dash", spr_dir);
				}
			break;
			case 9:
				if(window_timer == 1){
					spawn_base_dust( x, y, "dash_start", spr_dir);
					hsp+=4*spr_dir;
				}
			break;
		}
		*/
		if (window == 1||window == 4){
			if (window_timer < 3){
				clear_button_buffer(PC_ATTACK_PRESSED);
				times_through = 0;
			}
		}
		
		if (window == 8 && !hitpause){
			if (window_timer == 3 || window_timer == 6 || window_timer == 9 || window_timer == 12){
				sound_play(asset_get("sfx_swipe_weak1"));
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (times_through == 0 || attack_down){
					window_timer = 0;
					times_through++;
				}
			}
			if (!attack_down){
				window = 9;
				window_timer = 0;
				destroy_hitboxes();
			}
		}
		
		if (window == 9){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x + (8 * spr_dir), y, "dash_start", spr_dir);
			}
		}
	case AT_FTILT:
		//there is nothing here
		//go home
		break;
	case AT_DTILT:
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x, y, "dash_start", spr_dir);
			sound_play(sound_get("sfx_kfl_slide"));
			spawn_hit_fx(x,y,fx_dust_cloud);
		}
		if (window > 1 && has_hit && !hitpause && slideRune){
			can_attack = true;
			can_jump = true;
			can_strong = true;
		}
		break;
	case AT_UTILT:
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x, y, "dash", spr_dir);
		}
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 7)){
			hud_offset = 48;
		}
		break;
	case AT_NAIR:
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window > 1){
			hud_offset = 26;
		}
		if (window == 1){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				sound_play(sound_get("sfx_smash_64_kirby_uair"), false, noone, 1, 1);
			}
		}
		break;
	case AT_UAIR:
		if (window == 1){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
				sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.8, 1.1);
			}
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == 1{
			spawn_base_dust( x, y, "dash", spr_dir);
		}
		
		if (window == 1){
			set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 0);
		}
		
		if (window == 1 && window_timer == 14){
			sound_play(sound_get("sfx_krdl_hammer_flip_startup"));
		}
		
		if (window == 1 && image_index == 4){
			var strongChargeTimer = (strong_charge/15);
			var strongChargeTimerMatch = (floor(strong_charge/15))+.4;
			//print("str charge: " + string(strongChargeTimer));
			//print("str charge match: " + string(strongChargeTimerMatch));
			if (strongChargeTimer > 0){
				if (strongChargeTimer == strongChargeTimerMatch){
					//print("matched!")
					spawn_hit_fx(x-(28*spr_dir), y - 58, 3);
					sound_play(asset_get("sfx_zetter_fireball_fire"));
				}
			}
		}
		
		if (window == 2){
			if (window_timer == 1){
				if (strong_charge < 55){
					sound_stop(sound_get("sfx_krdl_hammer_flip_startup"));
				}
				sound_play(sound_get("sfx_krdl_hammer_flip_swipe"));
				if (strong_charge == 60 && fstrongRune){
					//print("HammerFlipFullyCharged");
					//this oughta make em instantly die
					set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 100);
					set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
				}
			}
			if (window_timer == 3){
				spawn_base_dust( x+(32*spr_dir), y, "dash_start", -spr_dir);
			}
		}
		
		if (image_index > 5 && image_index < 13){
			if (attack == AT_FSTRONG){//additional check
				hud_offset = 62;
			}
		}
		
		break;
	case AT_USTRONG:
		if (window == 2){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x-(-14*spr_dir), y, "dash_start", spr_dir);
				spawn_base_dust( x+(-14*spr_dir), y, "dash_start", -spr_dir);
				sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.85, 1.3);
				sound_play(sound_get("sfx_canvas_curse_needle"));
			}
		}
		break;
	case AT_DSTRONG:
		if (window == 2){
			if (window_timer == 2){
				spawn_base_dust( x-54, y, "dash_start", 1);
				spawn_base_dust( x+54, y, "dash_start", -1);
				sound_play(asset_get("sfx_charge_blade_swing"));
			}
		}
		break;
	case AT_NSPECIAL:
		if(window != 2){
			sound_stop(sound_get("inhale"));
			sound_stop(sound_get("inhale_loop"));
		}
		switch(window){
			case 1:
				inhale_sound_timer = 0;
				kirby_nspec_swallowed_yet = false;
			break;
			
			case 2:
				//Sound
				if(special_down){
					inhale_sound_timer++;
				}
				if(inhale_sound_timer <= 125){
					if(inhale_sound_timer == 1){
						inhale_sound = sound_play(sound_get("inhale"));
					}
				}
				if(inhale_sound_timer > 125){
					if(inhale_sound_timer % 9.5 == 0){
						sound_stop(inhale_sound);
						inhale_sound = sound_play(sound_get("inhale_loop"));
					}
				}
				
				//Projectile sucking 
				var proj_hit = select_projectile(x + (15 * spr_dir), y-25, 45, 45);
				
				if (instance_exists(proj_hit)) {
					grabbedtarget = noone;
					var proj_tier = get_projectile_tier(proj_hit);
					
					if (proj_tier == 0) {
						window = 8;
						window_timer = 0;
						destroy_hitboxes();
						sound_stop(inhale_sound);
					}
					else {
				        consumed_proj = true;
				        proj_damage = proj_hit.damage;
						grab_timer = 180;
				        nspec_grabbed = true;
			            window = 4;
			            window_timer = 1;
						destroy_hitboxes();
						sound_stop(inhale_sound);
					}
					instance_destroy(proj_hit);
				}
				
				
				//Holding the button down
				if (!special_down && state_timer > 15){
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
					sound_stop(inhale_sound);
				}
			break;
			case 5:
				clear_button_buffer(PC_ATTACK_PRESSED);
				move_cooldown[AT_NSPECIAL] = 25;
			break;
			case 9:
				if (window_timer == 4 && !hitpause) {
					nspec_grabbed = false;
					sound_play(sound_get("nspecial_spit"));
					var hbox = create_hitbox(AT_NSPECIAL, 5, round(x + 15 * spr_dir), round(y - 25));
					//hbox.damage = min(1, ceil(proj_damage * 4));
					if(enemyProjStarRune){
						hbox.damage = floor(proj_damage*3);
					} else if(!enemyProjStarRune){
						hbox.damage = floor(proj_damage*0.8);
					}
					
				}
			break;
		}
		break;

	case AT_FSPECIAL:
	//print(window);
		can_jump = false;
		can_move = false;
		can_fast_fall = false;
		if was_parried {
			attack_end();
			set_state(PS_PRATFALL)
		}
	
		if (window != 1 && window != 7 &&
			( ( place_meeting(x + 5, y, asset_get("par_block")) 
             || place_meeting(x - 5, y, asset_get("par_block"))) 
              || has_hit)) {
             	window = 7;
             	window_timer = 0;
				sound_play(sound_get("hurt"));
				destroy_hitboxes()
             }

		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		   var hbox = create_hitbox( AT_FSPECIAL, 1, x, y);
		}
		
		if ((window > 1 && window < 5) && !hitpause && !free){
			if (state_timer%5 == 0){
				spawn_hit_fx(x,y,wheelspark);
			}
		}
		
		//Trail Stuff
    if ((window > 1 && window < 6) && !hitpause){
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
    }

		switch(window){
			case 1:
			if window_timer < 9 {
				hsp *= 0.5;
				vsp *= 0.5;
			} else {
				hsp = spr_dir * 5;
			}	
			
				break;
			case 2:
			
			//print(zoom);
			
				if zoom < 9 {
				 zoom += 1;
				}
				hsp = spr_dir * zoom;
			
			
				
				if !free && ((spr_dir = 1 && (left_pressed || left_down)) || (spr_dir = -1 && (right_pressed || right_down))) {
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
				}
				
				if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && !free && window == 2  {
					window = 4;
					window_timer = 0;
				} 
				
				if window == 2 && free && (jump_pressed || (tap_jump_pressed && can_tap_jump())) && djumps != 3 {
					//print("mario");
					//zoom = 2;
					window = 8;
					window_timer = 0;
					vsp = -7;
					hsp = clamp(hsp, -5, 5);
					move_cooldown[AT_FSPECIAL] = 999999999;
					destroy_hitboxes();
				}
					
				if special_pressed || shield_pressed {
					window = 6;
					window_timer = 0;
				}
			
				break;
			case 3:
			hsp -= .7*spr_dir
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spr_dir = spr_dir * -1;
				window = 2;
				window_timer = 0;
				zoom = 4;
				var hbox = create_hitbox( AT_FSPECIAL, 1, x, y);
			}
				break;
			case 4:
				clear_button_buffer(PC_JUMP_PRESSED);
				if (window_timer == 3){
					sound_play(jump_sound);
					spawn_base_dust( x+(2*spr_dir), y, "dash_start", spr_dir);
				}
				
				hsp = spr_dir * zoom * 0.9;
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				window = 5;
				window_timer = 0;
				vsp = -8.5;
				hsp = spr_dir * zoom * 0.9;
			}
				break;
			case 5:
				if zoom < 9 {
				 zoom += 1;
				}
				hsp = spr_dir * zoom;
			if !free {
				window = 2;
				window_timer = 0;
			}
			if free && (jump_pressed || (tap_jump_pressed && can_tap_jump())) && djumps != 3 {
				//can_jump = true;
				//zoom = 2;
				window = 8;
				window_timer = 0;
				vsp = -7;
				hsp = clamp(hsp, -5, 5);
				move_cooldown[AT_FSPECIAL] = 999999999;
				destroy_hitboxes();
			}
			if (special_pressed || shield_pressed) {
				window = 6;
				window_timer = 0;
				move_cooldown[AT_FSPECIAL] = 60;
				destroy_hitboxes();
			}
			
				break;
			case 6:
				zoom = 2;
				move_cooldown[AT_FSPECIAL] = 60;
				destroy_hitboxes();
				break;
			case 7:
			if window_timer == 1 {
				vsp = -6;
				hsp = -3 * spr_dir; 
				}
		}
		break;
	
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		
			
		if (window == 1){
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
			jet_used_again = false;
			//condensing movement during charge
			hsp = clamp(hsp, -3.5, 3.5);
			vsp = clamp(vsp, -3.5, 3.5);
		
			jet_touching_wall = false;
			jet_flight_dir = 0;
			sprite_change_offset("uspecial", 88, 84);
			if (jet_charge_stored == true){
				jet_charge_count = jet_charge_store_count;
			} else {
				jet_charge_count = 0;
			}
		}
		
		if (window == 2){
			can_move = true;
		} else {
			can_move = false;
		}
		
		if (window == 2){
		
			//condensing movement during charge
			hsp = clamp(hsp, -3, 3);
			vsp = clamp(vsp, -2.4, 2.4);
			
			//direction inputs
			if (!joy_pad_idle){
				if(up_down && !left_down && !right_down && !down_down){
					jet_flight_dir = 1;
					//straight up.
				} else if(up_down && !left_down && right_down && !down_down){
					jet_flight_dir = 2;
					//up and to the right.
				} else if(!up_down && !left_down && right_down && !down_down){
					jet_flight_dir = 3;
					//straight right.
				} else if(!up_down && !left_down && right_down && down_down){
					jet_flight_dir = 4;
					//down and right.
				} else if(!up_down && !left_down && !right_down && down_down){
					jet_flight_dir = 5;
					//straight down.
				} else if(!up_down && left_down && !right_down && down_down){
					jet_flight_dir = 6;
					//left and down.
				} else if(!up_down && left_down && !right_down && !down_down){
					jet_flight_dir = 7;
					//straight left.
				} else if(up_down && left_down && !right_down && !down_down){
					jet_flight_dir = 8;
					//left and up.
				}
				
				//if any of the "down" directions are inputted on the ground (NOT a platform, kirby will instead input a forward direction.
				if (!free){
					if(place_meeting(x, y+6, asset_get("par_block"))){
						if (jet_flight_dir == 4
						|| jet_flight_dir == 5
						|| jet_flight_dir == 6){
							if (jet_flight_dir == 4){
								jet_flight_dir = 3;
							} else if (jet_flight_dir == 5){
								if (spr_dir == 1){
									jet_flight_dir = 3;
								} else {
									jet_flight_dir = 7;
								}
							} else if (jet_flight_dir == 6){
								jet_flight_dir = 7;
							}
						}
					}
				}
			} else {
				jet_flight_dir = 0;
			}
			if (!special_down){
				//transition into flight window if special is not held
				window = 3;
				window_timer = 0;
				sound_play(sound_get("sfx_kssu_jet_boost"));
				sprite_change_offset("uspecial", 90, 62);
				if(!free){
					y -= 30;
				} else if(free){
					y -= 20;
				}
				jet_charge_stored = false;
				var chargeVFX = spawn_hit_fx(x, y, uspec_charge);
				chargeVFX.depth = depth + 1;
			} else if (special_down){
				//loop window if special is held
				jet_charge_stored = false;
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					//print("increasing charge!");
					window_timer = 0;
					if (jet_charge_count != 4){
						jet_charge_count++;
						if (jet_charge_count == 1){
							sound_play(sound_get("sfx_kssu_jet_chargeup"));
							var chargeVFX = spawn_hit_fx(x-(16*spr_dir), y - 20, uspec_charge);
							chargeVFX.depth = depth + 1;
						} else if (jet_charge_count == 2){
							sound_play(sound_get("sfx_kssu_jet_med_charge"));
							var chargeVFX = spawn_hit_fx(x-(16*spr_dir), y - 20, uspec_charge);
							chargeVFX.depth = depth + 1;
						} else if (jet_charge_count == 4){
							sound_play(sound_get("sfx_kssu_jet_full_charge"));
							var chargeVFX = spawn_hit_fx(x-(16*spr_dir), y - 20, uspec_charge);
							chargeVFX.depth = depth + 1;
						}
					}
				}
				if (shield_pressed){
					jet_charge_stored = true;
					window = 6;
					window_timer = 0;
					jet_charge_store_count = jet_charge_count;
				}
			}
		}
		
		//flying
		if (window == 3){
			//0: no dir: just forward.
			//1: up
			//2: up + right
			//3: right
			//4: down + right
			//5: down
			//6: down + left
			//7: left
			//8: up + left
			
			var jet_movement_base = 18;
			var jet_movement_base_diag = 13.5;
			var jet_movement_add = jet_charge_count*2;
			
			if(!hitpause){
				if (jet_flight_dir == 0){
					//spr_angle = 0;
					hsp = (jet_movement_base + (jet_movement_add))*spr_dir;
					vsp = 0;
				} else if (jet_flight_dir == 1){
					//spr_angle = 90*spr_dir;
					hsp = 0;
					vsp = -(jet_movement_base + (jet_movement_add));
				} else if (jet_flight_dir == 2){
					//spr_angle = 45*spr_dir;
					spr_dir = 1;
					hsp = (jet_movement_base_diag + (jet_movement_add))*spr_dir;
					vsp = -(jet_movement_base_diag + (jet_movement_add));
				} else if (jet_flight_dir == 3){
					//spr_angle = 0*spr_dir;
					spr_dir = 1;
					hsp = (jet_movement_base + (jet_movement_add));
					vsp = 0;
				} else if (jet_flight_dir == 4){
					//spr_angle = -45*spr_dir;
					spr_dir = 1;
					hsp = (jet_movement_base_diag + (jet_movement_add))*spr_dir;
					vsp = (jet_movement_base_diag + (jet_movement_add));
				} else if (jet_flight_dir == 5){
					//spr_angle = -90*spr_dir;
					hsp = 0;
					vsp = (jet_movement_base + (jet_movement_add));
				} else if (jet_flight_dir == 6){
					//spr_angle = 45;
					spr_dir = -1;
					hsp = (jet_movement_base_diag + (jet_movement_add))*spr_dir;
					vsp = (jet_movement_base_diag + (jet_movement_add));
				} else if (jet_flight_dir == 7){
					//spr_angle = 0
					spr_dir = -1;
					hsp = -(jet_movement_base + (jet_movement_add));
					vsp = 0;
				} else if (jet_flight_dir == 8){
					//spr_angle = -45;
					spr_dir = -1;
					hsp = (jet_movement_base_diag + (jet_movement_add))*spr_dir;
					vsp = -(jet_movement_base_diag + (jet_movement_add));
				}
				
				//wall interaction
				if(place_meeting(x+(18*spr_dir), y+16, asset_get("par_block"))){
					if (!hitpause){
						//y -= 10;
					}
				}
				
				if (window_timer == 1 || window_timer == 3 || window_timer == 5){
					var chargeVFX = spawn_hit_fx(x-(4*spr_dir), y, uspec_charge);
					chargeVFX.depth = depth + 1;
				}
			}
		}
		
		if (window == 3 || window == 4){
			//ground interaction
			if(jet_flight_dir > 3 && jet_flight_dir < 7){
				if(place_meeting(x+(0*spr_dir), y+28, asset_get("par_block"))){
					if (!hitpause){
						hsp *= 0.35;
						y += 28;
						set_state(PS_PRATLAND);
						//sound_play(landing_lag_sound);
						spr_angle = 0;
						sprite_change_offset("uspecial", 88, 84);
					}
				}
			}
			/*
			if (window == 4){
				if (jet_flight_dir == 2 || jet_flight_dir == 8){
					if(place_meeting(x+(4*spr_dir), y+10, asset_get("par_block"))){
						//
						//y -= 4;
						x += 6*spr_dir;
						if (place_meeting(x-(4*spr_dir), y+6, asset_get("par_block"))){
							//
							x += 10*spr_dir;
							y -= 20;
							//set_state(PS_PRATFALL);
							window = 5;
							window_timer = 0;
							spr_angle = 0;
							sprite_change_offset("uspecial", 88, 84);
							hsp = 6*spr_dir;
							vsp = -6;
						}
						if (collision_line(x + (4 * spr_dir), y - 0, x + (8 * spr_dir), y + 8, asset_get("par_block"), 0, 1)){
							//
							//x += 10*spr_dir;
							//y -= 20;
							
						}
					} else {
						//
					}
				}
			}
			*/
		}
		if (window == 4){
			hsp *= 0.9;
			vsp *= 0.9;
			can_move = true;
		}
		if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spr_angle = 0;
			sprite_change_offset("uspecial", 88, 84);
			y += 20;
		}
		if(window == 3){
			if(!free){
				if(jet_flight_dir == 4 || jet_flight_dir == 5 || jet_flight_dir == 6){
					//
				}
			}
		}
		if (window == 4 || window == 5){
			if (!free){
				set_state(PS_PRATLAND);
				hsp *= 0.35;
				//sound_play(landing_lag_sound);
				spr_angle = 0;
				sprite_change_offset("uspecial", 88, 84);
			}
			if (special_pressed && !jet_used_again){
				if (jetRune){
					jet_used_again = true;
					window = 2;
					window_timer = 0;
					spr_angle = 0;
					sprite_change_offset("uspecial", 88, 84);
					attack_end();
				}
			}
		}
		break;
	
	
	
	case AT_DSPECIAL_AIR: {
	
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2){
			soft_armor = stone_soft_armor_amt;
		}
	
		if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3 || window == 4){
			switch (stonevar) {
				case 2:
				hud_offset = 18;
				break;
				case 3:
				hud_offset = 24;
				break;
				case 4:
				hud_offset = 82;
				break;
				case 5:
				hud_offset = 16;
				break;
				case 6:
				hud_offset = 20;
				break;
				case 7:
				hud_offset = 22;
				break;
				case 8:
				hud_offset = 22;
				break;
				case 9:
				hud_offset = 70;
				break;
				case 11:
				hud_offset = 52;
				break;
				case 12:
				hud_offset = 56;
				break;
				case 14:
				hud_offset = 20;
				break;
				case 16:
				hud_offset = 52;
				break;
				case 17:
				hud_offset = 68;
				break;
				case 19:
				hud_offset = 20;
				break;
			}
		}
		if (window == 1) {
			if (window_timer == 1){
				sound_play(sound_get("sfx_krdl_stone_form"));
			}
			if (window_timer == 13){
				sound_play(asset_get("sfx_charge_blade_swing"));
				
				//WALTER WHITE?!??!?!?!?!?!?!?!?!?!?!!?!?!?!?!?!
				if (stonevar == 9){
					sound_play(sound_get("walterwhite"));
				}
				
				//Dream Hatcher
				if (stonevar == 15){
					sound_play(sound_get("sfx_halken"));
				}
				
				//Mario.
				if (stonevar == 16){
					sound_play(sound_get("sfx_mario_coin"));
				}
				
				//Master Sword
				if (stonevar == 17){
					sound_play(sound_get("sfx_botw_rupee"));
				}
				
				set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
			}
		}
		if window == 2 && special_down && state_timer < 160{
			set_window_value( AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9 )
		} else {
			set_window_value( AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0 )
			if (window == 2){
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					spawn_hit_fx(x,y-10,193);
					
					sound_play(sound_get("sfx_krdl_stone_exit"));
				}
			}
		}
		if window == 2 {
			if (!hitpause){
				vsp = 15
			}
			if !free {
				window = 4
				window_timer = 0
				destroy_hitboxes();
				set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
				//sound_play(asset_get("sfx_zetter_downb"))
				sound_play(sound_get("sfx_krdl_stone_land"));
				if (stonevar == 2){
					if (!has_hit){
						sound_play(sound_get("sfx_vineboom"));
					}
				}
				if (stonevar == 13){
					if (!has_hit){
						sound_play(asset_get("sfx_shovel_hit_heavy2"));
					}
				}
				if (stonevar == 14){
					if (!has_hit){
						sound_play(sound_get("sfx_smb1_block_bump"));
					}
				}
				shake_camera(5, 4)
				spawn_base_dust( x-(10*spr_dir), y, "dash_start", -1);
				spawn_base_dust( x+(10*spr_dir), y, "dash_start", 1);
				spawn_base_dust( x, y, "land", spr_dir);
			}
		}
		if (window == 4){
			if (stonevar == 9){
				var additionalStoneTime = 960;
			} else {
				var additionalStoneTime = 0;
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
				if (special_down && stonelandhold < (120+additionalStoneTime)){
					window_timer--;
					stonelandhold++;
				}
				
				if (stonelandhold != 0){
					soft_armor = 0;
				} else if (stonelandhold == 0){
					soft_armor = stone_soft_armor_amt;
				}
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_hit_fx(x,y-10,193);
				
				sound_play(sound_get("sfx_krdl_stone_exit"));
				if(stonevar == 9){
					sound_stop(sound_get("walterwhite"));
				}
			}
		} else {
			stonelandhold = 0;
		}
		can_fast_fall = false;
		can_move = false;
		break;
	}
	case AT_DSPECIAL: {
		if (window == 1) {
			if window_timer == 4 {
				//sound_play(sound_get("sfx_hammerswing_m"))
				sound_play(sound_get("sfx_krdl_stone_form"));
			}
			if window_timer == 30 {
				sound_play(sound_get("sfx_krdl_hammer_flip_swipe"), false, noone, 0.6, .9);
				sound_play(asset_get("sfx_charge_blade_swing"));
			}
			
			if (image_index < 6){//>
				soft_armor = 5;
				super_armor = false;
			} else {
				soft_armor = 0;
				super_armor = true;
			}
		} else {
			if (window == 2){
				soft_armor = 0;
				super_armor = true;
			} else {
				soft_armor = 0;
				super_armor = false;
			}
		}
		
		if window == 3 && window_timer == 2 {
			sound_play(sound_get("sfx_krdl_stone_exit"));
		}
	}
	case AT_TAUNT: {
	
		//ability select stuff (ignore the spill)
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){//>
			if (get_match_setting(SET_PRACTICE)){
				if (up_down && taunt_down){
					window = 5;
					window_timer = 0;
					set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
					tauntAbilitySelectMenuCurr = TCG_Kirby_Copy;
					tauntAbilitySelectMenuCD = 0;
				}
			}
		}
	
		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (taunt_down && TCG_Kirby_Copy != 0){
				TCG_Kirby_Copy = 0;
				sound_play(sound_get("sfx_krdl_ability_drop"));
				spawn_hit_fx(x, y - 14, ability_get_fx_fast);
			}
		}
		if (window > 3 && window < 6){
			soft_armor = 999;
		} else {
			soft_armor = 0;
		}
		
		if(window == 6){
			set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_STRONG_PRESSED);
		}
		
		if (window == 5){
		
			if (tauntAbilitySelectMenuCurr < 0){
				tauntAbilitySelectMenuCurr = 15
			}
			if (tauntAbilitySelectMenuCurr > 15){
				tauntAbilitySelectMenuCurr = 0
			}
		
			if(tauntAbilitySelectMenuCD != 0){
				tauntAbilitySelectMenuCD--;
			}
		
			if ((left_pressed || left_down) && tauntAbilitySelectMenuCD == 0){
				if(tauntAbilitySelectMenuCurr != 0){
					tauntAbilitySelectMenuCurr--;
				} else if (tauntAbilitySelectMenuCurr == 0){
					tauntAbilitySelectMenuCurr = 15;
				}
				tauntAbilitySelectMenuCD = 8;
				sound_play(sound_get("sfx_kssu_menu_move"));
			}
			if ((right_pressed || right_down) && tauntAbilitySelectMenuCD == 0){
				if(tauntAbilitySelectMenuCurr != 15){
					tauntAbilitySelectMenuCurr++;
				} else if (tauntAbilitySelectMenuCurr == 15){
					tauntAbilitySelectMenuCurr = 0;
				}
				tauntAbilitySelectMenuCD = 8;
				sound_play(sound_get("sfx_kssu_menu_move"));
			}
		
			//backing out of menu
			if (special_pressed || shield_pressed || attack_pressed){
				window++;
				window_timer = 0;
				if(shield_pressed || special_pressed){
					sound_play(asset_get("mfx_back"));
				}
				if(attack_pressed){
					TCG_Kirby_Copy = tauntAbilitySelectMenuCurr;
					if(TCG_Kirby_Copy != 0){
						sound_play(sound_get("nspecial_down_ability"))
					} else {
						sound_play(sound_get("sfx_krdl_ability_drop"))
					}
					spawn_hit_fx(x, y - 14, ability_get_fx);
				}
			}
		}
	}
}

//Fire
if (attack == AT_COPY_FIRE){
		can_fast_fall = false;
		move_cooldown[AT_COPY_FIRE] = 99999;
		if (window = 1){
			if (window_timer == 1){
				was_grounded_fire = false;
			}
			if (!free && window_timer == 2){
				was_grounded_fire = true;
			}
			if (window_timer == 17){
				vsp = -1;
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				sound_play(asset_get("sfx_burnapplied"), false, noone, 0.7, 1.2);
				spawn_base_dust( x+(4*spr_dir), y, "dash_start", spr_dir);
			}
			if (hsp > 3){
				hsp = 3;
			}
			if (hsp < -3){
				hsp = -3;
			}
		}
		if (window == 2){
			if (hsp = 0 && !has_hit){
				window = 4;
				window_timer = 0;
				sound_play(sound_get("sfx_stomp"));
				spawn_base_dust( x+(20*spr_dir), y, "walljump", spr_dir);
			}
		}
		if (window == 3){
			destroy_hitboxes();
			if (window_timer == 7){
				sound_play(asset_get("sfx_burnend"), false, noone, 0.7, 1.2);
			}
		}
		if (window == 3 && window_timer == 19){
			if (!has_hit && was_grounded_fire == false){
				state = PS_PRATFALL;
			}
		}
		if (window == 4){
			if (window_timer < 5){
				hsp = 0;
				vsp = 0;
			}
			if (window_timer == 6){
				vsp = -6;
				hsp = -3 * spr_dir;
			}
		}
	}

//Beam
if (attack == AT_COPY_BEAM){
	if (window == 1){
		beam_charged = false;
		set_attack_value(AT_COPY_BEAM, AG_NUM_WINDOWS, 10);
		if (special_down){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				sound_play(sound_get("sfx_charge"), false, noone, 1, 1);
				window = 6;
				window_timer = 0;
			}
		}
		else {
			window = 2;
			window_timer = 0;
		}
	}
	//change this code to only play the max charge sfx once when you reach max charge and loop the window
	if (window == 7){
		if (beam_charged && !special_down){
			window = 8;
			window_timer = 0;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!beam_charged){
				sound_play(sound_get("sfx_charge_max"), false, noone, 1, 1);
				sound_stop(sound_get("sfx_charge"));
				spawn_hit_fx(x-(28*spr_dir), y - 46, beam_hitfx);
			}
			beam_charged = true;
			if (special_down){
				window_timer = 1;
			}
		}
	}
	if (window == 8){
		sound_stop(sound_get("sfx_charge"));
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !free){
			spawn_base_dust( x-(14*spr_dir), y, "dash_start", spr_dir);
		}
	}
	if (window == 5){
		move_cooldown[AT_COPY_BEAM] = 30;
		set_attack_value(AT_COPY_BEAM, AG_NUM_WINDOWS, 5);
	}
	if (window == 6 || window == 7){
		if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed)){
			spr_dir *= -1;
		}
		if (!special_down){
			window = 2;
			window_timer = 0;
			sound_stop(sound_get("sfx_charge"));
		}
	}
	if (window == 10){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 5;
			window_timer = 0;
		}
	}
}

//Ranger
if (attack == AT_COPY_RANGER){
	if (window == 1){
		set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv1"));
		ranger_charge = 0;
		ranger_aim = 0;
		ranger_aim_hand_shoot_offset = 0;
		dir_joy_remember = 0;
		dir_joy_remember_direction_vert = -1;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_charge"), false, noone, 1, 1);
		}
	}
	if (joy_pad_idle == false && window == 2){
		if (joy_dir > 90 && joy_dir < 270){
			spr_dir = -1;
			ranger_aim = joy_dir - 180;
		}
		else {
			spr_dir = 1;
			ranger_aim = joy_dir;
		}
	}
	if (window == 2){
		if (window_timer == 40 && ranger_charge < 3){
			ranger_charge++;
			if (ranger_charge == 1){
				sound_play(sound_get("sfx_kfl_charge_lv1"), false, noone, 1, 1);
				spawn_hit_fx(x, y - 20, 301);
				set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv2"));
			} else if (ranger_charge == 2){
				sound_play(sound_get("sfx_kfl_charge_lv2"), false, noone, 1, 1);
				spawn_hit_fx(x, y - 20, 301);
				set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv3"));
			} else if (ranger_charge == 3){
				sound_play(sound_get("sfx_kfl_charge_lv3"), false, noone, 1, 1);
				sound_stop(sound_get("sfx_charge"));
				spawn_hit_fx(x, y - 20, 304);
				set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv4"));
			} else if (ranger_charge == 0){
				set_window_value(AT_COPY_RANGER, 3, AG_WINDOW_SFX, sound_get("sfx_kfl_ranger_fire_lv1"));
			}
		}
		if (!special_down){
			window = 3;
			window_timer = 0;
			sound_stop(sound_get("sfx_charge"));
		}
	}
	if (window == 2){
		can_jump = true;
		if (jump_pressed){
			sound_stop(sound_get("sfx_charge"));
		}
	}
	if (window == 3){
		//this is where the hitbox is spawned
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (ranger_charge == 1){
				var rangerProj = create_hitbox(AT_COPY_RANGER, 2, x, y-24);
				if (!free){
					spawn_base_dust( x-(8*spr_dir), y, "dash", spr_dir);
				}
			} else if (ranger_charge == 2){
				var rangerProj = create_hitbox(AT_COPY_RANGER, 3, x, y-24);
				if (!free){
					spawn_base_dust( x-(12*spr_dir), y, "dash_start", spr_dir);
				}
			} else if (ranger_charge == 3){
				var rangerProj = create_hitbox(AT_COPY_RANGER, 4, x, y-24);
				if (!free){
					spawn_base_dust( x-(4*spr_dir), y, "land", spr_dir);
					spawn_base_dust( x-(14*spr_dir), y, "dash_start", spr_dir);
				}
			} else if (ranger_charge == 0){
				var rangerProj = create_hitbox(AT_COPY_RANGER, 1, x, y-24);
			}
			
			rangerProj.playerJoyDirectionMultHSP = dir_cos;
			rangerProj.playerJoyDirectionMultVSP = dir_sin;
			rangerProj.playerJoyDirectionRemember = dir_joy_direction;
			rangerProj.playerJoyDirectionRememberVert = dir_joy_direction_vert;
			rangerProj.initXOffset = (64*dir_cos)*spr_dir;
			rangerProj.initYOffset = ((56*dir_sin)+20)*dir_joy_direction_vert;
			
			move_cooldown[AT_COPY_RANGER] = 45;
		}
	}
}

//Fighter
if (attack == AT_COPY_FIGHTER){
	can_fast_fall = false;
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-3){
			sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.8, 1);
		}	
	}
	if (window == 2){
		vsp = clamp(vsp, -100, 2);
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!hitpause){
				spawn_base_dust( x+(6*spr_dir), y, "jump", spr_dir);
				spawn_base_dust( x+(6*spr_dir), y, "dash_start", -spr_dir);
			}
		}	
	}
	if (window == 4){
		if (!free){
			set_state(PS_PRATLAND);
			spawn_base_dust( x, y, "land", spr_dir);
			sound_play(landing_lag_sound);
		}
	}
}

//Sword
if (attack == AT_COPY_SWORD){
	if (!free){
		var swordMHitHboxBKB = 2.5;
	} else if (free){
		var swordMHitHboxBKB = 8;
	}
	for (var i = 1; i < 13; i++){
		set_hitbox_value(AT_COPY_SWORD, i, HG_BASE_KNOCKBACK, swordMHitHboxBKB);
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && special_down){
			window_timer = 1;
		}
	}
	if (window == 3){
		sound_stop(sound_get("sfx_charge"));
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && (up_down || (jump_down || jump_pressed)) && !free && !hitpause){
			spawn_base_dust( x, y, "jump", spr_dir);
			vsp = -10.5;
			sound_play(jump_sound);
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			spawn_base_dust( x+12, y, "dash", -1);
			spawn_base_dust( x-12, y, "dash", 1);
		}
	}
	if (window == 4){
		sword_dust_timer++;
		move_cooldown[AT_COPY_SWORD] = 80;
		if (sword_dust_timer == 8){
			sword_dust_timer = 0;
			if (!free && !hitpause){
				spawn_base_dust( x+12, y, "dash", -1);
				spawn_base_dust( x-12, y, "dash", 1);
			}
		}
		if (!hitpause){
			if (right_down && hsp <= 3){
				hsp += 3.2;
			}
			if (left_down && hsp >= -3){
				hsp -= 3.2;
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 1, 1);
			if (!free && !hitpause){				
				spawn_base_dust( x-(12*spr_dir), y, "dash", spr_dir);
				spawn_base_dust( x+(14*spr_dir), y, "dash_start", -spr_dir);
			}
		}
	} else {
		sword_dust_timer = 0;
	}
}



//Water
if (attack == AT_COPY_WATER){
	move_cooldown[AT_COPY_WATER] = 30;
	if (window == 2 && hsp == 0 && !hitpause){
		window = 3;
		window_timer = 0;
		sound_play(sound_get("sfx_stomp"));
		sound_stop(sound_get("sfx_krdl_water_wave"));
		spawn_base_dust( x+(20*spr_dir), y, "walljump", -spr_dir);
		vsp = -6;
		hsp = -3 * spr_dir;
	}
	if(window == 2){
		vsp = clamp(vsp, -999, 3.5);
	}
	if(was_parried){
		waterJumpCancel = false;
	}
	if (window > 2){
		if (waterJumpCancel){
			can_jump = true;
		}
	}
}

//Leaf
if (attack == AT_COPY_LEAF){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.8, 1.2);
			if (!free){
				spawn_base_dust( x+(34*spr_dir), y, "land", spr_dir);
			}
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_leaves"), false, noone, 0.8);
			spawn_hit_fx(x, y, leaf_fallVFX);
		}
	}
}

//Ice
if (attack == AT_COPY_ICE){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_krdl_ice_breath_loop"), true, noone, 1);
		}
	}
	if (window == 3){
		var xIceVFXSpawnOffset = 70;
		if (window_timer == 2){
			ice_blowVFX1_sub = 0;
			ice_blowVFX1_rot = -15 + random_func( 0, 30, false );
			var puffBlow = spawn_hit_fx(x+xIceVFXSpawnOffset*spr_dir, y, ice_stopVFX);
			puffBlow.draw_angle = ice_blowVFX1_rot;
		}
		if (window_timer == 6){
			ice_blowVFX2_sub = 0;
			ice_blowVFX2_rot = -15 + random_func( 0, 30, false );
			var puffBlow = spawn_hit_fx(x+xIceVFXSpawnOffset*spr_dir, y, ice_stopVFX);
			puffBlow.draw_angle = ice_blowVFX2_rot;
		}
		if (window_timer == 10){
			ice_blowVFX3_sub = 0;
			ice_blowVFX3_rot = -15 + random_func( 0, 30, false );
			var puffBlow = spawn_hit_fx(x+xIceVFXSpawnOffset*spr_dir, y, ice_stopVFX);
			puffBlow.draw_angle = ice_blowVFX3_rot;
		}
		if (window_timer == 14){
			ice_blowVFX4_sub = 0;
			ice_blowVFX4_rot = -15 + random_func( 0, 30, false );
			var puffBlow = spawn_hit_fx(x+xIceVFXSpawnOffset*spr_dir, y, ice_stopVFX);
			puffBlow.draw_angle = ice_blowVFX4_rot;
		}
		
		if (!special_down && state_timer >= 30){
			window = 4;
			window_timer = 0;
			sound_play(asset_get("sfx_ice_ftilt"), false, noone, 0.4, 1.8);
		}
	}
	
	if (ice_blowVFX1_sub >= 0){
			ice_blowVFX1_sub += 0.25;
			if (ice_blowVFX1_sub > 4){
				ice_blowVFX1_sub = -1;
			}
		}
		if (ice_blowVFX2_sub >= 0){
			ice_blowVFX2_sub += 0.25;
			if (ice_blowVFX2_sub > 4){
				ice_blowVFX2_sub = -1;
			}
		}
		if (ice_blowVFX3_sub >= 0){
			ice_blowVFX3_sub += 0.25;
			if (ice_blowVFX3_sub > 4){
				ice_blowVFX3_sub = -1;
			}
		}
		if (ice_blowVFX4_sub >= 0){
			ice_blowVFX4_sub += 0.25;
			if (ice_blowVFX4_sub > 4){
				ice_blowVFX4_sub = -1;
			}
		}
	
	if (window == 4 && window_timer = 0){
		spawn_hit_fx(x+60*spr_dir, y, ice_stopVFX);
		sound_stop(sound_get("sfx_krdl_ice_breath_loop"));
	}
}

//Tornado
if (attack == AT_COPY_TORNADO){
	can_fast_fall = false;
	if (window == 1){
		set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_TYPE, 9);
	}
	if (window == 2 || window == 3){
		if (special_down){
			vsp -= 1;
			if (vsp <= -3){
				vsp = -3;
			}
		}
		if (!special_down){
			vsp += 0.25;
			if (vsp >= 1.5){
				vsp = 1.5;
			}
		}
		if (right_down && hsp <= 4){
			hsp += 0.1;
		}
		if (left_down && hsp >= -4){
			hsp -= 0.1;
		}
		if (state_timer < 26){
			vsp = -2.5;
		}
		if (!free){
			vsp = -0.5;
		}
	}
	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		sound_stop(sound_get("sfx_krdl_tornado"));
		sound_play(asset_get("sfx_bird_sidespecial"));
		vsp = -5.2;
	}
	if (window == 4){
		vsp = clamp(vsp, -99, 2);
	}
	if (state_timer > 60){
		set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_TYPE, 1);
	}
}

//Bomb
if (attack == AT_COPY_BOMB){
	if (window == 1 || window == 2 || window == 3){
		var bombUpHeldMod = (up_down * 2.1);
	}
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(sound_get("sfx_krdl_bomb_throw"));
			if (!free){
				spawn_base_dust( x-(8*spr_dir), y, "dash", spr_dir);
			}
		}
		bomb_charge = 0;
		set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_HSPEED, 6 - bombUpHeldMod);
		set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_VSPEED, -5.5 - bombUpHeldMod);
	}
	if (window == 2){
		bomb_charge++;
		if (spr_dir == 1 && left_pressed) {
			spr_dir = -1;
		}
		if (spr_dir == -1 && right_pressed) {
			spr_dir = 1;
		}
		if (!special_down) {
			window = 3;
			window_timer = 0;
		}
		if (bomb_charge > 10 && bomb_charge <= 30){
			set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_HSPEED, 8 - bombUpHeldMod);
			set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_VSPEED, -6.25 - bombUpHeldMod);
		} 
		if (bomb_charge > 30) {
			set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_HSPEED, 10 - bombUpHeldMod);
			set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_VSPEED, -7.85 - bombUpHeldMod);
		}
		if (bomb_charge == 11){
			sound_play(sound_get("sfx_charge"));
		}
		if (bomb_charge == 31){
			spawn_hit_fx(x-(35*spr_dir), y - 32, beam_hitfx);
			sound_play(sound_get("sfx_charge_max"), false, noone, 1, 1);
			sound_stop(sound_get("sfx_charge"));
		}
	}
	if (window == 3 || !special_down){
		sound_stop(sound_get("sfx_charge"));
	}
	if (window == 5){
		move_cooldown[AT_COPY_BOMB] = 35;
	}
}

//Mike
if (attack == AT_COPY_MIKE){
	can_fast_fall = false;
	//1st Use
	if (mike_level == 1 && window == 1 && window_timer == 1){
		set_attack_value(AT_COPY_MIKE, AG_SPRITE, sprite_get("ability_mike1"));
		set_attack_value(AT_COPY_MIKE, AG_HURTBOX_SPRITE, sprite_get("ability_mike1_hurt"));
		hurtboxID.sprite_index = sprite_get("ability_mike1_hurt");
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX_FRAME, 19);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX, sound_get("mikekirby1_l"));
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAME_START, 11);
		set_hitbox_value(AT_COPY_MIKE, 1, HG_LIFETIME, 7);
		set_hitbox_value(AT_COPY_MIKE, 2, HG_LIFETIME, 0);
		set_hitbox_value(AT_COPY_MIKE, 3, HG_LIFETIME, 0);
	}
	//2nd Use
	if (mike_level == 2 && window == 1 && window_timer == 1){
		set_attack_value(AT_COPY_MIKE, AG_SPRITE, sprite_get("ability_mike2"));
		set_attack_value(AT_COPY_MIKE, AG_HURTBOX_SPRITE, sprite_get("ability_mike2_hurt"));
		hurtboxID.sprite_index = sprite_get("ability_mike2_hurt");
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_LENGTH, 26);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX_FRAME, 25);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX, sound_get("mikekirby2_l"));
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_LENGTH, 26);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAME_START, 11);
		set_hitbox_value(AT_COPY_MIKE, 1, HG_LIFETIME, 0);
		set_hitbox_value(AT_COPY_MIKE, 2, HG_LIFETIME, 7);
		set_hitbox_value(AT_COPY_MIKE, 3, HG_LIFETIME, 0);
	}
	//3rd Use
	if (mike_level == 3 && window == 1 && window_timer == 1){
		set_attack_value(AT_COPY_MIKE, AG_SPRITE, sprite_get("ability_mike3"));
		set_attack_value(AT_COPY_MIKE, AG_HURTBOX_SPRITE, sprite_get("ability_mike3_hurt"));
		hurtboxID.sprite_index = sprite_get("ability_mike3_hurt");
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_LENGTH, 32);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX_FRAME, 31);
		set_window_value(AT_COPY_MIKE, 1, AG_WINDOW_SFX, sound_get("mikekirby3_l"));
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_LENGTH, 21);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAMES, 7);
		set_window_value(AT_COPY_MIKE, 2, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_LENGTH, 34);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_COPY_MIKE, 3, AG_WINDOW_ANIM_FRAME_START, 15);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_COPY_MIKE, 4, AG_WINDOW_ANIM_FRAME_START, 16);
		set_hitbox_value(AT_COPY_MIKE, 1, HG_LIFETIME, 0);
		set_hitbox_value(AT_COPY_MIKE, 2, HG_LIFETIME, 0);
		set_hitbox_value(AT_COPY_MIKE, 3, HG_LIFETIME, 10);
	}
	if (window == 1){
		hsp *= 0.8;
		vsp *= 0.8;
		if (mike_level == 1){
			if(window_timer == 9){
				sound_play(asset_get("sfx_swipe_weak1"));
			}
			if(window_timer == 16){
				sound_play(asset_get("sfx_swipe_medium1"));
			}
		}
		if (mike_level == 2){
			if(window_timer ==9){
				sound_play(asset_get("sfx_swipe_medium2"));
			}
			if(window_timer == 15){
				sound_play(asset_get("sfx_swipe_heavy1"));
			}
		}
		if (mike_level == 3){
			if(window_timer == 10){
				sound_play(asset_get("sfx_swipe_weak2"));
			}
			if(window_timer == 16){
				sound_play(asset_get("sfx_spin"));
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_kndl_mike" + string(mike_level)), false, noone, 1, 1);
			if (mike_level == 1){
				shake_camera(6, 4);
				//sound_play(asset_get("sfx_war_horn"), false, noone, 1, 1.2);
			} else if (mike_level == 2){
				shake_camera(10, 4);
			} else if (mike_level == 3){
				shake_camera(20, 4);
			}
		}
	}
	if (window == 2 && window_timer == 1 && !hitpause){
		mike_level++;
	}
	if (mike_level >= 4){
		TCG_Kirby_Copy = 0;
		mike_level = 1;
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			move_cooldown[AT_COPY_MIKE] = 30;
			if (mike_level == 1){
				sound_play(sound_get("sfx_krdl_ability_drop"));
			}
		}
	}
}

//Abyss
if (attack == AT_COPY_ABYSS){
	can_fast_fall = false;
	if (window == 1){
		abyss_hsp = 1;
		abyss_vsp = 1;
		set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_TYPE, 9);
		if (!free){
			abyss_rising = true;
		}
		if (abyss_rising == true){
			vsp -= 0.4;
		}
		state_timer = 0;
	}
	if (window == 2){
		fall_through = true;
		abyss_rising = false;
		if (window_timer == 15){
			abyss_hsp -= 0.1;
			abyss_vsp -= 0.1;
		}
		if (state_timer > 80 || (state_timer > 10 && !special_down)){
			set_window_value(AT_COPY_ABYSS, 2, AG_WINDOW_TYPE, 1);
			window = 3;
			window_timer = 0;
			sound_stop(asset_get("sfx_abyss_hazard_start"));
		}
		//hsp *= abyss_hsp;
		//vsp *= abyss_vsp;
		if (state_timer < 60){
			var abyssMoveClamp = ((abs(state_timer-60))/60)
		} else if (state_timer > 59){
			var abyssMoveClamp = 0;
		}
		hsp = clamp(hsp, -8*abyssMoveClamp, 8*abyssMoveClamp)
		vsp = clamp(vsp, -8*abyssMoveClamp, 8*abyssMoveClamp)
		var abyssMoveValue = 4*abyssMoveClamp;
		if (right_down && hsp <= 4.1){
			hsp += abyssMoveValue;
		}
		if (left_down && hsp >= -4.1){
			hsp -= abyssMoveValue;
		}
		if (down_down && vsp <= 4.1){
			vsp += abyssMoveValue;
		}
		if (up_down && vsp >= -4.1){
			vsp -= abyssMoveValue;
		}
			if (!down_down && vsp > 0){
				vsp -= 0.35;
			}
			if (!up_down && vsp < 0){
				vsp += 0.35;
			}
			if (!right_down && hsp > 0){
				hsp -= 0.35;
			}
			if (!left_down && hsp < 0){
				hsp += 0.35;
			}
		}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_abyss_explosion_big"));
			shake_camera(5, 4)
		}
	}
}

//ESP
if (attack == AT_COPY_ESP){
	can_fast_fall = false;
	if (window == 1){
		esp_parried = false;
		hsp *= 0.8;
		vsp *= 0.8;
		esp_idle_timer = 0;
		esp_hit_counter = 0;
		esp_charged = false;
		set_hitbox_value(AT_COPY_ESP, 2, HG_LIFETIME, 10);
		set_hitbox_value(AT_COPY_ESP, 5, HG_LIFETIME, 0);
		set_hitbox_value(AT_COPY_ESP, 3, HG_LIFETIME, 5);
		set_hitbox_value(AT_COPY_ESP, 6, HG_LIFETIME, 0);
	}
	if (window == 2){
		state_timer = 0;
	}
	if (window == 3){
		
		if (state_timer > 20){
			vsp += 0.05;
		} else {
			vsp = 0;
		}
		vsp = clamp(vsp, -10, 4);
	
		if (!special_down || (esp_hit_counter > 2 && !hitpause)){
			window = 4;
			window_timer = 0;
		}
		if (joy_pad_idle){
			esp_idle_timer++;
		}
		if (esp_idle_timer == 70){
			esp_idle_timer++;
			if (esp_charged == false){
				sound_play(sound_get("sfx_star_allies_esp_pkelectroshift"));
				spawn_hit_fx(x, y-12, 110);
				spawn_hit_fx(esp_x, esp_y-12, 110);
			}
			esp_charged = true;
			create_hitbox(AT_COPY_ESP, 4, esp_x, esp_y);
			set_hitbox_value(AT_COPY_ESP, 2, HG_LIFETIME, 0);
			set_hitbox_value(AT_COPY_ESP, 5, HG_LIFETIME, 10);
			set_hitbox_value(AT_COPY_ESP, 3, HG_LIFETIME, 0);
			set_hitbox_value(AT_COPY_ESP, 6, HG_LIFETIME, 5);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sound_get("sfx_star_allies_esp_pkshift"));
			sound_stop(sound_get("sfx_star_allies_esp_pkelectroshift"));
		}
	}
	if (window == 5){
		if (free){
			set_window_value(AT_COPY_ESP, 5, AG_WINDOW_TYPE, 7);
		} else if (!free){
			set_window_value(AT_COPY_ESP, 5, AG_WINDOW_TYPE, 1);
			move_cooldown[AT_COPY_ESP] = 30;
		}
	}
}

//Drill
if (attack == AT_COPY_DRILL){
	//Startup
	if(window == 1){
		drill_dig_timer = 0;
		drill_dig_animframe_track_timer = 11;
		drill_move_value = 0;
		drill_fall_timer = 0;
		set_hitbox_value(AT_COPY_DRILL, 1, HG_WINDOW, 2);
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			sound_play(asset_get("sfx_propeller_dagger_loop"), false, noone, 1, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				window = 3;
				window_timer = 0;
				spawn_base_dust( x, y, "land", spr_dir);
				sound_play(sound_get("sfx_kfl_drill_dig"), false, noone, 1, 1.3);
				sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1.3);
				sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, 0.8, 0.7);
			} else if (free){
				sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 1, 1);
				state_timer = 0;
				spawn_base_dust( x, y, "doublejump", spr_dir);
				spawn_base_dust( x-14, y, "dash_start", -1);
				spawn_base_dust( x+14, y, "dash_start", 1);
			}
		}
	}
	
	//Falling
	if (window == 2){
		drill_fall_timer++;
		if (drill_fall_timer == 2){
			if (!hitpause){
				spawn_base_dust( x-10, y, "dash", -1);
				spawn_base_dust( x+10, y, "dash", 1);
				drill_fall_timer = 0;
			}
		}
		if (down_down){
			fall_through = true;
		} else if (!down_down){
			fall_through = false;
		}
		can_wall_jump = true;
		if (state_timer > 7){
			set_hitbox_value(AT_COPY_DRILL, 1, HG_WINDOW, 69);
		}
		if (state_timer > 39){
			can_jump = true;
			can_shield = true;
		}
		if(!free){
			window = 3;
			window_timer = 0;
			sound_play(sound_get("sfx_kfl_drill_dig"), false, noone, 1, 1.3);
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.6, 0.65);
			sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, 0.8, 0.7);
			spawn_base_dust( x, y, "land", spr_dir);
			destroy_hitboxes();
		}
		if (!hitpause){
			hsp = clamp(hsp, -2.5, 2.5);
			vsp = 15;
		}
	}
	
	if (window == 3){
		if (window_timer == 1){
			has_hit = false;
		}
		if (left_down && !right_down){
			drill_move_value -= 0.95*spr_dir;
		} else if (!left_down && right_down){
			drill_move_value += 0.95*spr_dir;
		} else if (!left_down && !right_down){
			drill_move_value *= 0.5;
		}
		drill_move_value = clamp(drill_move_value, -4.2, 4.2);
		set_window_value(AT_COPY_DRILL, 3, AG_WINDOW_HSPEED, drill_move_value);
	}
	
	//Dig
	if (window == 4){
		drill_dig_timer++;
		can_move = false;
		if (left_down && !right_down){
			drill_move_value -= 0.95*spr_dir;
			if (hsp != 0){
				drill_dig_animframe_timer++;
			}
		} else if (!left_down && right_down){
			drill_move_value += 0.95*spr_dir;
			if (hsp != 0){
				drill_dig_animframe_timer++;
			}
		} else if (!left_down && !right_down){
			drill_move_value *= 0.5;
		}
			
		if(drill_dig_animframe_timer == 8){
			drill_dig_animframe_track_timer++;
			drill_dig_animframe_timer = 0;
			sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, 0.4, 0.9);
			spawn_base_dust( x, y, "walk", spr_dir);
			if (drill_dig_animframe_track_timer > 15){
				drill_dig_animframe_track_timer = 11;
			}
		}
		
		if (drill_dig_timer == maxDrillTime-18
		|| drill_dig_timer == maxDrillTime-12
		|| drill_dig_timer == maxDrillTime-6){
			sound_play(asset_get("mfx_timertick_holy"), false, noone, 1, 1.35);
		}
		
		//Change maxDrillTime in init.gml to change how long Kirby can burrow for.
		
		if ((special_pressed && drill_dig_timer > 4) || drill_dig_timer == maxDrillTime){
			window = 5;
			window_timer = 0;
		}
		
		if (hsp != 0){
			set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_ANIM_FRAMES, 4);
		} else if (hsp == 0){
			set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		}
		
		drill_move_value = clamp(drill_move_value, -4.2, 4.2);
		set_window_value(AT_COPY_DRILL, 4, AG_WINDOW_HSPEED, drill_move_value);
	}
	
	//Startup for Un-Burrowing
	if (window == 5){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			vsp = -10.5;
			spawn_hit_fx(x, y, drill_dirt_emerge);
			sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, 0.8, 1.2);
			spawn_base_dust( x, y, "jump", spr_dir);
			y -= 12;
		}
	}
	
	if ((window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window > 5){
		hud_offset = 52;
	}
	
	if (window > 4){
		can_fast_fall = false;
	}
	
	if (window > 5){
		if (!free){
			set_state(PS_LAND);
			sound_play(landing_lag_sound);
			spawn_base_dust( x, y, "land", spr_dir);
		}
		move_cooldown[AT_COPY_DRILL] = 99999;
	}
}

//Spark
if (attack == AT_COPY_SPARK){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_krdl_spark"), true, noone, 1, 1);
			sparkTimesThrough = 0;
		}
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sparkTimesThrough++;
		}
		
		if((!special_down && sparkTimesThrough != 0) || (special_down && sparkTimesThrough == 3)){
			window = 3;
			window_timer = 0;
			sparkTimesThrough = 0;
			sound_stop(sound_get("sfx_krdl_spark"));
			destroy_hitboxes();
		}
	}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_krdl_spark_wave"), false, noone, 1, 1);
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.5, 1.4);
		}
	}
	if (window > 4){
		move_cooldown[AT_COPY_SPARK] = 60;
	}
	
	if ((window == 1 && image_index == 2) || window == 2 || window == 3 || window == 4 || window == 5 || window == 6){
		hud_offset = 48;
	}
}

if attack != AT_NSPECIAL || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	sound_stop(sound_get("inhale_loop"));
}

#define window_time_is_div(modulo) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer % modulo == 0 and !hitpause


#define Grab(xpos, ypos, xsmooth, ysmooth)
{
    if(hit_player_obj.hitstun > 0){
    if (xsmooth != 0)
    {
        hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
        hit_player_obj.hsp = 0;
    }
    if (ysmooth != 0)
    {
        hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
        hit_player_obj.vsp = 0;
    }
        hit_player_obj.hitpause = true;
        hit_player_obj.hitstop = 1;
    }
}

#define select_projectile(_x, _y, _width, _height)
var x1 = _x - _width / 2;
var y1 = _y - _height / 2;
var x2 = _x + _width / 2;
var y2 = _y + _height / 2;

var hitbox_list = collision_ellipse_list(x1,y1,x2,y2,pHitBox,1,1);
if (hitbox_list == noone) return noone;
var final_hitbox = noone;

//(so that you can grab teamate's projeciles. Should help with double battles.)
var team_attack = true //get_match_setting(SET_TEAMATTACK);
for (var i = 0; i < ds_list_size(hitbox_list); i++) {
	var hbox = hitbox_list[| i];
	
	with (hbox) {
		if ( (type == 2) && (player != other.player || can_hit_self)
		  && (other.can_be_hit[player] == 0) && (can_hit[other.player])
		  && (groundedness == 0 || (other.free ? 2 : 1) == groundedness)
		  && (get_player_team(other.player) != get_player_team(player) || team_attack)
		  && hit_priority != 0 && hit_priority <= 10
		  && !plasma_safe) {
		  	final_hitbox = id;
		  	break;
		  }
	}
}
ds_list_destroy(hitbox_list);
return final_hitbox;


#define get_projectile_tier(_proj)
//0 = small projectile, automatically swallow.
//1 = big projectile, spit out or swallow.
var projectile_width = _proj.bbox_right - _proj.bbox_left;
var projectile_height = _proj.bbox_bottom - _proj.bbox_top;

var size = ceil(sqrt(abs(projectile_width + projectile_height)));
//print(size);
if (size < 6)
	return 0;
return 1;

#define collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
var dsid,i;
dsid = ds_list_create();
with (obj) {
    if (!notme || id != other.id) {
        i = collision_ellipse(floor(x1),floor(y1),floor(x2),floor(y2),id,prec,false);
        if (i != noone) ds_list_add(dsid,i);
    }
}
if (ds_list_size(dsid) == 0) {
    ds_list_destroy(dsid);
    dsid = noone;
}
return dsid;

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

// attack_update.gml
// Called every frame, but only if the character is performing an attack

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){

	// Down Special - Will-o-Wisp
	case AT_DSPECIAL:
		if (atk_air || atk_ground){
			can_fast_fall = false;
			if (window == 2 && window_timer == 1){
			
				if (mim_wisp == noone){
					if (!free){
						mim_wisp = instance_create(x + (50 * spr_dir), y - 10, "obj_article1");
					}
					else {
						mim_wisp = instance_create(x, y + 50, "obj_article1");					
						if (!hitpause){
							hsp = -4 * spr_dir;
							vsp = -6;
						}
					}
					mim_wisp.player_id = id;
					mim_wisp.player = player;
				}
			}
		}
	break;
	
	case AT_DSPECIAL_AIR:
		if (atk_air || atk_ground){
			if (window == 1 && window_timer == 14){
				spawn_hit_fx(x, y - 20, hfx_fire1);
			}
		if (window == 2 && window_timer == 10){
				shake_camera(7,5);
			}
		}
	break;
	
	case AT_DSTRONG:
		if (atk_air || atk_ground){
			if(window == 4 && window_timer == 1 && !has_hit_player){
				set_player_damage(player, clamp(get_player_damage(player) + 10, 0, 999) )
				shake_camera(3,2);	
			}
		}
	break
	
	// Forward Special - Normal Multihit
	case AT_FSPECIAL:
		if (atk_air || atk_ground){

			// Checks if touching ledge and slides the character upward
			if (window == 2 && !hitpause){
				if (place_meeting(x + (5 * spr_dir), y + 35, asset_get("par_block")) && !place_meeting(x + (5 * spr_dir), y - 40, asset_get("par_block")) && free && hsp == 0){
					y -= 5;
				}
			}

			can_fast_fall = false;
			can_wall_jump = true; 
			
			if (window == 1){
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
				
				if (window_timer == 1){
					fspec_flip = false;
					set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
				}
				
				if (fspec_flip){
					if (left_down || left_pressed){
						spr_dir = -1;
					}
				
					if (right_down || right_pressed){
						spr_dir = 1;
					}
				}
			}
			
			if (state_timer == 1 && fspec_per_air > 0){
				fspec_per_air--;
			}

			if (window == 2){
				if (touched_wisp){
					window = 1;
					window_timer = 8;
					fspec_flip = true;
					set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
					touched_wisp = false;
				}

				if (!free){
					set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
				}
			}
			
			if (window == 3 && !free){
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				window = 4;
				window_timer = 0;
			}
		}
	break;
	
	// Forward Special - Normal Multihit
	case AT_FSPECIAL_2:
		if (atk_air || atk_ground){
			can_move = false;
			
			if (window == 3 && window_timer == 8){
				visible = true;
				move_cooldown[AT_FSPECIAL] = 20;
			}
		}
	break;
	
	// Forward Special - Empowered Multihit
	case AT_FSPECIAL_AIR:
		if (atk_air || atk_ground){
			can_move = false;
			if (state_timer == 35){
				var lets_snuggle = spawn_hit_fx(x, y + 80, vfx_zmove);
				lets_snuggle.depth = -10;
				lets_snuggle.spr_dir = 1;
				
				move_cooldown[AT_FSPECIAL] = 120;
			}
			
			if (window == 1){
				hud_offset = 40 + (state_timer * 2);
			}
			if (window > 1){
				hud_offset = 100;
			}
		}
	break;
	
	// Down Special 2 - Active and Hold
	case AT_DSPECIAL_2:
		
		if (atk_air || atk_ground){
			can_fast_fall = false;
			if (window == 1 && window_timer == 1){
				move_cooldown[AT_DSPECIAL_2] = 60;
				thunder_charge = 0;
			}
		
			if (window == 2 && window_timer == 2 && 
			special_down && thunder_charge < 11){
				window_timer = 1;
				thunder_charge++;
			}
			
			if (window == 3 && window_timer == 1){
				if (thunder_charge <= 10){
					if (mim_wisp.active){
						mim_wisp.lock_x = x;
						mim_wisp.lock_y = y - 20;
						mim_wisp.state = 2;
						mim_wisp.travel_timer = 0;
					}
				}
				else {
					if (mim_wisp.active){
						mim_wisp.state = 3;
						mim_wisp.state_timer = 1;
						move_cooldown[AT_DSPECIAL] = 150;
						move_cooldown[AT_DSPECIAL_2] = 150;
					}
				}
			}
			
			mim_wisp.not_held = false;
		}
	
	break;
	
	case AT_DAIR:
	
		if (atk_air || atk_ground){
			can_fast_fall = false;
			if (window == 3 && window_timer == 1){
				move_cooldown[AT_DAIR] = 30;
			}
		}

	break;
	
	case AT_DATTACK:
		
		if (atk_air || atk_ground){
			can_fast_fall = false;
			if (!free && window >= 2){
				// play a landing animation vfx
			}
			
			if (window == 3 && window_timer == 6 && has_hit_player){
				window = 4;
				window_timer = 0;
				can_attack = true;
				can_jump = true;
				attack_end();
			}
		}
		
	break;
	
	case AT_USPECIAL:
		if (atk_air || atk_ground){
			can_fast_fall = false;
			
			// Checks if touching ledge and slides the character upward
			if ((window == 2 || window == 4) && !hitpause && !free){
				if (place_meeting(x + (5 * spr_dir), y + 20, asset_get("par_block")) && !place_meeting(x + (5 * spr_dir), y - 40, asset_get("par_block")) && free && hsp == 0){
					y -= 15;
				}
			}

			can_wall_jump = true;
			
			// Does not put player in pratfall if move started on the ground or lands on the ground
			if (touched_wisp || uspec_touched_ground){
				uspec_pratfall = false;
			}
			
			
			if (!free){
				uspec_touched_ground = true;
			}
			
			
			if (!uspec_pratfall){
				set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
			}
			else {
				set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
			}
			
			// First Zip
			if (window == 1){
				if (window_timer == 1){
					uspec_touched_ground = false;
					uspec_was_grounded_at_start = false;
					touched_wisp = false;
					uspec_pratfall = true;
					
				}

				uspec_dir1 = 90;
				uspec_dir2 = 90;
				
				if (window_timer == 12){
					
					if (!joy_pad_idle){
						// Angle Check - Limited to 8 angles
						if ((joy_dir <= 22.5 || joy_dir >= 337.5)){
							uspec_dir1 = 0;
						}		
						if (joy_dir < 67.5 && joy_dir > 22.5){
							uspec_dir1 = 45;
						}
						if (joy_dir <= 112.5 && joy_dir >= 67.5){
							uspec_dir1 = 90;
						}
						if (joy_dir < 157.5 && joy_dir > 112.5){
							uspec_dir1 = 135;
						}
						if (joy_dir <= 202.5 && joy_dir >= 157.5){
							uspec_dir1 = 180;
						}
						if (joy_dir < 247.5 && joy_dir > 202.5){
							uspec_dir1 = 225;
						}
						if (joy_dir <= 292.5 && joy_dir >= 247.5){
							uspec_dir1 = 270;
						}
						if (joy_dir < 337.5 && joy_dir > 292.5){
							uspec_dir1 = 315;
						}
					}
				}				
			}

			// Travel speed for 1st Zip
			if (window == 2 && !hitpause){
				hsp = 20 * dcos(uspec_dir1);
				vsp = -20 * dsin(uspec_dir1);
			}			

			if (window == 1 && window_timer == 12){
				draw_y = -35;				
			}
			
			if (window == 2){	
				spr_angle = uspec_dir1 - 90;		

				if (spr_angle < 90 && spr_angle != -90){
					draw_y = -35;
				}
				if (spr_angle == 90 || spr_angle == -90){
					draw_y = -25;				
				}
				if (spr_angle > 90){
					draw_y = -15;
				}
			}
			
			if (window == 4){	
				spr_angle = uspec_dir2 - 90;		

				if (spr_angle < 90 && spr_angle != -90){
					draw_y = -35;
				}
				if (spr_angle == 90 || spr_angle == -90){
					draw_y = -25;				
				}
				if (spr_angle > 90){
					draw_y = -15;
				}
				
				if (window_timer == 7){
					if (free && !uspec_was_grounded_at_start && !touched_wisp){
						uspec_touched_ground = false;
						uspec_pratfall = true;
					}
				}
			}
			
			// Second Zip
			if (window == 3 && window_timer == 7){
				
				// Angle Check - Limited to 8 angles
				if ((joy_dir <= 22.5 || joy_dir >= 337.5)){
					uspec_dir2 = 0;
				}		
				if (joy_dir < 67.5 && joy_dir > 22.5){
					uspec_dir2 = 45;
				}
				if (joy_dir <= 112.5 && joy_dir >= 67.5){
					uspec_dir2 = 90;
				}
				if (joy_dir < 157.5 && joy_dir > 112.5){
					uspec_dir2 = 135;
				}
				if (joy_dir <= 202.5 && joy_dir >= 157.5){
					uspec_dir2 = 180;
				}
				if (joy_dir < 247.5 && joy_dir > 202.5){
					uspec_dir2 = 225;
				}
				if (joy_dir <= 292.5 && joy_dir >= 247.5){
					uspec_dir2 = 270;
				}
				if (joy_dir < 337.5 && joy_dir > 292.5){
					uspec_dir2 = 315;
				}
				
				if (joy_pad_idle || uspec_dir2 == uspec_dir1){
					window = 5;
					window_timer = 0;
				}
			
				if (!free){
					uspec_was_grounded_at_start = true;
				}
			}
			
			// Travel speed for 2nd Zip
			if (window == 4 && !hitpause){
				hsp = 25 * dcos(uspec_dir2);
				vsp = -25 * dsin(uspec_dir2);
			}
			
			if (window == 3|| window >= 5){
				if (spr_angle >= 0 && spr_angle < 225){
					spr_angle = clamp(spr_angle - 30, 0, 360);
				}
				else {
					if (spr_angle < 0){
						spr_angle = clamp(spr_angle + 30, -360, 0);				
					}
					else {
						// if the angle is down_right
						spr_angle = clamp(spr_angle + 30, 225, 360);
					}
				}
			}
			
			if ((window == 5 && window_timer > 4) || window == 6){						
				draw_y = 0;
				spr_angle = 0;
				
				if (touched_wisp && !can_attack){
					can_attack = true;
					can_jump = true;
					can_strong = true;
				}

				if (jump_pressed || attack_pressed || 
				up_strong_pressed || down_strong_pressed || 
				left_strong_pressed || right_strong_pressed || 
				up_stick_pressed || down_stick_pressed || 
				left_stick_pressed || right_stick_pressed
				){
					touched_wisp = false;
				}
			}

			if (window == 3 && window_timer > 3){
				if (touched_wisp && !can_attack){
					can_attack = true;
					can_jump = true;
					can_strong = true;
				}
				if (jump_pressed || attack_pressed || 
				up_strong_pressed || down_strong_pressed || 
				left_strong_pressed || right_strong_pressed || 
				up_stick_pressed || down_stick_pressed || 
				left_stick_pressed || right_stick_pressed
				){
					draw_y = 0;
					spr_angle = 0;
					touched_wisp = false;
					vsp = 0;
					hsp = 0;
				}
			}
			
			// Grounded Endlag Cancel
			if (window == 6){
				can_fast_fall = false;
				touched_wisp = false;
				
				if (!free && window_timer > 5){
					window = 7
				}
			}
			
			if (state_timer == 1 && uspec_per_air > 0){
				uspec_per_air--;
			}

			// SparklSpawns
			if (window == 2 || window == 4){
				var sparkles = instance_create( x - 30 + random_func( 2, 60, true ), y - random_func( 3, 40, true ), "obj_article2");
				sparkles.vsp = -1;
				if (random_func(1, 4, true) >= 2){
					sparkles.depth = -100;
				}

			}
		}
	break;
	
	// Neutral Special
	case AT_NSPECIAL:
		can_fast_fall = false;
		
		// Charging
		if (window == 2){
			if (special_down) { // Charge Shot
				if (window_timer == 15){
					window_timer = 1;
				}
				if (nspec_charge < 40){
					nspec_charge++;
				}
			}		
			else { // Charge Release
				if (nspec_charge >= 0 && nspec_charge <= 15){ // Weak
					window = 3;
					window_timer = 0;
				}
				if (nspec_charge >= 15 && nspec_charge <= 40){ // Strong
					window = 4;
					window_timer = 0;
				}
			}
			
			if (window_timer % 4 == 0){
				var sparkles = instance_create( x - (30 * spr_dir) - 15 + random_func( 2, 30, true ), y - 20 + 15 - random_func( 3, 30, true ), "obj_article2");
				sparkles.vsp = -.5;
				sparkles.depth = -500;
			}
		}
		
		if (window >= 3 && window != 7){
			if (window_timer == 4){
				move_cooldown[AT_NSPECIAL] = 60;
				nspec_charge = 0;
			}	
			if (window_timer >= 15){
				window = 7;
				window_timer = 0;
			}
		}
		
		if (((window == 3 || window == 4) && window_timer == 0)){
			if (left_down || left_pressed){
				spr_dir = -1;
			}
			if (right_down || right_pressed){
				spr_dir = 1;
			}
		}
		
		if (window < 3){ // Shield cancel
			can_shield = true;
			can_jump = true;
			
			if (jump_pressed){
				nspec_charge = 0;
			}
			if (shield_pressed){
				nspec_charge = 0;
			}
		}
	break;
	
	case AT_USTRONG:
		if (atk_air || atk_ground){
			if (window == 1){
				landed_curse_tipper = false;
				set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);						
				set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

				set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
				set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
				set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);			
			}
			
			
			if (touched_wisp && !has_hit_player){
				if (window == 2){
					set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
					set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
					
					set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
					set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
					set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
				}
				
				if (window == 3){					

					if (window_timer == 1 && !hitpause){
						var ustrong_tipper = spawn_hit_fx(x, y - 120, vfx_play_ustrong);
						ustrong_tipper.depth = -5

						with (pHitBox){
							if (player == other.player){
								hitbox_timer = hitbox_timer + 5;
							}
						}
					
						hitpause = true;
						hitstop_full = 2;
						hitstop = 2;
						has_hit = true;
						vsp = -12;
						hsp = 0;
						old_vsp = -12;
						old_hsp = 0;
					}
					if (window_timer == 2 && !hitpause){
						y = y -80;
						touched_wisp = false;
					}
				}
			}
			
			/*
			if (has_hit_player){
				
				if (window == 3 && landed_curse_tipper){					

					if (window_timer == 1){
						set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
						set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
						
						set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);

						if (!hitpause){
							var ustrong_tipper = spawn_hit_fx(x, y - 120, vfx_play_ustrong);
							ustrong_tipper.depth = -5
							
							with (pHitBox){
								if (player == other.player){
									hitbox_timer = hitbox_timer + 5;
								}
							}
							
							hitpause = true;
							hitstop_full = 2;
							hitstop = 2;
							has_hit = true;
							vsp = -12;
							hsp = 0;
							old_vsp = -12;
							old_hsp = 0;
						}
					}
					if (window_timer == 2 && !hitpause){
						y = y -80;
						touched_wisp = false;
					}
				}
			}
			*/
			
			if (has_hit_player){
				if (window == 3 && landed_curse_tipper){
				
					if (!hitpause){
						hitpause = true;
						hitstop_full = 2;
						hitstop = 2;
					}
				}
			}
		}
	break;
}

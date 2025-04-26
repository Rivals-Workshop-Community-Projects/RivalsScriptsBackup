if window == 1 && window_timer == 1 && "machswat_sfx" in self sound_stop(machswat_sfx);
switch(attack) {

	case AT_UTILT:
		if ((window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)) || window == 2){
			hud_offset = 70;
		}
		
		//Enable this in a later patch maybe?
		/*if (window == 3 && window_timer == 5 &&  has_hit_player && !down_down){
			free = true;
			y = y - 33;
			set_state(PS_IDLE_AIR);
		}*/
	break;

	case AT_UAIR:
		if (window != 5){
			can_wall_jump = true;
			hud_offset = 140;
		}
	break;

	case AT_NAIR:
		if (window == 3){
			can_wall_jump = true;
		}
	break;

	case AT_FSPECIAL:
        can_fast_fall = false;
		can_move = false;

        switch(window) {
            case 1:
                if(free && !hitpause)
                {
                    if(window_timer == 1 && vsp > -2)
                        vsp = -2;
                    else if(window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH))
                        vsp = -7;    //vsp = -[jump velocity];
                }
            break;

            case 2:
                ledge_snap(16);
                can_wall_jump = true;
                can_jump = has_hit_player;

                if(!hitpause) then hsp = spr_dir * 9 * (free? 1:1.2); //hsp = spr_dir * [air speed] * (free? 1:[multiplayer if you're grounded])

				if (window_timer % 5 == 0 && !hitpause){
					CreateAfterimage(20);
				}
            break;

            case 3:
                can_wall_jump = true;
            break;
        }

    break;
        
        case AT_FTHROW:
        	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause){
        		sound_play(asset_get("sfx_buzzsaw_throw"));
    		}
        break;
        
        case AT_FSPECIAL_2:

			if (was_parried){
				window_timer = 0;
				window = get_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS) + 1;
			}

			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){

            	vsp = min(vsp, -1);

			}

			if (window == 2){
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					if (free){
						vsp = -8;
					}

					sound_play(machswat_sfx, true);
				}
			}

			if (window == 3){
				ledge_snap(16);
			    if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) then attack_end();

			    if (!hitpause && ((has_hit == true && state_timer > get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH) + 1)
				|| state_timer > get_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH) + (get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH) * 2))){
			        sound_stop(machswat_sfx);
			        can_jump = true;
					can_shield = true;
					
					if (up_down && special_pressed){
						set_attack(AT_USPECIAL);
					}
			    }
				
			    can_wall_jump = true;
			    can_move = false;

				if (!hitpause){
					hsp = 7 * spr_dir;
				}

			    if (window_timer % 5 == 0 && !hitpause){
					CreateAfterimage(20);
				}
			}
		break;
        
	case AT_USTRONG: //strong charge affecting height
		can_fast_fall = false; //prevents hitfalling
		if (was_parried && !free) set_state(PS_PRATLAND); //fixes issue where it won't put us in pratland
		
		//prevents ustrong from falling off platforms with a charge by setting the category to grounded only
		if (window >= 3) set_attack_value(attack, AG_CATEGORY, 2);
		else reset_attack_value(attack, AG_CATEGORY);
		
		if (window == 2)
		
		{
			//this dynamically changes the horizontal and vertical speeds of window 4 (movement window) according to the charge
			//the numbers outside of the brackets are for no charge U-strong
			set_window_value(attack, 4, AG_WINDOW_HSPEED, 1+(strong_charge/45));
			set_window_value(attack, 4, AG_WINDOW_VSPEED, -6-(strong_charge/30));

			//increase the endlag window according to the charge
		}
		
		if (window == 4){
			hud_offset = 50;

			if (right_down && !left_down && !hitpause){
				hsp = 4;
			}

			if (left_down && !right_down && !hitpause){
				hsp = -4;
			}
		}

		if (window == 5){
			hud_offset = 50;
		}
		

		//if in the air and going back down, put landing lag
		//we put landing lag here because the move is AG_CATEGORY 2 (a ground an air attack)
		if (window > 4 && !free){
			set_state(PS_LANDING_LAG);
			landing_lag_time = 10 * (!has_hit ? 1.5 : 1);
		}
	break;

	case AT_USTRONG_2:

		if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || window == 4){
			hud_offset = 60;
		}

	break;

	case AT_NTHROW:

		if (has_rune("G") && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			vsp = -9;
		}

	break;
	
	case AT_NSPECIAL_2:

		if (window == 1 && window_timer == get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH)){
		//This handles the charging
			if (state_timer < get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) + 30 + (has_rune("A") * 30) && special_down){
		            if (floor(state_timer / 4) % 2 == 0){
		                strong_flashing = true;
		            }
					window_timer -= 1;
					nspecial2_charge += 2;
		        } else {

				//For each stage of charging (divided by 10), check for obstacles.
				for (var a = 1; a <= floor(nspecial2_charge/10) + 3; a += 1){
				//If he is not in the air, check in front, if he is then check diagonally.
					if (!free){
						var xDetection = ((22 + (28 * a)) * spr_dir)
						var yDetection = -31
					} else {
						var xDetection = ((20 + (20 * a)) * spr_dir)
						var yDetection = (12 + (20 * a))
					}

				//Check if there isn't an obstacle. If there isn't, add 1 to true length.
					if (!place_meeting(x + xDetection, y + yDetection, asset_get("par_block"))){
						nspecial2_real_length += 1;
					}

				}

		for (var b = 0; b <= nspecial2_real_length; b += 1){
		
		//When editing this, also edit the hitbox in pizzahead_nspecial.gml
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_GROUP, 1);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_LIFETIME, 3);
		if (!free){
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_X, 22 + (28 * b));
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_Y, -31);

			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_X, 22 + (28 * (b + 1)));
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_Y, -26);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_WIDTH, 26);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HEIGHT, 38);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_ANGLE, 65);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_BASE_KNOCKBACK, 7);
		} else {
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_X, 15 + (20 * b));
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITBOX_Y, -17 + (20 * b));

			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_X, 5 + (20 * (b + 1)));
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HITBOX_Y, -12 + (20 * (b + 1)));
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_WIDTH, 38);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_HEIGHT, 26);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_ANGLE, -65);
			set_hitbox_value(AT_NSPECIAL_2, 20, HG_BASE_KNOCKBACK, 5);
		}
			set_hitbox_value(AT_NSPECIAL_2, b, HG_WIDTH, 30);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HEIGHT, 28 + (2 * free));
			set_hitbox_value(AT_NSPECIAL_2, b, HG_SHAPE, 2 - (2 * free));
			set_hitbox_value(AT_NSPECIAL_2, b, HG_PRIORITY, 2);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_DAMAGE, 6);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_ANGLE, 65);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_KNOCKBACK_SCALING, 0.4);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HITPAUSE_SCALING, 0.5);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_EXTENDED_PARRY_STUN, 1);
			set_hitbox_value(AT_NSPECIAL_2, b, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
			set_hitbox_value(AT_NSPECIAL_2, b, HG_VISUAL_EFFECT_Y_OFFSET, 15);

			set_num_hitboxes(AT_NSPECIAL_2, b);
		}

			vsp = 0;
			hsp = 0;
			can_fast_fall = false;
			can_move = false;

		    }
		}
		//We have to manually create hitbox 10;
		if (window == 2){
			vsp = 0;
			hsp = 0;
			can_fast_fall = false;
			can_move = false;

			if (window_timer == get_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH)){
				create_hitbox(AT_NSPECIAL_2, 20, x, y);
			}
		}

		if (window == 3){
			vsp = 0;
			hsp = 0;
			can_fast_fall = false;
			can_move = false;

			if (window_timer == get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH)){
				if (get_num_hitboxes(AT_NSPECIAL_2) == 0){
					window = 4;
					window_timer = 6;
				}
				if (get_num_hitboxes(AT_NSPECIAL_2) == 1 || get_num_hitboxes(AT_NSPECIAL_2) == 2){
					window = 4;
					window_timer = 3;
				}
			}
		}
	break;
	
	case AT_TAUNT:

		if (sprite_index != sprite_get("mogface")){
        //Keeps the skull frame held as long as taunt is held.
        	if (window == 1 && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH)){
        	    if (taunt_down){
        	        window_timer -= 1;
        	    } else {
        	        sound_play(sound_get("PizzafaceLaugh2"))
        	    }
	
        	}

        	//Makes the laugh window loop.
        	if (window == 3 && window_timer == get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH) && times_through < 6){
        	    window_timer = 0;
        	    times_through += 1;
        	}
		}
        

    break;
	case AT_DAIR:

		can_fast_fall = false;
		can_move = false;
		//spr_dir = 1;
		can_drop = false;
		
		switch(window){
			case 1:
				hsp = 0;
				if(window_timer < 16 && !joy_pad_idle)
				{
					dair_angle = (joy_dir + 270)%360;
					dair_angle = clamp(dair_angle, 155, 205);
					dair_angle -= 180;
				}
				spr_angle = lerp(spr_angle, dair_angle, 0.25);
				draw_x = round(spr_angle / 1.25);
				draw_y = -round(abs(spr_angle) / 6);
				break;
			case 2:
				if (window_timer % 4 == 0 && !hitpause){
					CreateAfterimage(12);
				}

				if(!hitpause){

					if (right_down) then dair_angle += 0.5;
					if (left_down) then dair_angle -= 0.5;

					dair_angle += 180;
					dair_angle = clamp(dair_angle, 130, 230);
					dair_angle -= 180;
				}
				can_wall_jump = true;

				if(state_timer >= 45){
					can_shield = true;
					can_jump = true;

					if (up_down && special_pressed){
						set_attack(AT_USPECIAL);
					}
				}

				draw_x = round(spr_angle / 1.25);
				draw_y = -round(abs(spr_angle) / 6);
				spr_angle = dair_angle;
				set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 15 * sin(dair_angle * pi/180) * spr_dir); //change 20 to the desired speed of the gp
				set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 15 * cos(dair_angle * pi/180)); //change 20 to the desired speed of the g

				if(!free){
					window = 3;
					window_timer = 0;
				}

				break;
			case 3:
				can_move = false;
				hsp = 0;
				draw_x = 0;
				draw_y = 0;
				spr_angle = 0;
				if(window_timer == 1 && !hitpause)
				{
					shake_camera(6, 8);
				}
				break;
		}
		break;
		case AT_NSPECIAL:
			can_fast_fall = false;
		break;
		case AT_DSPECIAL:
			if vsp > 0{
				vsp = clamp(vsp - 0.2, 0, 3);
			}
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				
				if (instance_exists(active_minion)){
					active_minion.state = "DEATH";
				}
				active_minion = instance_create(round(x + hsp), round(y + vsp), "obj_article1");
				active_minion.minion_number = minion_number;
				active_minion.spr_dir = spr_dir;
				
				minion_number = (minion_number + 1) % 7;
				next_item_tossed = random_func(0, 5, true);

				move_cooldown[AT_DSPECIAL] = 120;
			}
			can_fast_fall = false;
			can_move = false
		break;

		case AT_DSPECIAL_AIR:
			can_fast_fall = false;

			if (window == 2){
				cameFromNspecial = false;
				if (has_hit_player){

					if (!hitpause){
						window = 4;
						window_timer = 0;
						djumps = 0;
					} else {
						hit_player_obj.x = ease_linear(x + 16 * spr_dir, hit_player_obj.x, round(hit_player_obj.hitstop), round(hit_player_obj.hitstop_full));
						hit_player_obj.y = ease_linear(y + 125 + round(char_height/2), hit_player_obj.y, round(hit_player_obj.hitstop), round(hit_player_obj.hitstop_full)); // + round(hit_player_obj.char_height/2)
					}

				} else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					
					window = 3;
					window_timer = 0;
				}
			}

			//if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//	set_state(PS_PRATFALL);
			//}

			if (window == 4 && has_hit_player && instance_exists(hit_player_obj)){
				can_move = false;
				hsp = 0;
				vsp = 0;

				hit_player_obj.hitpause = true;
				hit_player_obj.hitstop = 2;

				if (window_timer > 0 && window_timer < 5){
					hit_player_obj.x = x + 16 * spr_dir;
					hit_player_obj.y = y + 125 + round(char_height/2);
				}

				if (window_timer >= 5 && window_timer < 10){
					hit_player_obj.x = x + 26 * spr_dir;
					hit_player_obj.y = y + 44 + round(char_height/2);
				}

				if (window_timer >= 10 && window_timer < 15){
					hit_player_obj.x = x + 32 * spr_dir;
					hit_player_obj.y = y - 40 + round(char_height/2);
				}

				if (window_timer >= 15 && window_timer < 20){
					hit_player_obj.x = x + 35 * spr_dir;
					hit_player_obj.y = y - 110 + round(char_height/2);
				}

				if (window_timer >= 20 && window_timer < 25){
					hit_player_obj.x = x + 35 * spr_dir;
					hit_player_obj.y = y - 106 + round(char_height/2);
				}

				if (window_timer >= 25){
					hit_player_obj.x = x + 35 * spr_dir;
					hit_player_obj.y = y - 102 + round(char_height/2);
				}

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					hit_player_obj.grabbed_invisible = true;
					hit_player_obj.x = x;
					hit_player_obj.y = y;
				}
			}

			if (window == 5 && has_hit_player && instance_exists(hit_player_obj)){
				can_move = false;
				hsp = 0;
				vsp = 0;

				if (window_timer < 5){
					hit_player_obj.grabbed_invisible = true;
					hit_player_obj.x = x;
					hit_player_obj.y = y;

					hit_player_obj.hitpause = true;
					hit_player_obj.hitstop = 2;
				}

				if (window_timer == 5){
					hit_player_obj.x = x - 36 * spr_dir;
					hit_player_obj.y = y - 98 + round(char_height/2);
					hit_player_obj.hurtboxID.x = x - 36 * spr_dir;
					hit_player_obj.hurtboxID.y = y - 98 + round(char_height/2);

					hit_player_obj.hitpause = true;
					hit_player_obj.hitstop = 2;
				}

				if (has_rune("I") && !free && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					set_state(PS_IDLE);
				}
			}

			if (!free && cameFromNspecial == false){
            	landing_lag_time = get_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG);
            	set_state(PS_LANDING_LAG);
        	}
		break;

		case AT_USPECIAL:
			can_move = false;
			if (window == 1){
				rising = true;
				hsp *= 0.5;
				vsp *= 0.5;
				vsp -= 0.5;
			}
			if (window == 2){
				
				if (cameFromTaunt){
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
				} else {
					hsp = 0;
					vsp = 0;
				}

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					set_victory_theme(sound_get("headVictory")); 
					stance = "pizzahead";
					hurtbox_spr = sprite_get("pizzahead_hurtbox");
					crouchbox_spr = sprite_get("pizzahead_crouchbox");
					mask_index = sprite_get("pizzahead_mask");
					air_hurtbox_spr = -1;
					hitstun_hurtbox_spr = -1;
					set_ui_element(UI_HUD_ICON, sprite_get("pizzahead_hud"));
					set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzahead_hurt_hud"));
					set_ui_element(UI_OFFSCREEN, sprite_get("pizzahead_offscreen"));
					sprite_change_offset("plat", 75, 112);
					
					char_height = 95;
					idle_anim_speed = .23;
					crouch_anim_speed = .2;
					walk_anim_speed = .37;
					dash_anim_speed = .27;
					pratfall_anim_speed = .25;
					crouch_startup_frames = 2;
					crouch_active_frames = 1;
					crouch_recovery_frames = 2;
					
					walk_speed = 4.00;
					walk_accel = 0.5;
					walk_turn_time = 6;
					initial_dash_time = 8;
					initial_dash_speed = 9;
					dash_speed = 7;
					dash_turn_time = 8;
					dash_turn_accel = 2;
					dash_stop_time = 6;
					dash_stop_percent = 0.5; //the value to multiply your hsp by when going into idle from dash or dashstop
					ground_friction = .5;
					moonwalk_accel = 1.3;
					
					jump_start_time = 5;
					jump_speed = 12;
					short_hop_speed = 5.5;
					djump_speed = 10;
					leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
					max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
					air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
					jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
					air_accel = 0.3;
					prat_fall_accel = 1; //multiplier of air_accel while in pratfall
					air_friction = 0.02;
					max_djumps = 1;
					double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
					walljump_hsp = 7;
					walljump_vsp = 8;
					walljump_time = 30;
					max_fall = 11; //maximum fall speed without fastfalling
					fast_fall = 16; //fast fall speed
					gravity_speed = 0.6;
					hitstun_grav = 0.5;
					knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
					
					land_time = 4; //normal landing frames
					prat_land_time = 12;
					wave_land_time = 8;
					wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
					wave_friction = 0.05; //grounded deceleration when wavelanding
					
					//airdodge animation frames
					air_dodge_startup_frames = 1;
					air_dodge_active_frames = 2;
					air_dodge_recovery_frames = 2;
					air_dodge_speed = 9;
	
					//parry animation frames
					dodge_startup_frames = 1;
					dodge_active_frames = 6;
					dodge_recovery_frames = 5;
					
					//tech animation frames
					tech_active_frames = 3;
					tech_recovery_frames = 2;

					//tech roll animation frames
					techroll_startup_frames = 1
					techroll_active_frames = 4;
					techroll_recovery_frames = 3;
					techroll_speed = 10;

										//roll animation frames
					roll_forward_startup_frames = 1;
					roll_forward_active_frames = 4;
					roll_forward_recovery_frames = 3;
					roll_back_startup_frames = 1;
					roll_back_active_frames = 4;
					roll_back_recovery_frames = 3;
					roll_forward_max = 9; //roll speed
					roll_backward_max = 9;
					
					land_sound = asset_get("sfx_land_med");
					landing_lag_sound = asset_get("sfx_land");
					waveland_sound = asset_get("sfx_waveland_zet");
					jump_sound = sound_get("sfx_jump");
					djump_sound = sound_get("pizzaheadjump");
					air_dodge_sound = asset_get("sfx_quick_dodge");
					

					hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");
					if (cameFromTaunt){
						clear_button_buffer(PC_TAUNT_PRESSED);
						sound_stop(sound_get("sfx_explosion"));
						if (free){
							set_state(PS_IDLE_AIR);
						} else {
							set_state(PS_IDLE);
						}
					} else {

						create_hitbox(AT_USPECIAL, 1, x, y - 60);
						spawn_hit_fx(x - (16 * spr_dir), y + 16, uspecialBoom);
						var bit_number = 3 + random_func_2(get_gameplay_time() % 200, 5, true);
						for (var b = 0; b < bit_number; b++){
							bits[b] = spawn_hit_fx(x, y, hit_fx_create(sprite_get("pizzabits" + string(random_func_2((get_gameplay_time() + (b * 10)) % 200, 11, true))), 120));
							var bit_angle = ((360 / bit_number) * b) + random_func_2((get_gameplay_time() + 100) % 200, 30, true) - 15;
							bits[b].hsp = lengthdir_x(10, bit_angle);
							bits[b].vsp = lengthdir_y(10, bit_angle);
						}

						vsp = -20 + (has_rune("D") * -5);
					}
				}
			}
			if window == 3{
				can_wall_jump = true;
				
				//draw_y = -100;
				spr_angle = (state_timer * 20 * -spr_dir) % 360;
				can_move = true;
				
				hsp += right_down + (left_down * -1);
				hsp = clamp(hsp, -air_max_speed, air_max_speed);

				if (!free){
					spr_angle = 0;
					sound_play(sound_get("ground_hit"));

					if (right_down && !left_down){
						hsp = air_max_speed;
					}
					if (left_down && !right_down){
						hsp = -air_max_speed;
					}

					set_attack(AT_USPECIAL_GROUND);
				}
			}
			break;
			
			case AT_DSTRONG_2:
            if (window == 2 && window_timer == 3){
                shake_camera(4, 10);


                /*with (oPlayer){ use this for a Rune or something
                    if (self != other && free == false){
                        with (other){
                            create_hitbox(AT_DSTRONG_2, 2, other.x, other.y - round(other.char_height/2));
                        }
                    }
                }*/
            }
		
		break;

		case AT_USPECIAL_GROUND:
            spr_angle = 0;

			if (!was_parried){
				if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window == 3 || window == 4){
                	iasa_script();
                	if window == 3 && window_timer == 1{
                	    if (get_gameplay_time() % 2 == 0){
                	      sound_play(sound_get("Pizzahead3"), false, false, 1, 1 - (0.05 * random_func_2(get_gameplay_time() % 200, 6, true)));
                	    } else {
                	      sound_play(sound_get("Pizzahead1"), false, false, 1, 1 - (0.05 * random_func_2(get_gameplay_time() % 200, 6, true)));    
                	    }
                	}
            	}
			} else {
				//nothing
			}
			
        break;

		case AT_TAUNT_2:
			if (window == 2 && sprite_index != sprite_get("rizzahead") && sprite_index != sprite_get("rizzaheadSketch")){

				if (window_timer == 1){
					if (random_func(0, 2, true) % 2 == 0){
                    	sound_play(sound_get("Pizzahead3"), false, false, 1, 1 - (0.05 * random_func_2(get_gameplay_time() % 200, 6, true)));
                	} else {
                    	sound_play(sound_get("Pizzahead1"), false, false, 1, 1 - (0.05 * random_func_2(get_gameplay_time() % 200, 6, true)));    
                	}
				}

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down){
					window_timer = 0;
				}
			}

		break;

		case AT_DSPECIAL_2:
			switch (window){

			case 1:

				if (window_timer < 18 && b_reversed == false){
            		if (spr_dir == 1 && left_down){
            		    spr_dir = -1;
            		    b_reversed = true;
            		}

            		if (spr_dir == -1 && right_down){
            		    spr_dir = 1;
            		    b_reversed = true;
            		}
        		}
				

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){

					switch (next_item_tossed){
						//TV Throw
						case 0:
							window = 2;
							window_timer = 0;
							hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");
						break;

						//Rat throw
						case 1:
							window = 19;
							window_timer = 0;
							hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");
						break;

						//Uzi
						case 2:
							window = 8;
							window_timer = 0;
							hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");
							times_through = 0;
						break;

						//Fork Knights
						case 3:
							window = 12;
							window_timer = 0;
							hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");

							towerX = x;
							towerY = y;
							towerLifetime = 0;
							towerSprDir = spr_dir;
						break;

						//Dynamite
						case 4:
							window = 17;
							window_timer = 0;
							hurtboxID.sprite_index = sprite_get("pizzahead_hurtbox");
						break;
					}

					current_item_tossing = next_item_tossed;
					attempts = 0;
					
					next_item_tossed = random_func(0, 5, true);
					minion_number = (minion_number + 1) % 7;

					while (next_item_tossed == current_item_tossing && attempts < 30){
						next_item_tossed = random_func_2(attempts, 5, true);
						attempts += 1;
					}

				}
            break;

			//TV Throw
			case 4:
				hud_offset = 84;

				if (window_timer == 3){
					pizzaHeadTV = instance_create(x + 30 * spr_dir, y - 20, "obj_article2");
				}
			break;

			//Uzi pause
			case 9:

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					var uziAngle = 180 + (sin(times_through * 0.5) * 15);

    				var uziX = lengthdir_x(10, uziAngle);
    				var uziY = lengthdir_y(10, uziAngle);

					var uziBullet = create_hitbox(AT_DSPECIAL_2, 2, x + 5 * spr_dir, y - 78);
            		uziBullet.hsp = uziX * spr_dir;
            		uziBullet.vsp = uziY;
            		sound_play(sound_get("sfx_killingblow"), false, noone, 1, 2);

					times_through += 1;
				}

			break;

			//Uzi loop
			case 10:

				can_shield = true;

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					if (times_through != 20){
						var uziAngle = 180 + (sin(times_through * 0.5) * 15);

    					var uziX = lengthdir_x(10, uziAngle);
    					var uziY = lengthdir_y(10, uziAngle);

						var uziBullet = create_hitbox(AT_DSPECIAL_2, 2, x + 6 * spr_dir, y - 76);
            			uziBullet.hsp = uziX * spr_dir;
            			uziBullet.vsp = uziY;
            			sound_play(sound_get("sfx_killingblow"), false, noone, 1, 2);

						window_timer = 0;
						times_through += 1;
					} else {

						var uziGun = create_hitbox(AT_DSPECIAL_2, 3, x - 15 * spr_dir, y - 50);
            			sound_play(asset_get("sfx_swipe_weak1"), false, noone, 1, 1);

						window = 11; //Item toss
						window_timer = 0;
					}
				}

			break;

			//Knight Startup
			case 12:
				shake_camera(3, 3);

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					for (var l = 0; l < 8; l += 1){
						var bottom = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
						var randomX = get_stage_data(SD_X_POS) + random_func_2(l, get_stage_data(SD_WIDTH), true)

						var dyingKnight = create_hitbox(AT_DSPECIAL_2, 4, randomX, bottom);
						dyingKnight.vsp = get_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_VSPEED) + (random_func_2(l + 1, 6, false) - 4);
						dyingKnight.knightBounced = false;
						dyingKnight.prevVsp = vsp;
						dyingKnight.max_fall = 30;

					}

				}
			break;

			//Dynamite throw
			case 18:

			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				for (var a = 0; a < 4; a += 1){

					var dynamiteToss = create_hitbox(AT_DSPECIAL_2, 6, x - 5 * spr_dir, y - 50);
					dynamiteToss.hsp = spr_dir * (get_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_HSPEED) - (random_func_2(a, 5, false)));
					dynamiteToss.vsp = (get_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_VSPEED) - (random_func_2(a + 1, 3, false)) - a);
					dynamiteToss.length = (get_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME) + (a * 3));

				}

				window = 11; //Item toss
				window_timer = 0;
			}

			break;

			//Rat throw
			case 21:

				if (window_timer == 18){
					var ratThrow = create_hitbox(AT_DSPECIAL_2, 9, x - 25 * spr_dir, y - 50);
					ratThrow.prevVsp = get_hitbox_value(AT_DSPECIAL_2, 9, HG_PROJECTILE_VSPEED);
				}

			break;

			}


		break;
		
		case AT_EXTRA_1: // pizzahead jab

			if (window == 4 && attack_pressed && !hitpause){

				if (down_down){
					set_attack(AT_EXTRA_4);
					hurtboxID.sprite_index = sprite_get("pizzahead_dtilt_hurt");
				}
				if (up_down){
					set_attack(AT_EXTRA_5);
					hurtboxID.sprite_index = sprite_get("pizzahead_utilt_hurt");
					hsp += 5.5 * spr_dir;
				}
				if (left_down || right_down){
					set_attack(AT_EXTRA_3);
					hurtboxID.sprite_index = sprite_get("pizzahead_ftilt2_hurt");
					sound_play(asset_get("sfx_swipe_medium1"));
				}
				if (!down_down && !up_down && !left_down && !right_down){
					window_timer = 0;
					window = 6;
				}
				
			}

			if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				window_timer = 0;
				window = get_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS) + 1;
			}

		break;

		case AT_EXTRA_4: //pizzahead dtilt
		
			if (!was_parried && window == get_attack_value(AT_EXTRA_4, AG_NUM_WINDOWS) && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) *  (1 + (!has_hit * 0.5)))){
				set_state(PS_CROUCH);
				state_timer = 4;
				hurtboxID.sprite_index = crouchbox_spr;
			}

		break;

		case AT_UTHROW: // pizzahead uair
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				hud_offset = 58;
			}

			if (window == 2){
				hud_offset = 58;

				if (has_hit_player && instance_exists(hit_player_obj) && hit_player_obj.last_hbox_num == 2 && hit_player_obj.state_cat == SC_HITSTUN && hitpause && !hit_player_obj.activated_kill_effect){
					hit_player_obj.x = ease_linear(x + 8*spr_dir, hit_player_obj.x, round(hit_player_obj.hitstop), round(hit_player_obj.hitstop_full));
					hit_player_obj.y = ease_linear(y - 108, hit_player_obj.y, round(hit_player_obj.hitstop), round(hit_player_obj.hitstop_full)); // + round(hit_player_obj.char_height/2)
					//hit_player_obj.hitstop = 1;
				}
			}
		break;

		case AT_USPECIAL_2: // pizzahead up special
			can_move = false;
			can_fast_fall = false;

			if (window == 1){
				hud_offset = 25;

        		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){

        		    var tpAngle = 90*spr_dir;
        		    if (!joy_pad_idle){
        		        tpAngle = round(joy_dir/45)*45;
        		    }

					//This "205" number is the distance the teleport travels
        		    xprev = round(lengthdir_x(205 + (has_rune("D") * 100), tpAngle));
        		    yprev = round(lengthdir_y(205 + (has_rune("D") * 100), tpAngle));

						//This is to prevent you from teleporting into the stage
						if(place_meeting(x + xprev, y + yprev, asset_get("par_block"))) {
        		    	    var tp_dest = stage_collide_alt(x, y, x + xprev, y + yprev, 8);
							xprev = tp_dest[0];
        		    	    yprev = tp_dest[1];
						} else {
							xprev = x + xprev;
							yprev = y + yprev;
						}
					
					
        		}
    		}

			if (window == 2){
				if (cameFromTaunt){
					window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
				}
				draw_indicator = false;
				invincible = true;

				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					
					invincible = false;
					sprite_change_offset("pizzahead_uspecial", 48, 100, true);
					if (!cameFromTaunt){
						x = xprev;
            			y = yprev;
					}

					stance = "pizzaface";
					set_victory_theme(sound_get("faceVictory")); 
					hurtbox_spr = sprite_get("pizzaface_hurtbox");
					crouchbox_spr = sprite_get("pizzaface_crouchbox");
					mask_index = sprite_get("pizzaface_mask");
					air_hurtbox_spr = -1;
					hitstun_hurtbox_spr = -1;
					set_ui_element(UI_HUD_ICON, sprite_get("pizzaface_hud"));
					set_ui_element(UI_HUDHURT_ICON, sprite_get("pizzaface_hurt_hud"));
					set_ui_element(UI_OFFSCREEN, sprite_get("pizzaface_offscreen"));
					sprite_change_offset("plat", 71, 110);

					char_height = 95;
					idle_anim_speed = .28;
					crouch_anim_speed = .2;
					walk_anim_speed = .125;
					dash_anim_speed = .23;
					pratfall_anim_speed = .25;
					crouch_startup_frames = 4;
					crouch_active_frames = 1;
					crouch_recovery_frames = 3;

					walk_speed = 3.00;
					walk_accel = 0.25;
					walk_turn_time = 6;
					initial_dash_time = 8;
					initial_dash_speed = 7;
					dash_speed = 5.75;
					dash_turn_time = 10;
					dash_turn_accel = 1.5;
					dash_stop_time = 4;
					dash_stop_percent = 0.25; //the value to multiply your hsp by when going into idle from dash or dashstop
					ground_friction = .5;
					moonwalk_accel = 1.3;

					jump_start_time = 5;
					jump_speed = 12;
					short_hop_speed = 5.5;
					djump_speed = 11;
					leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
					max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
					air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
					jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
					air_accel = 0.25;
					prat_fall_accel = 1; //multiplier of air_accel while in pratfall
					air_friction = 0.04;
					max_djumps = 1;
					double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
					walljump_hsp = 5;
					walljump_vsp = 10;
					walljump_time = 30;
					max_fall = 9; //maximum fall speed without fastfalling
					fast_fall = 14; //fast fall speed
					gravity_speed = 0.55;
					hitstun_grav = 0.5;
					knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

					land_time = 4; //normal landing frames
					prat_land_time = 12;
					wave_land_time = 8;
					wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
					wave_friction = 0.05; //grounded deceleration when wavelanding

					//crouch animation frames


					//parry animation frames
					dodge_startup_frames = 1;
					dodge_active_frames = 8;
					dodge_recovery_frames = 4;

					//tech animation frames
					tech_active_frames = 4;
					tech_recovery_frames = 3;

					//tech roll animation frames
					techroll_startup_frames = 2
					techroll_active_frames = 13;
					techroll_recovery_frames = 2;
					techroll_speed = 10;

					//airdodge animation frames
					air_dodge_startup_frames = 1;
					air_dodge_active_frames = 6;
					air_dodge_recovery_frames = 2;
					air_dodge_speed = 8.5;

					//roll animation frames
					roll_forward_startup_frames = 2;
					roll_forward_active_frames = 13;
					roll_forward_recovery_frames = 2;
					roll_back_startup_frames = 2;
					roll_back_active_frames = 13;
					roll_back_recovery_frames = 2;
					roll_forward_max = 9; //roll speed
					roll_backward_max = 9;

					land_sound = asset_get("sfx_land_med");
					landing_lag_sound = asset_get("sfx_land");
					waveland_sound = asset_get("sfx_waveland_zet");
					jump_sound = sound_get("sfx_jump");
					djump_sound = sound_get("pizzafacejump");
					air_dodge_sound = asset_get("sfx_quick_dodge");

					//visual offsets for when you're in Ranno's bubble
					bubble_x = 0;
					bubble_y = 8;

					if (cameFromTaunt){
						clear_button_buffer(PC_TAUNT_PRESSED);
						if (free){
							set_state(PS_IDLE_AIR);
						} else {
							set_state(PS_IDLE);
						}
					}
				}

			}

			if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (free){
					set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);
				} else {
					set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 0);
				}
			}
		break;
}


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL_2){
    trigger_b_reverse();
}

#define ledge_snap(maximum) {
var step = maximum; //the maximum distance to move up from the ledge. must be a power of 2. '16' or '32' is recommended.
var xx = x + spr_dir; //use 'xx = x - spr_dir' if the attack moves backwards.

var par_block = asset_get("par_block");
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block))
    return false;

var n = 0;
while(n<maximum)
{
    y--;
    if(!place_meeting(xx, y, par_block))
    {
        x = xx;
        return true;
    }
    n++;
}
y += maximum;
return false;

}


#define stage_collide_alt {
    //Script by Deor
    
    var x1 = argument[0];
    var y1 = argument[1];
    var x2 = argument[2];
    var y2 = argument[3];
    var prec = argument[4];
    
    var qpu_x = (x2 - x1) / prec;
    var qpu_y = (y2 - y1) / prec;
    var x_ = x2;
    var y_ = y2;
    
    for(var i = 1; i < prec; i++) {
        if(place_meeting(x2 - qpu_x * i, y2 - qpu_y * i, asset_get("par_block"))) {
            x_ = x2 - qpu_x * i;
            y_ = y2 - qpu_y * i;
        }
    }
    
    if(x_ != x2 && y_ != y2) {
        return stage_collide_alt(x1, y1, x_, y_, prec);
    }
        
    else {
        return [x2 - qpu_x, y2 - qpu_y];
    }
}

#define CreateAfterimage(imgLength)
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:image_angle, col:_color, timer:0, timerMax:imgLength};
}
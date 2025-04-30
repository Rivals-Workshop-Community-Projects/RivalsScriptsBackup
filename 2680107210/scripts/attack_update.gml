var ct = current_time;
//Attack update

switch(attack)
{
//Specials
	case AT_NSPECIAL:
	{
		if(state_timer % 8 == 1 && window == clamp(window, 1, 2))
		{
			var t_x = x + random_func(player + 2, 300, true) - 150;
			var t_y = y + spr_char_center + (random_func(player + 4, 24, true) - 12);
			
			var t_angle = point_direction(t_x, t_y, x, y + spr_char_center);
			var t_vel = abs(point_distance(t_x, t_y, x, y + spr_char_center) / (dspecial_fx_length * 2 / 3));
			
			var t_hsp = t_vel * dcos(t_angle);
			var t_vsp = t_vel * dsin(t_angle);
			
			spawn_rune_fx(t_x, t_y, dspecial_fx_length * 2 / 3, t_hsp, t_vsp, random_func(player + 6, 9, true) + 0 + 1, 2, 1, 0);
		}
		trigger_b_reverse();
		switch(window)
		{
			case 1:
			{
				if(window_timer == 0)
				{
					nspecial_release_angle = 0; //0 = neutral, 1 = up, 2 = down, 3 = straight
				}
				
				if(window_timer == 4)
				{
					sound_play(a_sfx_frog_dspecial_swallow);
				}
				
				if(up_down) nspecial_release_angle = 2;
				else if(down_down) nspecial_release_angle = 0;
				else if(nspecial_release_angle != 3) nspecial_release_angle = 1;
				
				if(window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) - 1 && !special_down)
				{
					if(nspecial_storage_level == 3)
					{
						nspecial_release_angle = 3;
						window = 7;
						window_timer = 0;
					}
					else
					{
						window = 3;
						window_timer = 0;
					}
				}
				break;
			}
			case 2:
			{
				if(shield_pressed)
				{
					window = 8;
					window_timer = 0;
					clear_button_buffer(PC_SHIELD_PRESSED);
					break;
				}
				
				if(up_down) nspecial_release_angle = 2;
				else if(down_down) nspecial_release_angle = 0;
				else if(nspecial_release_angle != 3) nspecial_release_angle = 1;
				
				if(!special_down && nspecial_storage_level != 3)
				{
					window = 3;
					window_timer = 0;
					break;
				}
				
				if(window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) - 1 && (special_down || nspecial_storage_level == 3))
				{
					if(nspecial_storage_level == 3)
					{
						nspecial_release_angle = 3;
						window = 7;
						window_timer = 4;
						break;
					}
					else
					{
						nspecial_storage_level = min(nspecial_storage_level + 1, 3);
						white_flash_timer = 8;
						sound_play(a_sfx_boss_fireball, false, noone, 1.0, 1.0 * power((7 / 8) * sqrt(2), nspecial_storage_level));
						break;
					}
				}
				break;
			}
			case 3:
			{
				if(window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) - 1)
				{
					//window = 4 + nspecial_storage_level;
					
					nspecial_release_angle = nspecial_storage_level;
					window = nspecial_angle_to_window[nspecial_release_angle];
					window_timer = 0;
				}
				else
				{
					if(up_down) nspecial_release_angle = 2;
					else if(down_down) nspecial_release_angle = 0;
					else if(nspecial_release_angle != 3) nspecial_release_angle = 1;
				}
				break;
			}
			case 4:
			case 5:
			case 6:
			case 7:
			{
				if(window == nspecial_angle_to_window[nspecial_release_angle] && window_timer == nspecial_spawn_frame[nspecial_storage_level])
				{
					for(var i = 0; i < 3; i++)
					{
						var rand_dir = nspecial_spawn_angles[nspecial_storage_level] + random_func((player + 9 * i) % 24, 40, true) - 20;
						
						var t_hsp = dcos(rand_dir) * 6.5 * spr_dir;
						var t_vsp = dsin(rand_dir) * -6.5;
						
						spawn_rune_fx(x + nspecial_spawn_x[nspecial_storage_level] * spr_dir, y + nspecial_spawn_y[nspecial_storage_level], dspecial_fx_length * 1 / 3, t_hsp, t_vsp, random_func((player + 7 * i) % 24, 8, true) + 0 + 1, 2, 2, 1);
					}
					
					var cur_nspecial_max_projectiles = nspecial_max_projectiles;
						
					nspecial_max_projectiles = lerp(nspecial_max_projectiles, max(nspecial_max_projectiles, nspecial_storage_level + 1 + nspecial_current_projectiles), active_runes[? "M"] && nspecial_current_projectiles < nspecial_max_projectiles);
					
					nspecial_storage_level += 1;
					while(nspecial_storage_level > 0 && nspecial_current_projectiles < nspecial_max_projectiles)
					{
						nspecial_storage_level -= 1;
						spawn_nspecial(nspecial_release_angle, nspecial_storage_level);
						nspecial_release_angle = (nspecial_release_angle + 1) % 3;
						if(!active_runes[? "M"])
						{
							nspecial_storage_level = 0;
							nspecial_release_angle = 1;
						}
					}
					nspecial_storage_level = 0;
					nspecial_max_projectiles = cur_nspecial_max_projectiles;
					sound_play(a_sfx_boss_vortex_end);
				}
				
				/*if(window == 7 && window_timer == nspecial_spawn_frame[nspecial_storage_level] - 1 && phone_cheats[CHEAT_NSPECIAL_BUG_1] == 1)
				{
					y = 388;
					vsp = 3.75;
				}*/
				break;
			}
			case 8:
			{
				if(window_timer == 1)
				{
					sound_play(a_sfx_burnend);
				}
				break;
			}
		}
		break;
	}
	case AT_FSPECIAL:
	{
		can_move = (window == clamp(window, 1, 2) || window == clamp(window, 5, 8));
		can_fast_fall = false;
		can_wall_jump = (window == 5);
		
		switch(window)
		{
			case 1:
			{
				if(state_timer % 8 == 1)
				{
					
					var t_x = x + 40 * spr_dir + random_func(player + 2, 300, true) - 150;
					var t_y = y + spr_char_center + (random_func(player + 4, 24, true) - 12);
					
					var t_angle = point_direction(t_x, t_y, x + 40 * spr_dir, y + spr_char_center);
					var t_vel = abs(point_distance(t_x, t_y, x + 40 * spr_dir, y + spr_char_center) / (dspecial_fx_length * 2 / 3));
					
					var t_hsp = t_vel * dcos(t_angle);
					var t_vsp = t_vel * dsin(t_angle);
					
					spawn_rune_fx(t_x, t_y, dspecial_fx_length * 2 / 3, t_hsp, t_vsp, random_func(player + 6, 9, true) + 9 + 1, 2, 4, 0);
				}
				
				//Somehow, when transitioning from grounded to aerial, gravity is applied for a frame (windows 3-5)
				vsp = 0;
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				
				//Vanda is using the move too close to the edge of the stage. Automatically go into attack
				if(current_index < get_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES) && state == PS_ATTACK_AIR)
				{
					window = 2;
					window_timer = 0;
				}
				
				//Hold down special to pause in the handstand -- this mixes up the timing
				if(window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) - 1 && special_down)
				{
					window = 7;
					window_timer = 0;
				}
				break;
			}
			case 2:
			{
				vsp = 0;
				
				if(window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH) - 1)
				{
					set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
				}
				else
				{
					set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				}
				
				if(window_timer == 1 && !hitpause)
				{
					sound_play(a_sfx_bird_sidespecial_start);
				}
				break;
			}
			case 3:
			{
				if(window_timer == 1 && !hitpause)
				{
					hsp = hsp * (2 / 3);
				}
				
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
				
				if(rune_c_special_down)
				{
					vsp = min(0, vsp);
					hsp = 0;
				}
				
				if(!rune_c_special_down && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) - 1 && up_down && !was_parried)
				{
					set_attack(AT_FSPECIAL_AIR);
					window = 2;
					window_timer = 0;
					hsp = get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED) * spr_dir * 0.75;
					vsp = get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED);
					state_timer = get_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH) + 8;
					fspecial_used_nspecial = false;
					fspecial_stall_accumulator = 0;
					fspecial_stall_accumulator_old = 0;
				}
				else if(rune_c_special_down && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) - 1 && !was_parried)
				{
					attack_end();
					window = 4;
					window_timer = 1;
					create_hitbox(AT_FSPECIAL, 2, x, y);
					sound_play(a_sfx_swipe_medium1);
					//create_hitbox(AT_FSPECIAL, 2, x, y);
				}
				
				break;
			}
			case 4:
			{
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				if(active_runes[?"C"])
				{
					if(!special_down)
					{
						rune_c_special_down = false;
					}
					if(rune_c_special_down && !was_parried)
					{
						vsp = 0;
						hsp = 0;
						if(window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH) - 1)
						{
							attack_end();
							window = 3;
							window_timer = 2;
						}
					}
				}
				break;
			}
			case 5:
			{
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				
				if(!free)
				{
					window = 6;
					window_timer = 0;
				}
				break;
			}
			case 6:
			{
				vsp = 0;
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				
				if(window_timer == 1 && !hitpause)
				{
					sound_play(a_sfx_zetter_downb);
				}
				
				if(window_timer == 1)
				{
					sound_stop(s_fspecial_ground);
				
					for(var i = 0; i < 4; i++)
					{
						var rand_dir = random_func((player + 9 * i) % 24, 30, true) - 15 + 30 * i;
						
						var t_hsp = dcos(rand_dir) * 6.5 * abs(dcos(rand_dir)) * spr_dir;
						var t_vsp = dsin(rand_dir) * -6.5 * abs(dcos(rand_dir));
						
						spawn_rune_fx(x + 52 * spr_dir, y - 6, dspecial_fx_length * 1 / 3, t_hsp, t_vsp, random_func((player + 7 * i) % 24, 8, true) + 9 + 1, 2, 3, 1);
					}
				
				}
				break;
			}
			case 7:
			{
				if(state_timer % 8 == 1)
				{
					
					var t_x = x + 40 * spr_dir + random_func(player + 2, 300, true) - 150;
					var t_y = y + spr_char_center + (random_func(player + 4, 24, true) - 12);
					
					var t_angle = point_direction(t_x, t_y, x + 40 * spr_dir, y + spr_char_center);
					var t_vel = abs(point_distance(t_x, t_y, x + 40 * spr_dir, y + spr_char_center) / (dspecial_fx_length * 2 / 3));
					
					var t_hsp = t_vel * dcos(t_angle);
					var t_vsp = t_vel * dsin(t_angle);
					
					spawn_rune_fx(t_x, t_y, dspecial_fx_length * 2 / 3, t_hsp, t_vsp, random_func(player + 6, 9, true) + 9 + 1, 2, 4, 0);
				}
				vsp = 0;
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				
				//Press shield, hold down, or hold special until the end of the window to feint the attack
				if((window_timer == get_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH) - 1 && special_down) || down_down || shield_pressed)
				{
					if(active_runes[?"C"])
					{
						window = 2;
						window_timer = 0;
						rune_c_special_down = true;
					}
					else
					{
						window = 8;
						window_timer = 0;
						if(down_down || shield_pressed)
						{
							sound_play(a_sfx_burnend);
						}
					}
				}
				//Let go of special and attack
				else if(!special_down && window_timer <= get_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH) - 1)
				{
					window = 2;
					window_timer = 0;
				}
				break;
			}
			case 8:
			{
				vsp = 0;
				if(window_timer == 1 && true)
				{
					sound_stop(s_fspecial_ground);
				}
				set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
				break;
			}
		}
		
		break;
	}
	case AT_FSPECIAL_AIR:
	{
		fspecial_stall_accumulator_old = fspecial_stall_accumulator;
		can_fast_fall = false;
		can_move = false;
		
		can_wall_jump = false;
		
		can_shield = false;
		can_jump = false;
		can_attack = false;
		switch(window)
		{
			case 1: //Standard startup
			{
				if(window_timer == 1)
				{
					fspecial_used_nspecial = false;
					fspecial_friction_frames_remaining = fspecial_friction_frames;
					//sound_play(s_fspecial_air);
				}
				else if(window_timer == 4)
				{
					sound_play(a_sfx_bird_sidespecial_start);
				}
				/*if(window_timer <= fspecial_friction_frames)
				{
					
					if(hsp == 0) var hsp_sign = 1;
					else var hsp_sign = hsp / abs(hsp);
					if(vsp == 0) var vsp_sign = 1;
					else var vsp_sign = vsp / abs(vsp);
					hsp = (abs(hsp) - (abs(hsp) / fspecial_friction_frames_remaining)) * hsp_sign;
					vsp = (abs(vsp) - (abs(vsp) / fspecial_friction_frames_remaining)) * vsp_sign;
					fspecial_friction_frames_remaining = max(0, fspecial_friction_frames_remaining - 1);
				}*/ //Currently there is a bug where Vanda's velocity is totally stopped, even
				//when it should not. Once this is fixed, we can add a custom friction script
				break;
			}
			case 2:
			{
				//Specific to window 2
				if(window_timer == 1)
				{
					for(var i = 0; i < 4; i++)
					{
						var rand_dir = random_func((player + 9 * i) % 24, 160, true) - 80;
						rand_dir += point_direction(0, 0, spr_dir, 0);
						
						var t_hsp = dcos(rand_dir) * 5;
						var t_vsp = dsin(rand_dir) * 5;
						
						spawn_rune_fx(x - 32 * spr_dir, y - 32, dspecial_fx_length * 4 / 3, t_hsp, t_vsp, random_func((player + 7 * i) % 24, 8, true) + 9 + 1, 2, 3, 1);
					}
				}
				
				if(window_timer == get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH) - 1)
				{
					hsp = get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED) * spr_dir * 0.75;
					vsp = get_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED);
				}
			}
			case 3:
			{
				//Specific to windows 2 and 3
				if(hsp * spr_dir < 0)
				{
					spr_dir *= -1;
				}
				
				if(state_timer == 30)
				{
					sound_play(a_sfx_owl0);
					fspecial_playing_swoosh = true;
				}
				
				if(state_timer % 10 == 0)
				{
					var rand_dir = random_func(player + 2, 80, true) - 40;
					rand_dir += point_direction(0, 0, hsp, vsp);
					
					var t_hsp = dcos(rand_dir) * sqrt(point_distance(0, 0, hsp, vsp));
					var t_vsp = dsin(rand_dir) * sqrt(point_distance(0, 0, hsp, vsp));
					
					spawn_rune_fx(x - 32 * spr_dir, y - 32, dspecial_fx_length, t_hsp, t_vsp, random_func(player + 6, 8, true) + 9 + 1, 2, 3, 1);
				}
				
				can_fast_fall = false;
				can_wall_jump = true;
				
				if(state_timer == fspecial_cancel_frame)
				{
					white_flash_timer = 8;
				}
				
				var has_bonked = instance_place(x + 8 * spr_dir, y, a_par_block);
				var ledgeclip = place_meeting(x + 8 * spr_dir, y - fspecial_ledgeclip_height, a_par_block);
				
				if(abs(hsp) <= 0.5 && has_bonked != noone)
				{
					if(ledgeclip)
					{
						window = 5;
						window_timer = 0;
						spawn_hit_fx(x, y, fx_hitsurface);
					}
					else
					{
						x += 16 * spr_dir;
						y = get_instance_y(has_bonked);
						hsp = fspecial_ledgeclip_skid_hsp * spr_dir;
						vsp = 0;
						//state = PS_IDLE_AIR;
					}
					break;
				}
				
				//Glide mechanics
				{
					//0 = forwards, 2 = up, 4 = back, 6 = down
					var fspecial_glide_intent = (!joy_pad_idle) * floor(point_direction(0, 0, spr_dir * dcos(joy_dir), -dsin(joy_dir)) / 45 + .5) % 8;
					
					fspecial_glide_angle = fspecial_flight_angles[fspecial_glide_intent];
					
					if(joy_pad_idle)
					{
						fspecial_glide_angle = fspecial_flight_angles[8];
					}
					
					var velocity_magnitude = point_distance(0, 0, hsp, vsp);
					var velocity_direction = point_direction(0, 0, hsp, vsp);
					
					fspecial_lift_coefficient = fspecial_lift_constant / lerp(velocity_magnitude, 0.01, velocity_magnitude == 0);
					
					var perpendicular_direction = velocity_direction + lerp(90, -90, (velocity_direction + 270) % 360 > 0 && (velocity_direction + 270) % 360 < 180);
					
					//Loosely follows aerodynamic lift equations
					//https://wright.nasa.gov/airplane/lifteq.html
					var delta_velocity = fspecial_lift_coefficient * velocity_magnitude * velocity_magnitude * dsin(fspecial_glide_angle);
					var perpendicular_hsp = dcos(perpendicular_direction) * delta_velocity;
					var perpendicular_vsp = -dsin(perpendicular_direction) * delta_velocity * rune_j_flight_mod;
					
					if(hsp > 0) hsp = max(fspecial_min_hsp, hsp + perpendicular_hsp);
					else if(hsp < 0) hsp = min(-fspecial_min_hsp, hsp + perpendicular_hsp);
					
					vsp += perpendicular_vsp;
					
					velocity_magnitude = point_distance(0, 0, hsp, vsp);
					
					var max_hsp_speed = max(0, fspecial_max_hsp_max - state_timer * fspecial_max_hsp_decrement);
					var max_vsp_speed = max(0, fspecial_max_vsp_max - state_timer * fspecial_max_vsp_decrement);
					
					//Limit max speed
					if(velocity_magnitude > fspecial_max_speed || abs(hsp) > max_hsp_speed || abs(vsp) > max_vsp_speed)
					{
						if(hsp == 0) var hsp_sign = 1;
						else var hsp_sign = hsp / abs(hsp);
						if(vsp == 0) var vsp_sign = 1;
						else var vsp_sign = vsp / abs(vsp);
						
						hsp = hsp_sign * abs(hsp / velocity_magnitude) * max_hsp_speed;
						vsp = vsp_sign * abs(vsp / velocity_magnitude) * max_vsp_speed;
					}
					velocity_magnitude = point_distance(0, 0, hsp, vsp);
					
					//Apply gravity that is inversely proportional to speed
					vsp += gravity_speed * 2.8 * sqrt(max(0.05, dsin(velocity_direction))) / velocity_magnitude;
					
					//If holding back, reduce hsp
					if(spr_dir == 1 && left_down)
					{
						hsp = max(fspecial_min_hsp, hsp - fspecial_max_hsp_decrement * 5);
					}
					else if(spr_dir == -1 && right_down)
					{
						hsp = min(-fspecial_min_hsp, hsp + fspecial_max_hsp_decrement * 5);
					}
					
					velocity_magnitude = point_distance(0, 0, hsp, vsp);
					
					//Add to stall accumulator, lower speed means more accumulation
					var my_x = max(0.01, velocity_magnitude - 1);
					//var delta_stall = ((my_x + 2)/lerp(-35 * my_x, -0.01, clamp(my_x, 0, 0.01) == my_x)) * log10(my_x * my_x) + 1/16;
					
					
					var delta_stall = ((my_x + 2)/lerp(-36 * my_x, -0.01, clamp(my_x, 0, 0.01) == my_x)) * log2(my_x * my_x) + 3/16;
					//var aa = 25;
					//var bb = 0.06;
					//var cc = -0.025;
					//var delta_stall = (aa * bb / (bb + 10 * my_x)) + cc;
					
					//Only apply accumulation if ascending (there is more leeway the less stall that has been accumulated). This makes flying level a little easier
					fspecial_stall_accumulator += max(0, delta_stall * (vsp < fspecial_stall_accumulator));
					if(fspecial_stall_accumulator >= 1)
					{
						window = 5;
						window_timer = 20;
					}
				}
				
				if(state_timer >= fspecial_cancel_frame)
				{
					can_jump = true;
					can_shield = true;
					can_attack = true;
					
					if(shield_pressed && !has_airdodge)
					{
						//set_state(PS_PRATFALL);
						window = 5;
						window_timer = 20;
					}
					else if(special_pressed && !fspecial_used_nspecial && disabled_nspecial == 0 && nspecial_current_projectiles < nspecial_max_projectiles && window != 6)
					{
					
						window = 6;
						window_timer = 0;
						fspecial_used_nspecial = true;
						break;
					}
					else if(special_pressed && disabled_nspecial && dspecial_points_timer == 0)
					{
						dspecial_selected = 1;
						dspecial_points_timer = dspecial_points_timer_max;
						sound_play(a_mfx_tut_fail);
						dspecial_bad_input_display = true;
					}
				}
				break;
			}
			case 6:
			{
				hsp *= 0.995;
				if(vsp < 0)
				{
					vsp *= 0.91;
				}
				
				if(window == 6)
				{
					/*var has_bonked = place_meeting(x + 8 * spr_dir, y, a_par_block);
					if(abs(hsp) <= 0.5 && has_bonked)
					{
						window = 5;
						window_timer = 0;
						spawn_hit_fx(x, y, fx_hitsurface);
						break;
					}*/
					
					if(window_timer == 2 * get_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH) / get_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES))
					{
						//Unless Vanda can spew multiple projectiles, only spew the one
						if(!active_runes[? "M"])
						{
							nspecial_storage_level = 0;
						}
						
						var cur_nspecial_max_projectiles = nspecial_max_projectiles;
						
						nspecial_max_projectiles = lerp(nspecial_max_projectiles, max(nspecial_max_projectiles, nspecial_storage_level + 1 + nspecial_current_projectiles), active_runes[? "M"] && nspecial_current_projectiles < nspecial_max_projectiles);
						
						nspecial_storage_level += 1;
						
						while(nspecial_storage_level > 0 && nspecial_current_projectiles < nspecial_max_projectiles)
						{
							nspecial_storage_level -= 1;
							
							var nspecial_entity = spawn_nspecial(nspecial_release_angle, nspecial_storage_level);
							nspecial_release_angle = (nspecial_release_angle + 1) % 3;
							if(!active_runes[? "M"])
							{
								nspecial_storage_level = 0;
								nspecial_release_angle = 1;
							}
							if(!active_runes[? "F"])
							{
								nspecial_entity.microstate = 11; //PS_UNATTACHED_ARMED
								nspecial_entity.macrostate = 1; //MS_UNATTACHED
							}
							nspecial_entity.x += fspecial_nspecial_x_offset * spr_dir;
							nspecial_entity.y += fspecial_nspecial_y_offset;
							nspecial_entity.hsp = (fspecial_nspecial_hsp + active_runes[? "M"] * rune_m_direction_adjust_hsp[nspecial_storage_level]) * spr_dir;
							nspecial_entity.vsp = fspecial_nspecial_vsp + active_runes[? "M"] * rune_m_direction_adjust_hsp[nspecial_storage_level];
							nspecial_entity.sprite_index = s_nspecial_projectile_armed;
							nspecial_entity.proximity_behavior = fspecial_nspecial_parry_proximity_behavior;
						}
						nspecial_storage_level = 0;
						nspecial_max_projectiles = cur_nspecial_max_projectiles;
						sound_play(a_sfx_boss_vortex_end);
						
						for(var i = 0; i < 3; i++)
						{
							var rand_dir = point_direction(0, 0, fspecial_nspecial_hsp * spr_dir, fspecial_nspecial_vsp) + random_func((player + 9 * i) % 24, 40, true) - 20;
							
							var t_hsp = dcos(rand_dir) * point_distance(0, 0, fspecial_nspecial_hsp * spr_dir, fspecial_nspecial_vsp) * 0.75;
							var t_vsp = dsin(rand_dir) * point_distance(0, 0, fspecial_nspecial_hsp * spr_dir, fspecial_nspecial_vsp) * -0.75;
							var t_xoff = 32;
							var t_yoff = 24;
							
							spawn_rune_fx(x + (fspecial_nspecial_x_offset + nspecial_spawn_x[0] + t_xoff) * spr_dir, y + fspecial_nspecial_y_offset + nspecial_spawn_y[0] + t_yoff, dspecial_fx_length * 2 / 3, t_hsp, t_vsp, random_func((player + 7 * i) % 24, 8, true) + 0 + 1, 2, 2, 1);
						}
						
					}
					
					if(window_timer == 4 * get_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH) / get_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES))
					{
						can_jump = true;
						can_shield = true;
						can_attack = true;
						
						if(shield_pressed && !has_airdodge)
						{
							//set_state(PS_PRATFALL);
							window = 5;
							window_timer = 20;
						}
					}
					
					if(fspecial_return_after_nspecial && window_timer == get_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH) - 1)
					{
						window = 3;
						window_timer = 0;
					}
				}
				break;
			}
			case 4:
			{
				if(free)
				{
					set_state(PS_IDLE_AIR);
				}
				break;
			}
			case 5:
			{
				var thresh = 3 * get_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH) / get_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES);
				if(window_timer <= thresh)
				{
					vsp = 0;
					hsp = 0;
				}
				else
				{
					can_move = true;
					
					can_shield = false;
					can_jump = false;
					can_attack = false;
				}
				if(window_timer == thresh + 1)
				{
					vsp = fspecial_bonk_vsp;
					hsp = fspecial_bonk_hsp * spr_dir;
				}
				break;
			}
		}
		break;
	}
	case AT_USPECIAL:
	{
		var has_rune_b = active_runes[?"B"];
		var rune_k_active = active_runes[?"K"] && upgraded_fspecial;
		if(window == 1 && window_timer == 1)
		{
			uspecial_angle = lerp(joy_dir, uspecial_angle, joy_pad_idle);
			sound_play(s_uspecial_wave, false, noone, 0.75);
			sound_play(s_uspecial_bubble, false, noone, 1);
		}
		if(window == 1 && window_timer == 8)
		{
			var temp_hitfx = noone;
			var temp_hitfx_angle = 0;
			for(var i = 0; i <= 5; i++)
			{
				spawn_shadowburn_fx(-10, 10, 10, 30, x, y, i, undefined);
			}
		}
		
		uspecial_raw_angle = lerp(joy_dir, uspecial_angle, joy_pad_idle);
		uspecial_delta_angle = uspecial_raw_angle - uspecial_angle;
		
		if(abs(uspecial_delta_angle) > 180)
		{
			uspecial_delta_angle = (uspecial_delta_angle % 180) * -1;
		}
		uspecial_delta_angle = clamp(uspecial_delta_angle, -1 * uspecial_max_angle_delta, uspecial_max_angle_delta);

		uspecial_angle = (uspecial_angle + uspecial_delta_angle) % 360;
		if(uspecial_angle < 0)
		{
			uspecial_angle += 360;
		}
		
		if(has_rune_b && (!rune_k_active || (joy_pad_idle && uspecial_angle != 90)) && window <= 2)
		{
			uspecial_angle = 90;
			uspecial_raw_angle = 90;
			uspecial_delta_angle = 0;
		}
		
		can_fast_fall = false;
		if(window == clamp(window, lerp(2, 1, rune_k_active), 3))
		{
			fall_through = true;
			uspecial_frame = (state_timer - (8 * lerp(1, 3, has_rune_b)));
			if(rune_k_active) uspecial_frame = uspecial_total_frames;
			var uspecial_magnitude = 0;
			if(!has_rune_b)
			{
				uspecial_magnitude = ease_backIn(uspecial_min_speed, uspecial_max_speed, uspecial_frame, uspecial_total_frames, uspecial_overshoot);
			}
			else
			{
				uspecial_magnitude = ease_circIn(rune_b_magnitudes[0], rune_b_magnitudes[1], uspecial_frame, uspecial_total_frames);
				if(window_timer >= get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) - 8) uspecial_magnitude = 0;
				if(window == 3)
				{
					uspecial_magnitude = 0;
					if(window_timer == 1 && !hitpause)
					{
						sound_play(a_sfx_ori_glide_featherout, false, noone, 0.5, 1.2);
						uspecial_hitbox = create_hitbox(AT_USPECIAL, 2, x, y);
						//find nearest player
						rune_b_target = self;
						rune_b_distance = 999999;
						with(oPlayer)
						{
							//State 17 is used for abyss characters who have not spawned yet, I think
							if(self != other && point_distance(other.x, other.y, x, y) < other.rune_b_distance && state != 17 && state != PS_DEAD && state != PS_RESPAWN && state != PS_SPAWN)
							{
								other.rune_b_target = self;
								other.rune_b_distance = round(point_distance(other.x, other.y, x, y));
							}
						}
					}
					
					uspecial_magnitude = lerp(rune_b_magnitudes[2], rune_b_magnitudes[3], window_timer / get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH));
					uspecial_angle = point_direction(x, y, rune_b_target.x, rune_b_target.y);
					if(rune_b_target == self) 
					{
						uspecial_angle = 90;
					}
					
					//hsp = uspecial_magnitude * dcos(uspecial_angle);
					//vsp = -1 * uspecial_magnitude * dsin(uspecial_angle);
				}
			}
			
			hsp = uspecial_magnitude * dcos(uspecial_angle);
			vsp = -1 * uspecial_magnitude * dsin(uspecial_angle);
		}
		
		if(window == clamp(window, 2, 4))
		{
			
			if(state_timer % 6 == 0)
			{
				var t_angle = point_direction(0, 0, hsp, vsp);
				var t_hsp = 2 * dcos(t_angle);
				var t_vsp = -2 * dsin(t_angle);
				spawn_rune_fx(x, y + spr_char_center + 12, dspecial_fx_length, t_hsp, t_vsp, random_func(player + 6, 8, true) + 18 + 1, 2, 5, 1);
			}
		}
		
		if(uspecial_allow_airdodge && window == 2 && shield_pressed)
		{
			set_state(PS_AIR_DODGE);
			uspecial_used = true;
		}
		
		if(window == 3 && window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)-1 && uspecial_angle != 90 && uspecial_angle != 270)
		{
			spr_dir = lerp(1,-1,uspecial_angle > 90 && uspecial_angle < 270);
		}
		
		if(window == 4 && window_timer == 1 && has_rune_b)
		{
			attack_end();
		}
		
		if(window == 4 && window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH) - 1 && !free)
		{
			state = (PS_LANDING_LAG);
			state_timer = 0;
		}
		
		if(window >= uspecial_walljump_window && window_timer >= uspecial_walljump_frame)
		{
			can_wall_jump = true;
		}
	
		break;
	}
	case AT_DSPECIAL:
	{
		can_move = false;
		can_fast_fall = false;
		if(window == 1 && window_timer == 3 & !hitpause)
		{
			sound_play(dspecial_sfx, false, noone, dspecial_sfx_volume, 1);
		}
		
		if((window == 2 && window_timer == 1) || free)
		{
			attack = AT_DSPECIAL_AIR;
		}
		break;
	}
	case AT_DSPECIAL_AIR:
	{
		
		if(window == 1 && window_timer == 3 & !hitpause)
		{
			sound_play(dspecial_sfx, false, noone, dspecial_sfx_volume, 1);
		}
		
		if(!free && window < 3)
		{
			vsp = -2;
			free = true;
		}
		can_move = false;
		can_fast_fall = false;
		if(window == 2 && window_timer == 6)
		{
			dspecial_selected = lerp(2, -1, sacrifice_level == sacrifice_max);
			dspecial_selected_old = lerp(2, -1, sacrifice_level == sacrifice_max);
			dspecial_selected_old_timer = 0;
			dspecial_alpha_timer = 0;
			successful_action = false;
		}
		
		if(window <= 2)
		{
			vsp *= 1 - 0.05*window;
			hsp *= 1 - 0.05*window;
		}
		
		var height_limit = floor(get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) + char_height * dspecial_height_limit_multiplier);
		
		var dsp_init = get_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH) + get_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH);
		if(window == clamp(window, 2, 3) && floor(state_timer / dspecial_descent_rate) <= 2 && (vsp != 0 || y < height_limit))
		{
			//Instantly descend if above the top of the screen, otherwise stop descent for first 2 loops of the window
			if(y < height_limit && !(disabled_fspecial && disabled_nspecial && disabled_uspecial))
			{
				vsp = min(3, vsp + 1);
			}
			else if(window == 3 && vsp < 3)
			{
				//Stop Vanda from descending if not enough time has passed (see dspecial_descent_rate)
				vsp = 0;
			}
		}
		
		if(window <= 3)
		{
			if(sacrifice_level == sacrifice_max)
			{
				dspecial_selected = -1;
				dspecial_selected_old = -1;
				dspecial_selected_old_timer = 0;
			}
			//1 = NSpecial, 2 = FSpecial, 4 = USpecial
			else if(down_down && !up_down)
			{
				dspecial_selected = 1;
			}
			else if(up_down && !down_down)
			{
				dspecial_selected = 4;
			}
			else
			{
				dspecial_selected = 2;
			}
			
			if(dspecial_selected != dspecial_selected_old && dspecial_selected_old_timer == 0)
			{
				dspecial_selected_old_timer = dspecial_points_interp_frames;
			}
		}
		
		if(window == 4 && window_timer == 2)
		{
			spawn_hit_fx(x, y - 40, 197);
		}
		
		if(window == 3)
		{
			//Make Vanda descend if spending too long choosing
			if((state_timer - dsp_init) > 0 && (state_timer - dsp_init) % dspecial_descent_rate == 1 && !hitpause)
			{
				vsp += dspecial_descent_speed;
			}
			
			if(window_timer == 1 && state_timer > dsp_init + 16)
			{
				sound_play(dspecial_sfx, false, noone, dspecial_sfx_volume, 1);
			}
			
			if(!free)
			{
				sound_stop(dspecial_sfx);
			}
			
			
			if(shield_pressed)
			{
				window = 5;
				window_timer = 0;
				clear_button_buffer(PC_SHIELD_PRESSED);
			}
			else if(sacrifice_level == sacrifice_max)
			{
				window = 4;
				window_timer = 0;
				clear_button_buffer(PC_SPECIAL_PRESSED);
			}
			else
			{	
				var pressed_selection = attack_pressed;
				
				if(attack_pressed)
				{
					pressed_selection = true;
					clear_button_buffer(PC_ATTACK_PRESSED);
				}
				
				if(pressed_selection && !successful_action)
				{
					//1 = NSpecial, 2 = FSpecial, 4 = USpecial
					switch(dspecial_selected)
					{
						case 4:
						{
							if(!disabled_uspecial)
							{
								dspecial_update_timer = dspecial_timer_max;
								
								disabled_uspecial = true;
								if(
									(sacrifice_level == 0 && active_runes[?"A"]) || 
									(sacrifice_level == 1 && active_runes[?"G"]) || 
									(sacrifice_level == 2 && active_runes[?"L"])
								)
								{
									disabled_uspecial = false;
								}
								upgraded_uspecial = true;
								sacrifice_level = min(sacrifice_level + 1, sacrifice_max);
								successful_action = true;
								
								dspecial_update_timer[3] = dspecial_timer_max;
								if(disabled_nspecial && disabled_fspecial && disabled_uspecial)
								{
									dspecial_update_timer[4] = dspecial_timer_max;
								}
								
								if(active_runes[?"J"])
								{
									set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE) + 6);
									set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE) + 6);
									rune_j_flight_mod += 0.25;
									if(active_runes[?"D"]) //Double up
									{
										set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE) + 6);
										set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE) + 6);
										rune_j_flight_mod += 0.25;
									}
								}
							}
							else
							{
								if(active_runes[?"N"])
								{
									window = 4;
									window_timer = 0;
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
								else
								{
									sound_play(a_sfx_shop_invalid);
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
							}
							break;
						}
						case 2:
						{
							if(!disabled_fspecial)
							{
								dspecial_update_timer = dspecial_timer_max;
								
								disabled_fspecial = true;
								if(
									(sacrifice_level == 0 && active_runes[?"A"]) || 
									(sacrifice_level == 1 && active_runes[?"G"]) || 
									(sacrifice_level == 2 && active_runes[?"L"])
								)
								{
									disabled_fspecial = false;
								}
								upgraded_fspecial = true;
								sacrifice_level = min(sacrifice_level + 1, sacrifice_max);
								successful_action = true;
								
								dspecial_update_timer[2] = dspecial_timer_max;
								if(disabled_nspecial && disabled_fspecial && disabled_uspecial)
								{
									dspecial_update_timer[4] = dspecial_timer_max;
								}
								
								if(active_runes[?"K"])
								{
									rune_k_bounces += 1;
									uspecial_max_angle_delta = 360;
									if(active_runes[?"D"]) //Double up
									{
										rune_k_bounces += 1;
									}
								}
							}
							else
							{
								if(active_runes[?"N"])
								{
									window = 4;
									window_timer = 0;
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
								else
								{
									sound_play(a_sfx_shop_invalid);
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
							}
							break;
						}
						case 1:
						{
							if(!disabled_nspecial)
							{
								dspecial_update_timer = dspecial_timer_max;
								
								disabled_nspecial = true;
								if(
									(sacrifice_level == 0 && active_runes[?"A"]) || 
									(sacrifice_level == 1 && active_runes[?"G"]) || 
									(sacrifice_level == 2 && active_runes[?"L"])
								)
								{
									disabled_nspecial = false;
								}
								
								upgraded_nspecial = true;
								sacrifice_level = min(sacrifice_level + 1, sacrifice_max);
								successful_action = true;
								
								dspecial_update_timer[1] = dspecial_timer_max;
								if(disabled_nspecial && disabled_fspecial && disabled_uspecial)
								{
									dspecial_update_timer[4] = dspecial_timer_max;
								}
								
								if(active_runes[?"I"])
								{
									uspecial_min_speed += 2;
									uspecial_max_speed += 2;
									rune_b_magnitudes[2] += 3;
									rune_b_magnitudes[3] += 3;
									set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, get_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH) + 44);
									if(active_runes[?"D"]) //Double up
									{
										uspecial_min_speed += 2;
										uspecial_max_speed += 2;
										rune_b_magnitudes[2] += 3;
										rune_b_magnitudes[3] += 3;
										set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, get_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH) + 44);
									}
								}
							}
							else
							{
								if(active_runes[?"N"])
								{
									window = 4;
									window_timer = 0;
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
								else
								{
									sound_play(a_sfx_shop_invalid);
									clear_button_buffer(PC_ATTACK_PRESSED);
									clear_button_buffer(PC_SPECIAL_PRESSED);
								}
							}
							break;
						}
						default: break;
					}
					if(successful_action)
					{
						window = 4;
						window_timer = 0;
						//sound_play(a_sfx_shop_buy);
						sound_play(s_bell_down, false, noone, 2.5);
						dspecial_points_timer = dspecial_points_timer_max;
						clear_button_buffer(PC_ATTACK_PRESSED);
						clear_button_buffer(PC_SPECIAL_PRESSED);
						
						set_victory_portrait(sprite_get("win_portrait_" + string(current_vanda_state)));
						dspecial_needs_script_updates = true;
						
						dspecial_sfx_timer = dspecial_sfx_timer_max;
						dspecial_sfx_num = dspecial_selected;
						
						for(var i = 0; i < 6; i++)
						{
							var rand_dir = random_func((player + 9 * i) % 24, 360, true);
							
							var t_hsp = dcos(rand_dir) * 6.5;
							var t_vsp = dsin(rand_dir) * 6.5;
							
							var dspecial_sel2 = min(dspecial_selected, 3) - 1;
							
							spawn_rune_fx(x, y + dspecial_y_offset, dspecial_fx_length * 4 / 3, t_hsp, t_vsp, random_func((player + 7 * i) % 24, 8, true) + dspecial_sel2 * 9 + 1, 1, dspecial_sel2 + 1, 1);
						}
						
						init_shader();
					}
				}
			}
		}
		
		if((window == 4 || window == 5) && window_timer == 1)
		{
			sound_stop(dspecial_sfx);
		}
		
		if(window == 4 && window_timer == 1 && !hitpause)
		{
			sound_play(s_thunder1, false, noone, 0.8);
			if(active_runes[?"N"])
			{
				create_hitbox(AT_DSPECIAL_AIR, 3, x, y);
			}
		}
		
		if(window == 4 && window_timer == 2 && state != PS_HITSTUN)
		{
			//if(!successful_action)
			{
				//var this_hbox = create_hitbox(AT_DSPECIAL_AIR, 2, x, y);
				//this_hbox.can_hit_self = true;
				take_damage(player, -1, 6);
			}
		}
		break;
	}
//Aerials
	case AT_DAIR:
	{
		if(window == 1 && window_timer == 1)
		{
			vanda_landed_dair = noone;
		}
		
		if(window == 4 && window_timer <= 1)
		{
			can_move = false;
		}
		
		if(window < 4 || (window == 4 && window_timer < get_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH)))
		{
			do_a_fast_fall = false;
		}
		
		if(window == 4)
		{
			free = true;
			vsp = vsp * vanda_dair_air_friction;
			//soft_armor = 999;
			
			if(vanda_landed_dair != noone && instance_exists(vanda_landed_dair))
			{
				var vanda_throw_window_frame = get_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH);
				if(hitpause)
				{
					//Needlessly complicated, but flexible (just change out ease functions)
					var lerp_frac = 3;
					var lerp_completion = floor(ease_linear(hitstop_full * lerp_frac, 0, hitstop, hitstop_full));
					
					vanda_landed_dair.x = floor(ease_linear(vanda_landed_dair.x, x +  vanda_dair_offset_x_init, min(lerp_completion, hitstop_full), hitstop_full));
					vanda_landed_dair.y = floor(ease_linear(vanda_landed_dair.y, y + vanda_dair_offset_y_init, min(lerp_completion, hitstop_full), hitstop_full));
				}
				else
				{
					var lerp_completion = floor(ease_linear(0, vanda_throw_window_frame, window_timer, vanda_throw_window_frame));
					
					vanda_landed_dair.x = x + spr_dir * floor(ease_circIn(vanda_dair_offset_x_init, vanda_dair_offset_x_end, lerp_completion, vanda_throw_window_frame));
					vanda_landed_dair.y = y + floor(ease_circIn(vanda_dair_offset_y_init, vanda_dair_offset_y_end, lerp_completion, vanda_throw_window_frame));
				}
				
				if(vanda_landed_dair.object_index == a_obj_article1)
				{
					vanda_landed_dair.y -= 32;
				}
				
				if(window_timer <= vanda_throw_window_frame - 1)
				{
					with(vanda_landed_dair)
					{
						if(object_index == oPlayer)
						{
							can_fast_fall = false;
							can_move = false;
							can_jump = false;
							image_xscale = 0;
						}
						hsp = 0;
						vsp = 0;
					}
				}
			}
		}
		
		if(window == 4 && window_timer == get_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH) - 1)
		{
			window = 5;
			window_timer = 0;
		}
		
		if(window == 5 && window_timer == 0 && vanda_landed_dair != noone && instance_exists(vanda_landed_dair))
		{
			if(vanda_landed_dair.object_index == a_obj_article1)
			{
				vanda_landed_dair.hitpause = 0;
				vanda_landed_dair.attachable = true;
				vsp = vanda_landed_dair.damage / 10 * vanda_dair_launch_mult;
			}
			else
			{
				vsp = min(vanda_dair_launch_max, get_player_damage(vanda_landed_dair.player) * vanda_dair_launch_mult);
			}
			vanda_landed_dair = noone;
		}
		
		if(window == 5 && window_timer >= get_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH) - 3)
		{
			iasa_script();
			move_cooldown[AT_DAIR] = 8 * djumps_restored;
		}
		
		if(window == 5 && window_timer >= get_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH) - 1)
		{
			//Without setting this variable, the game can silent crash if Vanda has not been hurt by a hitbox prior to landing this attack. See https://discord.com/channels/630147058535235604/659932078007386144/964755987485569094
			//hit_player = player;
			//set_state(lerp(PS_LANDING_LAG, PS_TUMBLE, free));
		}
		break;
	}
	case AT_BAIR:
	{
		can_fast_fall = true;
		break;
	}
	case AT_NAIR:
	{
		can_fast_fall = true;
		switch(window)
		{
			case 1:
			{
				if(window_timer == get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH) - 1 && !hitpause)
				{
					sound_play(a_sfx_swipe_medium1, false, noone, 0.9, 1.15);
					sound_play(a_sfx_owl2, false, noone, 1.1, 1.05);
				}
				break;
			}
			case 3:
			{
				if(window_timer == get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH) - 1 && !hitpause)
				{
					sound_play(a_sfx_swipe_weak1, false, noone, 0.9, 0.9);
					sound_play(a_sfx_owl2, false, noone, 1.1, 1.25);
				}
				break;
			}
			case 5:
			{
				if(!was_parried && has_hit && window_timer >= get_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH) - 4)
				{
					//iasa_script();
				}
				break;
			}
		}
		break;
	}
	case AT_FAIR:
	{
		can_fast_fall = true;
		var miss_mult = lerp(1.5, 1, has_hit || has_hit_player);
		if(vanda_use_ftilt_iasa && window == 3 && window_timer >= (get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH) - vanda_fair_iasa_time) * miss_mult)
		{
			iasa_script();
			move_cooldown[AT_FAIR] = (get_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH) * miss_mult) - window_timer;
		}
		break;
	}
	case AT_UAIR:
	{
		if(window == 1 && window_timer == 1 && !hitpause)
		{
			vanda_uair_hit1 = false;
			vanda_uair_hit2 = false;
			vanda_uair_buffer_fastfall = false;
		}
		can_fast_fall = (!vanda_uair_hit1 || vanda_uair_hit2);
		if(vanda_uair_hit1 && !vanda_uair_hit2 && down_pressed && hitpause)
		{
			vanda_uair_buffer_fastfall = true;
		}
		if(vanda_uair_buffer_fastfall && vanda_uair_hit2 && hitpause)
		{
			do_a_fast_fall = true;
		}
		if(window == 3 && window_timer == 2 && !hitpause)
		{
			sound_play(a_sfx_swipe_medium1, false, noone, lerp(1, 0.7, has_hit_player > 0), 1);
		}
		break;
	}
//Strongs
	case AT_USTRONG:
	{
		switch(window)
		{
			case 1:
			{
				if(window_timer == 1)
				{
					vanda_landed_ustrong = noone;
				}
				break;
			}
			case 4:
			{
				soft_armor = 999;
				if(window_timer == 1)
				{
					if(lerp(right_down && !left_down, left_down && !right_down, spr_dir == 1))
					{
						spr_dir *= -1;
					}
				}
				
				if(vanda_landed_ustrong != noone && instance_exists(vanda_landed_ustrong))
				{
					if(window_timer < get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH))
					{
						var vanda_throw_window_frame = get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH) - vanda_ustrong_interp_start_frame;
						
						vanda_landed_ustrong.x = x + spr_dir * floor(ease_circOut(vanda_ustrong_offset_x_init, vanda_ustrong_offset_x_end, floor(ease_linear(0, vanda_throw_window_frame, max(window_timer - vanda_ustrong_interp_start_frame, 0), vanda_throw_window_frame)), vanda_throw_window_frame));
						
						vanda_landed_ustrong.y = y + floor(ease_circIn(vanda_ustrong_offset_y_init, vanda_ustrong_offset_y_end, floor(ease_linear(0, vanda_throw_window_frame, max(window_timer - vanda_ustrong_interp_start_frame, 0), vanda_throw_window_frame)), vanda_throw_window_frame));
						
						if(window_timer <= vanda_throw_window_frame + vanda_ustrong_interp_start_frame - 1)
						{
							with(vanda_landed_ustrong)
							{
								can_fast_fall = false;
								can_move = false;
								can_jump = false;
								
								hsp = 0;
								vsp = 0;
							}
						}
					}
					else
					{
						if(
						(place_meeting(vanda_landed_ustrong.x,vanda_landed_ustrong.y + 8, a_par_block) ||
						place_meeting(vanda_landed_ustrong.x,vanda_landed_ustrong.y + 8, a_par_jumpthrough))
						)
						{
							create_hitbox(AT_USTRONG, 3, 0, 0);
						}
						else
						{
							create_hitbox(AT_USTRONG, 4, 0, 0);
						}
					}
				}
				
				if(window_timer == get_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH))
				{
					window = 5;
					window_timer = 0;
				}
				
				break;
			}
			case 5:
			{
				if(window_timer == 0 && vanda_landed_ustrong != noone && instance_exists(vanda_landed_ustrong))
				{
					soft_armor = 0;
					vanda_landed_ustrong = noone;
				}
				break;
			}
		}
		
		break;
	}
	case AT_DSTRONG:
	{
		if(window == 2 && !hitpause)
		{
			
			if(
			window_timer == get_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME))
			{
				sound_play(a_sfx_ell_uspecial_explode, false, noone, 0.7, 1.4);
			}
			else if(
			window_timer == get_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME) ||
			window_timer == get_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME))
			{
				sound_play(a_sfx_ell_big_missile_ground);
			}
			else if(window_timer == get_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME))
			{
				sound_play(a_sfx_ell_big_missile_ground, false, noone, 1.1, 0.8);
			}
		
		}
		break;
	}
	case AT_FSTRONG:
	{
		break;
	}
//Tilts
	case AT_UTILT:
	{
		can_move = (window == 2);
		can_fast_fall = true;
		off_edge = (window == 2 || (window == 1 && window_timer == get_window_value(AT_UTILT, window, AG_WINDOW_LENGTH)));
		
		
		if(window == 2 && window_timer == get_window_value(AT_UTILT, window, AG_WINDOW_LENGTH) || window == 3)
		{
			if(!was_parried && has_hit && free)
			{
				//set_state(PS_IDLE_AIR);
				iasa_script();
			}
			else if(was_parried && free)
			{
				set_state(PS_PRATFALL);
			}
			else if(was_parried && !free)
			{
				set_state(PS_PRATLAND);
			}
		}
		break;
	}
	case AT_DTILT:
	{
		if(window == 1 && window_timer == 1 && !hitpause)
		{
			sound_play(a_sfx_ori_glide_featherout, false, noone, 0.5, 1.2);
		}
		if(window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH) && !hitpause)
		{
			sound_play(a_sfx_zetter_downb, false, noone, 0.6, 0.95);
			if(vanda_dtilt_consecutive > 8)
			{
				sound_play(s_merkava_ka, false, noone, 0.6, 1);
			}
			
			if(active_runes[? "E"])
			{
				var cur_nspecial_max_projectiles = nspecial_max_projectiles;
				
				nspecial_max_projectiles = lerp(nspecial_max_projectiles, max(nspecial_max_projectiles, nspecial_storage_level + 1 + nspecial_current_projectiles), active_runes[? "M"] && nspecial_current_projectiles < nspecial_max_projectiles);
					
				nspecial_storage_level += 1;
				var played_nspecial_spawn_sound = false;
				while(nspecial_storage_level > 0 && nspecial_current_projectiles < nspecial_max_projectiles)
				{
					nspecial_storage_level -= 1;
					nspecial_release_angle = 1;
					var this_nspecial_entity = spawn_nspecial(nspecial_release_angle, nspecial_storage_level);
					this_nspecial_entity.x = this_nspecial_entity.x + (rune_e_x_adjust[nspecial_storage_level] * spr_dir);
					this_nspecial_entity.y = this_nspecial_entity.y + rune_e_y_adjust[nspecial_storage_level];
					
					for(var i_group = 0; i_group < 11; i_group++)
					{
						nspecial_hbox_group[@this_nspecial_entity.index][player - 1][AT_DTILT][@i_group] = 1;
					}
					
					if(!active_runes[? "M"])
					{
						nspecial_storage_level = 0;
					}
					if(this_nspecial_entity != noone && !played_nspecial_spawn_sound)
					{
						sound_play(a_sfx_boss_vortex_end);
						played_nspecial_spawn_sound = true;
					}
				}
				nspecial_storage_level = 0;
				nspecial_max_projectiles = cur_nspecial_max_projectiles;
			}
		}
		
		if(window == 2 && window_timer == 3 && !hitpause && !has_hit_player)
		{
			//sound_play(a_sfx_zetter_downb, false, noone, 0.6, 0.95);
		}
		if(window == vanda_dtilt_iasa_window && window_timer == vanda_dtilt_iasa_window_timer && has_hit_player)
		{
			iasa_script();
		}
		break;
	}
//Misc
	case AT_TAUNT:
	{
		switch(window)
		{
			case 1:
			{
				if(window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH) - 6)
				{
					if(false && get_player_color(player) == 7)
					{
						sound_play(s_roar1, false, noone, 0.55, ease_circOut(9, 14, sacrifice_max - sacrifice_level, sacrifice_max) / 14);
					}
					else
					{
						sound_play(s_roar1, false, noone, 0.55, 1);
					}
				}
				break;
			}
		}
		break;
	}
	case AT_DATTACK:
	{
		if(window == 1 && window_timer == 1 && !hitpause)
		{
			vanda_dattack_hit1 = false;
		}
		if(vanda_dattack_hold_back_to_slow && window == 2 && lerp(right_down, left_down, spr_dir == 1))
		{
			hsp -= vanda_dattack_hold_back_reduction_per_frame * spr_dir;
		}
		if(hitstop > 0 && window == 3 && round(hitstop_full - hitstop) == 5)
		{
			sound_play(a_sfx_forsburn_spew2, false, noone, 1.4, 1.1);
		}
		if(window == 3 && vanda_dattack_hit1 && (window_timer == 2 || hitpause))
		{
			sound_stop(a_sfx_bigplant_clamp);
		}
		break;
	}
	case AT_JAB:
	{
		break;
	}
}

if(phone_cheats[CHEAT_DEBUG] == 2)
{
	ds_list_insert(attack_update_perf, 0, current_time - ct);
	if(ds_list_size(attack_update_perf) > perf_size)
	{
		ds_list_delete(attack_update_perf, perf_size);
	}
}

#define spawn_shadowburn_fx(spawnx_min, spawnx_max, spawny_min, spawny_max, this_x, this_y, rand_seed, this_depth)
	var shadowburn_fx_randx = random_func(rand_seed + 901, (spawnx_max-spawnx_min)+1, true) + spawnx_min;
	var shadowburn_fx_randy = random_func(rand_seed + 902, (spawny_max-spawny_min)+1, true) + spawny_min;

	var this_hit_fx = noone;
	if(random_func(rand_seed + 900, 9, true) <= 2)
	{
		this_hit_fx = spawn_hit_fx(this_x + shadowburn_fx_randx, this_y - 32 + shadowburn_fx_randy, fx_shadowball);
	}
	else
	{
		this_hit_fx = spawn_hit_fx(this_x + shadowburn_fx_randx, this_y - 32 + shadowburn_fx_randy, fx_shadowball_flame);
	}
	
	if(this_depth != undefined)
	{
		this_hit_fx.depth = this_depth;
	}
	else
	{
		this_hit_fx.depth = 5;
	}
	return this_hit_fx;



#define spawn_rune_fx(t_x, t_y, t_length, t_hsp, t_vsp, t_frame, t_type, t_special, t_alpha)
	ds_list_add(dspecial_fx_list_add, [t_length, t_length, t_x, t_y, t_hsp, t_vsp, t_frame, t_frame, t_type, t_special, t_alpha]);
	//return noone;

#define spawn_nspecial(angle, lvl)
	var will_spawn = (nspecial_current_projectiles < nspecial_max_projectiles);
	//nspecial_max_projectiles = lerp(1, 5, active_runes[? "H"]);
	if(will_spawn)
	{
		nspecial_current_projectiles += 1;
		//nspecial_entity = instance_create(x + spr_dir * nspecial_spawn_x[lvl], y + nspecial_spawn_y[lvl], "obj_article1");
		var this_nspecial_entity = instance_create(x + spr_dir * nspecial_spawn_x[angle], y + nspecial_spawn_y[angle], "obj_article1");
						
		this_nspecial_entity.hsp = spr_dir * nspecial_spawn_force[angle][lvl] * dcos(nspecial_spawn_angles[angle]);
		this_nspecial_entity.vsp = nspecial_spawn_force[angle][lvl] * -dsin(nspecial_spawn_angles[angle]);
		this_nspecial_entity.spr_dir = spr_dir;
		this_nspecial_entity.image_speed *= nspecial_spawn_force[angle][lvl] / nspecial_spawn_force[0][2];
		
		for(var i = 0; i < 8; i++)
		{
			if(nspecial_index_array[i] == 0)
			{
				this_nspecial_entity.index = i;
				nspecial_index_array[i] = 1;
				break;
			}
		}
		
		//this_nspecial_entity.my_hitbox = create_hitbox(AT_NSPECIAL, 1, x + nspecial_spawn_x[lvl], y + nspecial_spawn_y[lvl]);
		
		if(lvl == 3)
		{
			this_nspecial_entity.use_gravity = false;
		}
		//nspecial_storage_level = 0;
		return this_nspecial_entity;
	}
	return noone;
//attack_update.gml
//when we want to program in more complex attacks than what the basic attack scripts do, we come here
//this script runs every frame when the player is in an attack state (PS_ATTACK_GROUND, PS_ATTACK_AIR)

//NOTE: to reffer to a window's window_timer == 0, we must take the last frame of the window before
//		example: if (window == 3 && window_timer == window_end) will reffer to window 4, window_timer 0

//B-reverse - it allows the character to turn in while using specials
//it's seperate from the switch statement because switch statements always take the later instance of that case

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
	
	case AT_JAB:
	{
		if (has_hit && hitpause && hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
						//	set_hitbox_value(attack, 1, HG_EFFECT, 11);
						//	spawn_hit_fx(x + 71*spr_dir,y-6, 323)
							break;
					case 5:
						//	spawn_hit_fx(x + 71*spr_dir,y-3, 323)
						//	set_hitbox_value(attack, 2, HG_EFFECT, 11);
							break;
					case 8:
						//	spawn_hit_fx(x + 71*spr_dir,y-7, 323)
						//	set_hitbox_value(attack, 3, HG_EFFECT, 11);
							break;
					break;
				}
		}

		break;
	}
	
	case AT_FTILT:
	if (has_hit && hitpause && hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
				//			spawn_hit_fx(x + 65*spr_dir,y-6, 323)
							break;
					case 5:
				//			spawn_hit_fx(x + 65*spr_dir,y-3, 323)
							break;
					case 8:
				//			spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							break;
					break;
				}
		}
		break;
		
	case AT_NAIR: //
		    
		    	if (has_hit && jump_pressed && !jump_canceled_nair )
						{
						    window_timer = 0;
						    spawn_hit_fx(x + 30,y-7, 303)
						    sound_play(sound_get("chai_cymbal_2"));
						    set_state(PS_DOUBLE_JUMP);
						    vsp = -5;
						    hsp = hsp * 0.25;
						    destroy_hitboxes();
						    jump_canceled_nair = true;
						}
						
		    if (has_hit && hitpause && hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
						//	spawn_hit_fx(x + 65*spr_dir,y-6, 323)
							break;
							
					case 4:
						//	spawn_hit_fx(x + 65*spr_dir,y-3, 323)
							break;
					case 6:
						//	spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							break;
					break;
				}
		}
		break;
		
	case AT_UTILT:
		can_fast_fall = false; //prevents player from being able to fastfall
		can_move = false;
		
		break;
		
	case AT_DTILT: //cancel attack to jump
		if (has_hit && window == 2 && !was_parried) can_jump = true;
		break;
	case AT_DATTACK: //cancel attack to a specific attack only on hitting a player
		if has_hit && window == 3 && window_timer > 1 && !hitpause {
				//	sound_play(sound_get("chai_jab_beat_3"));
					
		    		if up_down && !down_down {
		    			attack_end()
		    			set_attack(AT_UTILT)
		    			window = 1
		    			window_timer = 0
		    		}
		    		
		    		if down_down && !up_down  {
		    			attack_end()
		    			if !free {
		    			hsp = 3*spr_dir 
		    			set_attack(AT_FTILT)
		    			window = 1
		    			window_timer = 0
		    			} 
			    			else {
			    			vsp = -4
			    			hsp = 6*spr_dir 
			    			set_attack(AT_DAIR)
			    			window = 1
			    			window_timer = 6	
			    			}
		    			
		    		}
		    	}
		break;
	case AT_USTRONG: 
		can_fast_fall = false; 
		can_move = true;
		if (was_parried && !free) set_state(PS_PRATLAND); 
		
		if (window == 2)
		{
			set_window_value(attack, 4, AG_WINDOW_HSPEED, 2);
			set_window_value(attack, 4, AG_WINDOW_VSPEED, -8-(strong_charge/27));

			//increase the endlag window according to the charge
			set_window_value(attack, window_last, AG_WINDOW_LENGTH, 15+(strong_charge/5));
		}

		if (window > 4 && !free)
		{
			set_state(PS_LANDING_LAG);
			landing_lag_time = 10 * (!has_hit ? 1.5 : 1);
		}
		break;
	case AT_FSTRONG: 
		switch (window)
		{
			case 1: 
				if (window_timer == window_end) cur_loop_sound = sound_play(sound_get("chai_clap2")); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
			case 3: 
				if (window_timer == 1) sound_stop(cur_loop_sound); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
			case 4:
				if (window_timer == window_end) spawn_hit_fx(x + 84 * spr_dir, y - 17, fx_pow_hit[0]); //last hit // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
		}
		break;
	case AT_DSTRONG:
		can_move = true;
		var add_dmg = 0;
		
		switch (window)
		{
			case 2: //set loop amount
				set_hitbox_value(attack, 2, AG_WINDOW_LOOP_REFRESH_HITS, 1);
				set_window_value(attack, 4, AG_WINDOW_LOOP_TIMES, 3);
				reset_hitbox_value(attack, 1, HG_DAMAGE);
				reset_hitbox_value(attack, 2, HG_DAMAGE);
				add_dmg = 0;
				break;
			case 3:
				if(window_timer == window_end && hit_onBeat) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				{
					sound_play(sound_get("chai_dstrong_start"));
					set_window_value(attack, 4, AG_WINDOW_LOOP_TIMES, 4);
					set_hitbox_value(attack, 2, AG_WINDOW_LOOP_REFRESH_HITS, 1);
					set_hitbox_value(attack, 1, HG_DAMAGE, 2);
					set_hitbox_value(attack, 2, HG_DAMAGE, 2);
					add_dmg = 1;
				}
			case 4:
				if (window_loops == get_window_value(attack, 4, AG_WINDOW_LOOP_TIMES)) //final hit
				{
					set_hitbox_value(attack, 1, HG_WIDTH, 65);
					set_hitbox_value(attack, 1, HG_HEIGHT, 52);
					set_hitbox_value(attack, 1, HG_DAMAGE, 10);
					set_hitbox_value(attack, 1, HG_ANGLE, 30);
					set_hitbox_value(attack, 1, HG_ANGLE_FLIPPER, 6);
					set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0.7);
					set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 9);
					set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, 0.8);
					set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, 143);
					set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

					set_hitbox_value(attack, 1, HG_HITBOX_X, 35);
					set_hitbox_value(attack, 2, HG_HITBOX_X, -35);
					
					set_hitbox_value(attack, 2, HG_WIDTH, 65);
					set_hitbox_value(attack, 2, HG_HEIGHT, 52);
					set_hitbox_value(attack, 2, HG_DAMAGE, 10);
					set_hitbox_value(attack, 2, HG_ANGLE, 30);
					set_hitbox_value(attack, 2, HG_ANGLE_FLIPPER, 6);
					set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, 0.7);
					set_hitbox_value(attack, 2, HG_BASE_HITPAUSE, 9);
					set_hitbox_value(attack, 2, HG_HITPAUSE_SCALING, 0.8);
					set_hitbox_value(attack, 2, HG_VISUAL_EFFECT, 143);
					set_hitbox_value(attack, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
				}
				else //multihit
				{
					reset_hitbox_value(attack, 1, HG_WIDTH);
					reset_hitbox_value(attack, 1, HG_HEIGHT);
				//	reset_hitbox_value(attack, 1, HG_DAMAGE);
					reset_hitbox_value(attack, 1, HG_ANGLE);
					reset_hitbox_value(attack, 1, HG_ANGLE_FLIPPER);
					reset_hitbox_value(attack, 1, HG_TECHABLE);
					reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
					reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
					reset_hitbox_value(attack, 1, HG_VISUAL_EFFECT);
					set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
					
					reset_hitbox_value(attack, 2, HG_WIDTH);
					reset_hitbox_value(attack, 2, HG_HEIGHT);
				//	reset_hitbox_value(attack, 2, HG_DAMAGE);
					reset_hitbox_value(attack, 2, HG_ANGLE);
					reset_hitbox_value(attack, 2, HG_ANGLE_FLIPPER);
					reset_hitbox_value(attack, 2, HG_TECHABLE);
					reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
					reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
					reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
					reset_hitbox_value(attack, 2, HG_HITPAUSE_SCALING);
					reset_hitbox_value(attack, 2, HG_VISUAL_EFFECT);
					set_hitbox_value(attack, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
					
					reset_hitbox_value(attack, 1, HG_HITBOX_X);
					reset_hitbox_value(attack, 2, HG_HITBOX_X);
				}
				break;
		}
		break;
		
	case AT_FAIR:
		fair_cd = true; 
		break;
	case AT_BAIR: 
		break;
		
	case AT_DAIR:
		{
			can_wall_jump = true;
			can_fast_fall = false;
			
			switch(window)
			{
				case 1:
					old_vsp = -5;
    		        old_hsp = hsp * 0.25;
    		        break;
				case 2:  
					hsp /= 1.2
					if(hit_onBeat)
					{
						hsp /= 1.4;
					}
    		        break;
    		    case 3:
    					if (window == 3 && jump_pressed && !jump_canceled)
						{
						    window_timer = 0;
						    spawn_hit_fx(x + 30,y-7, 303)
						    sound_play(sound_get("chai_cymbal_2"));
						    set_state(PS_DOUBLE_JUMP);
						    vsp = -5;
						    hsp = hsp * 0.25;
						    jump_canceled = true;
						    destroy_hitboxes();
						}
						break;
    		    case 4:
    		    	if window = 4 && !free && ground_type = 1{
					       set_attack_value(AT_DAIR, AG_CATEGORY, 1);
					       set_attack_value(AT_DAIR, AG_WINDOW_GOTO, 4);
					       sound_play(asset_get("sfx_ori_energyhit_medium"))
					       sound_play(asset_get("sfx_blow_heavy2"))
					       fx2 = spawn_hit_fx(x + 44*spr_dir,y - 10, 302)
					       fx2.pause = 6
					       fx = spawn_hit_fx(x + 54*spr_dir,y - 10, 303)
					       fx.pause = 6
							break;
					    }
			}
			break;
		}
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL: 
		can_move = false; 
		can_fast_fall = false; 
		can_move = false;
		
		if( window == 1 && window_timer > 7 && !hitpause) 
			{
				if((special_pressed || shield_down) && startMove = true)
				{
				window = 2;
				startMove = false;
				print("Instant shot");
				}
			}
			
		switch (window)
		{
			case 1: //aiming + var reset
				nspec_found_target = false;
				fspec_hit_player = false;
				nspec_tether_pos = [floor(x + 64), floor(y - char_height/2)];
				//sets aim direction
				if(window_time_is(1)) 
				{
					nspec_angle_new = 180 * (spr_dir == -1);
					real_angle = nspec_angle_new;
					startMove = true;
				}
				
				if (!joy_pad_idle) 
				{
					if (spr_dir == 1) && (joy_dir > 90) && (joy_dir < 270) {
	                    spr_dir = -1;
	                }
	                if (spr_dir == -1) && (joy_dir < 90 || joy_dir > 270) {
	                    spr_dir = 1;
	                }
	                
	                nspec_angle_new += 0.66*angle_difference(joy_dir, nspec_angle_new);
				}
			real_angle = nspec_angle_new;               
			nspec_angle = real_angle;
			
			
				if (up_down)
				{
					fspec_aim = -1;
								
				}
				else 
					{
						if (down_down)
						{
							fspec_aim = 1;
						}
					}
				hsp =0; 
				vsp =0;
				break;
			case 3: //throw windup (check is on update.gml)
				vsp = 0;
				hsp = 0;
				break;
			case 4: //throwing tether
				vsp = 0;
				hsp = 0;
				move_cooldown[attack] = 120;
				if (window_timer == 1)  // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
					{
						var grab_offset = 0;
						if spr_dir == -1
						{
							grab_offset  = -30;
						}
						
						var grapplehook = create_hitbox(attack, 2, x + (34*spr_dir)+grab_offset, y - 40); //spawn hitbox on the recorded position
						var grapple_spd = 26;
						var grapple_ang = real_angle;
						grapplehook.hsp = lengthdir_x(grapple_spd,grapple_ang);
						grapplehook.vsp = lengthdir_y(grapple_spd,grapple_ang);
						
						nspec_grapple = grapplehook;
						
					}
				if (window_timer >= 2) if (nspec_found_target)
				{
				//	sound_play(asset_get("Chai_MagnetShot_Hit"));
					
				//	spawn_hit_fx(nspec_tether_pos[0], nspec_tether_pos[1], 312);

					if (my_grab_id != noone) fspec_speed = point_distance(x, y, my_grab_id.x, my_grab_id.y) / 16 * 1.5;
					else fspec_speed = point_distance(x, y, nspec_tether_pos[0] + spr_dir * 32, nspec_tether_pos[1] + spr_dir * 32) / 16 * 1.5;
				}
				if (window_timer == window_end) set_window(nspec_found_target && !was_parried ? 6 : 5); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
			case 5: 
				if (window_timer == window_end) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				{
					
					set_state(PS_IDLE_AIR);
				}
				break;
			case 6: //if a target is found it grapples towards them + applying cooldown
				if (!hitpause && nspec_found_target)
				{
					move_cooldown[attack] = 90; //half a sec cooldown

					hsp = lengthdir_x(fspec_speed, nspec_angle_new);
					vsp = lengthdir_y(fspec_speed, nspec_angle_new) - gravity_speed;
					
					if (place_meeting(x + hsp, y + vsp*free, asset_get("par_block")))
					{
						height_limit = 40;
						for (var i = 0; i <= height_limit; i++)
						{
							if (!place_meeting(x + hsp, y + vsp - i, asset_get("par_block")))
							{
							//	print("fspec is very forgiving")
								y -= i;
								break;
							}
						}
					}

					fall_through = (my_grab_id != noone); 
					if ((spr_dir && x >= nspec_tether_pos[0] || -spr_dir && x <= nspec_tether_pos[0]) && !free ||
						position_meeting(x + 32 * sign(hsp), y - 1, asset_get("par_block")) ||
						position_meeting(x + 32 * sign(hsp), y + sign(vsp) - 1, asset_get("par_jumpthrough")) && vsp > 0 && my_grab_id == noone ||
						has_hit)
					{
						vsp = has_hit ? -6 : -4;
						hsp = has_hit ? 0 : -4 * sign(hsp);

						if (!has_hit)
						{
							sound_play(get_hitbox_value(attack, 1, HG_HIT_SFX));
							spawn_hit_fx(x + hsp, y - char_height / 2, get_hitbox_value(attack, 1, HG_VISUAL_EFFECT));
						}
						
						set_state(!has_hit ? PS_PRATFALL : PS_IDLE_AIR);

						if (my_grab_id != noone)
						{
							my_grab_id.hitstop = 0;
							my_grab_id = noone;
						}
					}
					else if ((spr_dir && x > nspec_tether_pos[0] || -spr_dir && x < nspec_tether_pos[0]) && free) //used for below platform tethering mostly
					{
						hsp /= 8;
						vsp = -9;
						set_state(PS_IDLE_AIR);
					}
				}
				break;
		}
		break;
		
	case AT_USPECIAL: 
		can_fast_fall = false; 
		
		if (window == window_last && window_timer == window_end && !was_parried) can_fast_fall = true;
		
			
		switch (window)
		{
			case 1: case 2: //angle setup
				if (state_timer == 1) 
					{
						pressedUspec = false;
						uspec_angle = 90;
						uspec_angle_new = 90;
						uspec_real_angle = uspec_angle_new;
						uspec_beat_timed = false;
						uspec_beat_hit = false;
					}
					else if (window == 2)
					{
						
						if (!joy_pad_idle) uspec_angle = joy_dir;
						else uspec_angle = 90;
					}

				can_move = false;
				hsp = 0;
				vsp = clamp(vsp, vsp, 0);
				
				if (!joy_pad_idle) 
				{
					if (spr_dir == 1) && (joy_dir > 90) && (joy_dir < 270) {
	                    spr_dir = -1;
	                }
	                if (spr_dir == -1) && (joy_dir < 90 || joy_dir > 270) {
	                    spr_dir = 1;
	                }
	                
	                uspec_angle_new += 0.66*angle_difference(joy_dir, uspec_angle_new);
				}
			
			if(uspec_angle_new >= 120)
			{
				uspec_angle_new = 140;
				uspec_angle_type = -1;
			}
			else
			{
				if(uspec_angle_new <= 60)
				{
					uspec_angle_new = 40;
					uspec_angle_type = 1;
				}
				else
					{
					uspec_angle_new = 90;
					uspec_angle_type = 0;
					}
			}
			
			
			uspec_real_angle = uspec_angle_new;
			uspec_angle = uspec_real_angle;
			
			if( window_timer > 7 && !hitpause) 
			{
					if( (special_pressed || shield_down) && pressedUSpec == false)
						{
						uspec_beat_timed = true;
								
							if(is_onBeat)
							{
							uspec_beat_hit = true;
							spawn_hit_fx(x - 50 * spr_dir, y-70, note_effect[0]);
							set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 10);
							set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
							set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 115);
							hit_onBeat = true;
							}
						
							if(pressedUspec == false)
							{
							window_timer = window_end - 1;
							pressedUSpec = true;
							}
							pressedUSpec = true;
						}
			}
			break;
			
			case 3:
				pressedUSpec = false;
				if(window_timer == window_end)
				{
				uspec_init_x = x;
				uspec_init_y = y-20;
				var follow_fx = spawn_hit_fx(x, y-20, fx_spec_arr[0]);
				}
				spawn_uspec_beam(uspec_real_angle);
				break;
			case 4: 
				if(uspec_beat_timed)
				{
					if(uspec_beat_hit)
					{
						if(window_timer = 1)
						{
							sound_stop(sound_get("chai_clap3"));
							sound_stop(beat_hit_sfx[4]);
							sound_play(sound_get("chai_clap3"));
							sound_play(beat_hit_sfx[4],0,0,1.2);
						}
						uspec_speed = 12;
					}
					else
						{
								if(window_timer = 1)
								{
								var selU = string(random_func( 1, 2, true ));
								sound_stop(sound_get("chai_uspec_fail_" + selU));
								sound_play(sound_get("chai_uspec_fail_" + selU),0,0,.75);
								}
						uspec_speed = 8;
						}
				}
				else
				{
					if(window_timer = 1)
								{
								sound_stop(sound_get("chai_uspec_win"));
								sound_play(sound_get("chai_uspec_win"),0,0,.75);
								}
					uspec_speed = 11;	
				}
				
				hsp = lengthdir_x(uspec_speed, uspec_angle);
				vsp = lengthdir_y(uspec_speed, uspec_angle);

				if (window_timer == 1) uspec_was_free = free;
				else if (window_timer > 2)
				{
					if (uspec_was_free && !free) //bounce
					{
					
						sound_play(asset_get("sfx_forsburn_combust"));

						vsp = -7;
						uspec_was_free = false;
					}
					else if (window_timer == window_end) 
					{
							
						if (!uspec_was_free && !free) set_state(PS_LANDING_LAG); //slide
						
					}
				}
				break;
				
			case 5:
					set_state(PS_PRATFALL);
					reset_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE);
					reset_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK);
					reset_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT);
				break;
		}
		break;
	case AT_FSPECIAL: 
		can_wall_jump = true;
		off_edge = false;
		var additionHSP = 0;
		
		    if (window == 1)
		    {
			    //transform sfx	
			   	if window_timer == 1 && !hitpause {
			   		chargeAmount = 0;
			   		additionHSP = 0;
			   		fspec_beat_hit = false;
				}
				//easing momentum
			    if vsp > 0 vsp /= 1.15
			    vsp /= 1.1
			    hsp /= 1.2
				move_cooldown[AT_FSPECIAL] = 100;
		    }
		    can_fast_fall = false;
		    if (window == 2)
		    {
		    //easing momentum
		    if vsp > 0 vsp /= 1.15
		    vsp /= 1.1
		    hsp /= 1.2
			can_jump = true;
			//charge sfx	
			if window_timer == 1 && !hitpause {
				sound_play(sound_get("chai_cymbal1"),false,noone,1.2);
			}
		        if (special_down && chargeAmount < 50 && !shield_pressed)
			    {
			    chargeAmount += 1;
		        }
			else
			{
			    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6 + (chargeAmount / 10));
			    
			    /*
			    if chargeAmount < 30 {
			    	set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
			    } else {
			    	set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("chai_fspec_hit_full"));
			    }
			    */
			    if(is_onBeat)
					{
					fspec_beat_hit = true;
					spawn_hit_fx(x - 50 * spr_dir, y-70, note_effect[0]);
					hit_onBeat = true;
					sound_play(sound_get("chai_clap2"));
					sound_play(beat_hit_sfx[4],0,0,1);
					additionHSP = 3;
					set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 10);
					set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 18);
					set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 320);
					}
					
			    window = 3;
		        window_timer = 0;
		        hsp = (13 + (chargeAmount / 3))*spr_dir+additionHSP;
			}
		    }
		    if window == 3 {
		    	if window_timer == 1 && !hitpause {
				sound_play(sound_get("chai_ready"));

		    	fspec_init_x = x;
		    	fspec_init_y = y;
		    	}
		    	vsp = 0
		    	hsp /= 1.05
		    	if free hsp /= 1.05
		    	if has_hit && !hitpause {
		    		window = 4
		    		window_timer = -1
		    	}
		    }
		    
		    if window > 3 {
		    	if has_hit && window == 4 && window_timer > 2 && !hitpause {
		    		if up_down && !down_down {
		    			attack_end()
		    			set_attack(AT_UTILT)
		    			window = 1
		    			window_timer = 0
		    		}
		    		if down_down && !up_down  {
		    			attack_end()
		    			if !free {
		    			hsp = 2*spr_dir 
		    			set_attack(AT_FTILT)
		    			window = 1
		    			window_timer = 0
		    			} else {
		    			vsp = -4
		    			hsp = 2*spr_dir 
		    			set_attack(AT_DAIR)
		    			window = 1
		    			window_timer = 6	
		    			}
		    		}
		    	}
		    	
		    	if !has_hit && window = 5 && free{
		    		set_state(PS_PRATFALL)
		    	}
		    	
		    	
		    	vsp /= 1.2
		    	hsp /= 1.05
		    	if free hsp /= 1.05	
		    }
		    break;
	case AT_DSPECIAL:
		can_fast_fall = false;
		
		if(move_cooldown[AT_DSPECIAL] == 1)
		{
			set_state(free ? PS_IDLE_AIR : PS_IDLE);
		}
		
		if(move_cooldown[AT_DSPECIAL] > 0)
		{
		//	set_state(free ? PS_IDLE_AIR : PS_IDLE);
		}
			switch(window)
			{
				case 2:
					reset_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE);
					reset_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK);
					reset_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING);
					vsp = clamp(vsp, vsp, 0);
					hsp = clamp(hsp, -2, 2);
					
						if(window_timer == 3 && hit_onBeat)
						{
							window = 3;
							
						}
					break;
				case 3: // Spawning the assist
					if (!instance_exists(assist_call))
					{
						switch(assist_index)
						{
							case 0:
								assist_call = instance_create(x - 70 * spr_dir, y - 20, "obj_article1");
								move_cooldown[AT_DSPECIAL] = 120;
								break;
							
							case 1:
								assist_call = instance_create(x + 70 * spr_dir, y - 20, "obj_article1");
								move_cooldown[AT_DSPECIAL] = 120;
								break;
							case 2:
								assist_call = instance_create(x - 70 * spr_dir, y - 20, "obj_article1");
							//	assist_call.assist_selected(assist_index);
								move_cooldown[AT_DSPECIAL] = 120;
								if(hit_onBeat)
								{
									    set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 6);
                                        set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
                                        set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
                                        set_window_value(AT_DSPECIAL, 3, HG_PROJECTILE_MULTIHIT, 3);
                                        set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HITRATE, 2);
								    	set_hitbox_value(AT_DSPECIAL, 3, HG_MULTIHIT_DAMAGE, 2);
								    	set_hitbox_value(AT_DSPECIAL, 3, HG_MULTIHIT_SFX,  asset_get("sfx_ori_seinhit_medium"));
								}
								break;
						}
						
					if(free)
					{
					vsp = -5;
					}
    		        break;
						
					}
				
				case 4:
						if(window_timer == 1)
						{
	
						            if(assist_index < 2)
						            {
						                assist_index++;
						               // print(assist_index);
						            }
						            else
						            {
						                assist_index = 0;
						            }
						}
					break;
			}

	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1);
		if (window == window_last && window_timer == window_end-1 && game_time <= 125) state = PS_SPAWN; 
		break;
	
	case AT_TAUNT:
		switch(window)
		{
			case 2:
				if(window_timer = 1)
				{
					spawn_hit_fx(x - 50 * spr_dir, y-70, note_effect[0]);
					sound_play(sound_get("chai_clap2"));
				}
			break;
		}
		
		break;
	case AT_TAUNT_2:
		break;
}


//custom_attack_grid();
//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define spawn_uspec_beam(uspec_angle_)
{
	var beam_angle = 90;
	var beam_length = 30;

 //var beam = create_hitbox(AT_USPECIAL,2,x*(spr_dir), y);
// beam.spr_dir = spr_dir;
// beam.draw_xscale = spr_dir;
 
 if (window_timer == 1) 
					{
						var beam_offset = 0;
						if spr_dir == -1
						{
							beam_offset  = -30;
						}
						
					
            			
						var beam_spd = 20;
						var beam_ang = -uspec_angle_;
					//	print(beam_ang);
					
						
						uspec_beam_angle = beam_ang;
						var beam = create_hitbox(AT_USPECIAL, 2, x + (34*spr_dir)+beam_offset, y - 30); //spawn hitbox on the recorded position
						beam.hsp = lengthdir_x(-beam_spd,beam_ang);
						beam.vsp = lengthdir_y(beam_spd,beam_ang);
						uspec_beam = beam;
						
						var uspec_end_x = x + (34*spr_dir)+beam_offset + (lengthdir_x(50, uspec_beam_angle));
            			var uspec_end_y = y - 30 + lengthdir_y(50, uspec_beam_angle);
            			uspec_beam_endPos = [uspec_end_x,uspec_end_y];
						
					}
		
}


#define custom_dust_effects
{
    //original code by FQF (from QUA mario), modified by bar-kun
    with (asset_get("new_dust_fx_obj"))
    {
        //dust_fx <= 24 && dust_fx >= 0 will check the values in the array that are in between 0 and 24
        //other.dust_effect[dust_fx] != 0 will check the array value isn't 0 (which represents the default effect)
        //if we put any other number value it will act as if you have an effect, and remove the default dust
        if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && other.dust_effect[dust_fx] != 0)
        {
            //all the values of the effect that eventually spawn are based off the original effect
            //this allows us to add our own dusts in the proper placement and such
            var effect = other.dust_effect[dust_fx]; //sets up effect
            var spawn_x = x; //X and Y coordinates for where the effect should spawn
            var spawn_y = y;
            var dust_angle = draw_angle; //allows us to rotate the sprites around
            var dust_depth = dust_depth; //sets the depth of the effect

            //other variable checks you can add yourself:
            //player_id - player object
            //player - player number
            //spr_dir - dust's facing direction
            //dust_length - dust's length
            //dust_color - which shade (from the player's shade slots) should the dust color with
            //init - checks if the dust spawned, false for the first frame
            //shader_init - ???
            //step_timer - ???
            //fg_index - ???
            //__sync_id - ???

            //spawn new dusts
            with (other)
            {
                //exceptions:
                //  - we can add in exceptions for certain dusts to do various things (example below)
                //  - the numbers go between 0 - 24
                switch (other.dust_fx)
                {
                    case 8: //wall hit bounce - when hitting the celling it should b rotated properly
                        if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
                        break;
                }
                
                //spawn effect
                var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
                new_dust_fx.draw_angle = dust_angle;
                new_dust_fx.depth = dust_depth;
                new_dust_fx.hsp = other.hsp;
                new_dust_fx.vsp = other.vsp;
            }

            //"remove" dust by moving to a place nobody will see
            x = -3000;
            y = -3000;
            dust_length = 0;
        }
    }

    //K.O stars are kinda funky - they need to be controlled outside of the with statement
    //as we need to make them move down every frame
    with (hit_fx_obj) if (player == other.player) if (hit_fx == other.dust_effect[24]) vsp ++;
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/ 

#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion
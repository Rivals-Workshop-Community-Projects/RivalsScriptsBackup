// Num Pad notation for Airdash / Nspec / Fspec
#macro UP_DIRECTION 8
#macro UP_RIGHT_DIRECTION 9
#macro RIGHT_DIRECTION 6
#macro DOWN_RIGHT_DIRECTION 3
#macro DOWN_DIRECTION 2
#macro DOWN_LEFT_DIRECTION 1
#macro LEFT_DIRECTION 4
#macro UP_LEFT_DIRECTION 7
#macro NEUTRAL_DIRECTION 5

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Small Code
if(spr_angle != 0){spr_angle = 0;} // Prevent weird issues with air dashing if hit out of it
//if(draw_indicator == false){ draw_indicator == true} // PRevent issues with hud indicator being hidden if hit during air
switch(attack){
	case AT_TAUNT:
	    if(taunt_down){
	        set_window_value(AT_TAUNT,2,AG_WINDOW_TYPE,9);
	    }
	    else{
	        set_window_value(AT_TAUNT,2,AG_WINDOW_TYPE,0);
	    }
	    if(state_timer % 120 == 0){sound_play(sound_get("crowd_taunt"));}
	break;
	
	case AT_DSTRONG:
	// Can move during active windows Code
		switch(window){
			case 3:
			case 4:
				if(left_down){
					hsp = -3;
				}
				else if(right_down){
					hsp = 3;
				}
				else break;
			break;
			default:
				hsp = 0;
			break;
		}
	break;
	
   case AT_NAIR:
		if(was_parried){
			window = 3;
			window_timer = 0;
			destroy_hitboxes();
			attack_end();
		}
		
		//Can fast fall nair 1 if holding down like normal. Preven fast fall for Nair 2 so downward Nair 3 can be used.
		if(window > 4){
			can_fast_fall = false;
		}
		
		//Combo String Logic
		// Set Nair 1 to allow cancels on hit
		if(window == 2 && has_hit == true){
		set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
		}
		
		// Allow Nair 2
		if(window == 3 && attack_pressed && has_hit == true && window_timer >= get_window_value(attack,window,AG_WINDOW_CANCEL_FRAME)){
		set_attack_value(AT_NAIR,AG_NUM_WINDOWS,6);	
		}
		
		// Allows Nair 3. Custom cancel logic due to unqiue directions the move can go into
        if(window == 6 && attack_pressed && window_timer >= get_window_value(attack,window,AG_WINDOW_CANCEL_FRAME) && !was_parried){
        	if(down_down){ // Down version
        	    set_attack_value(AT_NAIR,AG_NUM_WINDOWS,12);
        		window = 10;
        		window_timer = 1;
        	}
        	else if(up_down){ //  Up Version
        	    set_attack_value(AT_NAIR,AG_NUM_WINDOWS,15);
        		window = 13;
        		window_timer = 1;
        	}
        	else {
        		set_attack_value(AT_NAIR,AG_NUM_WINDOWS,9);
        		window = 7;
        		window_timer = 1;
        	}
        }
        // Set VSP for boucing on hit
        // This will set to bounce if down is not being held during window 2 (including hitpause).
        // Cannot fast fall nair 2 so nair 3 can be set to down angle
        // Reset nair_down_detected on set attack.
        
        // Nair 2 Bounce always happens
    	if(window == 5){old_vsp = -4}
    	// Nair 1 will have all of window 1 and 2 to input down to hitfall
    	if(window == 1 || window == 2){
    		// Detect down input, if it is ever detected, set a flag
    		if(down_down == true){nair_down_detected = 1;}
    		// If no down was ever detected and it hits, then manually set VSP. 
    		// This way we do not alter old vsp if down was inputted
    		if(nair_down_detected == false && has_hit == true){
    			old_vsp = -4;
    		}
    	}
    	//print(nair_down_detected);
    	/*
        if(((window == 2 and down_down == false) or window == 5) and has_hit == true ){
            old_vsp = -4; // Set VSP after hitpause
        }
        */
    break;
    
    case AT_DSPECIAL:
    	can_fast_fall = false;
        if(window == 1 && window_timer == 1 && !hitpause){
        	dspecial_cloud_id = instance_create(x,y-250,"obj_article1");
        	sound_play(asset_get("sfx_absa_cloud_send"));
        	}
        if(instance_exists(dspecial_cloud_id)){
	    	if(window == 1 && place_meeting(x,y - 32,dspecial_cloud_id.segment_hitbox_ID)){
	    		destroy_hitboxes();
	    		set_attack_value(AT_DSPECIAL,AG_NUM_WINDOWS,5);
	    		window = 4;
	    		window_timer = 1;
	    	}
        }
    break;
    
    case AT_DSPECIAL_2:
    //Pity Flip Code
	 if(window > 2 && window < 5 && !hitpause && shield_down){
		window = 1;
		window_timer = 0;
		destroy_hitboxes();
		attack_end();
		set_attack(AT_EXTRA_1);
		hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
    	// Remove opponent from variable in case this trades
		grabbed_player_obj = noone;
	 	
	 }
    break;
    case AT_UTILT:
    	hud_offset = 40;
    break;
    case 49: // AT_FINAL_STRONG
    	//Set hurtbox and variables
    	can_fast_fall = false;
    	can_wall_jump = false;
    	hurtboxID.sprite_index = get_attack_value(AT_FINAL_STRONG, AG_HURTBOX_SPRITE);
		djumps = 0; // Restore Djump on us
    	// Set initial position
    	if(window == 1 && window_timer == 2){
    		final_strong_initial_x = x;
    		final_strong_initial_y = y;
    	}
    	// Determine if near the side blast zone and reset to stage 
    	var temp_distance_from_left_blastzone = x;
    	var temp_distance_from_right_blastzone = room_width - x;
    	var temp_distance_limit = 60;
    	if(temp_distance_from_left_blastzone < temp_distance_limit || temp_distance_from_right_blastzone < temp_distance_limit){
    		window = 6;
    		window_timer = 1;
    		destroy_hitboxes();
    		attack_end();
    		x = final_strong_initial_x;
    		y = final_strong_initial_y;
    		// Reset to stage if used off ledge to prevent suicide.
    		if(x < temp_distance_limit || room_width - x < temp_distance_limit){
    			x = room_width / 2;
    			y = room_height / 2;
    		}
    	}
    break;
}

// Main SL Switch
switch(SL_mode_active){
    case 0: // SL Not active
        switch(attack){
            default:
            break;
        }
    break;
    
    case 1: // SL Active
        switch(attack){
            case AT_EXTRA_2://SL Ground Dash
                can_jump = true;
                // Hitfx
                if(window == 2){
                    if(window_timer == 1){
                        spawn_hit_fx(x - 30,y,hfx_spark);
                    }
                }
            break;
            
            case AT_EXTRA_3: // SL Air Dash
                if(!free){
                    attack_end();
                    set_state(PS_WAVELAND);
                }
                if(window == 2){
                    if(window_timer == 1){
                        spawn_hit_fx(x,y,hfx_spark);
                    }
                }
            break;
        }
    break;
    
    default:
    break;
}


//#region Dspecial 2
// SL Dspec Power Dunk
if(attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	
	
	if(window == 5 && window_timer == 0){
		destroy_hitboxes();// Destroy traveling hitbox so it does not interfere with final hitbox
		// Reset SL Mode upon explosion ( SL is not lost if he is hit out before this explosion happens
		take_damage(player, -1, floor(SL_damage_timer / SL_num_of_frames_per_damage));
		SL_damage_timer = 0;
		SL_activated_by_opponent_number = -1; // Attacker's player number. Only used for stat tracking, and should be set to -1 if the damage is not from another player
		Set_SL_Mode(false);
		spawn_hit_fx(x + (spr_dir * 64),y,hfx_dspecial_2_floor);
	} 
	
	// Grab Logic
	//hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!

	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	//if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	if(grabbed_player_obj != noone){ // Only run this code if an opponent is hit
		if (window >= get_attack_value(AT_DSPECIAL_2,AG_NUM_WINDOWS) - 1) { grabbed_player_obj = noone; } // Relase before last window
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			//grabbed_player_obj.can_wall_jump = false;
			//grabbed_player_obj.can_wall_cling = false;
			grabbed_player_obj.can_shield = false;
			grabbed_player_obj.can_wall_tech = false;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window < get_attack_value(AT_DSPECIAL_2,AG_NUM_WINDOWS) - 1){ // Neutral
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 30 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
		}
	}
}

//#endregion

//#region Fspecial
if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    can_wall_jump = true;
    can_fast_fall = false;
    move_cooldown[AT_FSPECIAL] = 30;
    move_cooldown[AT_FSPECIAL_AIR] = 30;
    
    // Draw Y offsets
    // If this is the last window and the last frame, unset this offset.
    if(window >= get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
    	draw_y = 0; // Set draw cause the sprite roation messed with y drawing
    }
    // Draw with this offset
    else{
    	draw_y = -1 * (122 - 90); // Set draw cause the sprite roation messed with y drawing
    }
    
    switch(window){
        case 1: // start up
        // Store resources at start to prevent refresh on ground bounce
        	old_number_of_djumps = djumps;
        	old_has_airdodge = has_airdodge;
        	
        case 2: // charging
        	Get_Direction();
		    resolve_sprite_direction_airdash();
		    // Directional Arrow Spawn logic
		    if(!instance_exists(fspecial_directional_arrow_obj)){
		    fspecial_directional_arrow_obj = spawn_hit_fx(x,y-40,fspecial_directional_arrow);
		    }
		    // Directional Arrow Image Rotation
		    var temp_air_dash_draw_angle_for_arrow = temp_air_dash_draw_angle;
		    var temp_arrow_spr_dir = spr_dir;
		    with(fspecial_directional_arrow_obj){
				draw_angle = temp_air_dash_draw_angle_for_arrow;
				spr_dir = temp_arrow_spr_dir; // FLip sprite direction cause otherwise it does not account for backwards directions
		    }
		    //Reset Offsets at beginning windows incase the offset was not adjusted because he was hit mid dash
		    //sprite_change_offset("fspecial", 94, 122);
            //sprite_change_offset("sl_fspecial", 94, 122);
        break;
        case 3: // Apply Speed
            if(window_timer == 1){
                var temp_air_dash_hsp,temp_air_dash_vsp;
                var air_dash_total_speed = 12;
                var verticle_direction_boost = 1;
                
                // Numpad Direction
				Get_Direction();
            	
            	// Override Direction if on the ground to prevent down angle on ground
            	if(attack == AT_FSPECIAL){
            	    switch(air_dash_direction){
            	        case 1: // Left Down set to left
            	            air_dash_direction = LEFT_DIRECTION;
        	            break;
            	        case 2: // Down set to neutral
            	            air_dash_direction = NEUTRAL_DIRECTION;
        	            break;
            	        case 3: // Right down set to Right
            	            air_dash_direction = RIGHT_DIRECTION;
        	            break;
            	    }
            	}
            	
                // Flip direction if Airdashing behind you
				resolve_sprite_direction_airdash();
                
                // Get Speed Directional To Set
                temp_air_dash_hsp = resolve_directional_speed_hsp(air_dash_total_speed);
                temp_air_dash_vsp = resolve_directional_speed_vsp(air_dash_total_speed,verticle_direction_boost);
                
                // Set Speed to window
                set_window_value(attack,4,AG_WINDOW_HSPEED,temp_air_dash_hsp);
                set_window_value(attack,4,AG_WINDOW_VSPEED,temp_air_dash_vsp);
                //set_attack(AT_EXTRA_3);
            }
        break;
        case 4: // Moving Frames
            // Draw Stuff
            //draw_y = -1 * (122 - 90); // Set draw cause the sprite roation messed with y drawing
            //sprite_change_offset("fspecial", 94, 90); // Set offset to center
            //sprite_change_offset("sl_fspecial", 94, 90); // Set offset to center
            spr_angle = temp_air_dash_draw_angle; // Draw angle correctly
            
            // Getting a hit Bounce
            if(has_hit_player == true){
                //print("hit player");
                //draw_y = 0;
                window = 11;
                window_timer = 0;
                old_vsp = -8;
                old_hsp = 0;
                //sprite_change_offset("fspecial", 94, 122);
                //sprite_change_offset("sl_fspecial", 94, 122);
                spr_angle = 0;
                destroy_hitboxes();
                //print(hsp)
            }
            
            // Ground Bounce Code
            if(!free && attack == AT_FSPECIAL_AIR && (air_dash_direction == DOWN_LEFT_DIRECTION || air_dash_direction == DOWN_DIRECTION || air_dash_direction == DOWN_RIGHT_DIRECTION)){
                //draw_y = 0;
                window = 11; 
                window_timer = 0;
                vsp = -8;
                //sprite_change_offset("fspecial", 94, 122);
                //sprite_change_offset("sl_fspecial", 94, 122);
                spr_angle = 0;
                destroy_hitboxes();
            }
        break;
        
        case 5: // Tranisiton to endlag
            // Draw Stuff
            //draw_y = 0;
            //sprite_change_offset("fspecial", 94, 122);
            //sprite_change_offset("sl_fspecial", 94, 122);
            spr_angle = 0;
            
            // Ground Bounce Code
            if(!free && attack == AT_FSPECIAL_AIR && (air_dash_direction == DOWN_LEFT_DIRECTION || air_dash_direction == DOWN_DIRECTION || air_dash_direction == DOWN_RIGHT_DIRECTION)){
                //draw_y = 0;
                window = 11;
                window_timer = 0;
                vsp = -8;
                //sprite_change_offset("fspecial", 94, 122);
                //sprite_change_offset("sl_fspecial", 94, 122);
                spr_angle = 0;
                destroy_hitboxes();
            }
        case 6: // Endlag Code below runs above code but has this locked out to window 6 only
        // Cannot ground bouce in window 6
            if(!free && window == 6 && attack == AT_FSPECIAL_AIR && window_timer > 8 && !SL_mode_active){attack_end();destroy_hitboxes();set_state(PS_PRATLAND);}
            if(!free && window == 6 && attack == AT_FSPECIAL_AIR && window_timer > 8 && SL_mode_active){attack_end();destroy_hitboxes();set_state(PS_LAND);}
            if(!free && window == 6 && attack == AT_FSPECIAL && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) - 1){
                //print(window)
                //print(window_timer)
                window = 7; // Landing Window normal Fspecial
                window_timer = 0;
            }
        break;
            
        case 11: // Bounce Window
            //draw_y = 0;
            //sprite_change_offset("fspecial", 94, 122);
            destroy_hitboxes();
            djumps = old_number_of_djumps;
        	has_airdodge = old_has_airdodge;
            //print(hsp)
        break;
    }
}
//#endregion

//#region AT EXTRA 3 SL Air Dodge
if(attack == AT_EXTRA_3){
	resolve_sprite_direction_airdash()
    // Draw Y offsets
    // If this is the last window and the last frame, unset this offset.
    if(window >= get_attack_value(attack,AG_NUM_WINDOWS) && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){
    	draw_y = 0; // Set draw cause the sprite roation messed with y drawing
    }
    // Draw with this offset
    else{
    	draw_y = -1 * (134 - 100); // Set draw cause the sprite roation messed with y drawing
    }
	switch(window){
		case 2:
	        // Change Angle
            //draw_y = -1 * (122 - 90); // Set draw cause the sprite roation messed with y drawing
            //sprite_change_offset("sl_airdash", 94, 90); // Set offset to center
            spr_angle = temp_air_dash_draw_angle; // Draw angle correctly
            break;
		case 3:
		case 1:
		    // Reset Angle
            //draw_y = 0;
            //sprite_change_offset("sl_airdash", 94, 122);
            spr_angle = 0;
		break;
	}
}

//#endregion

//#region Nspecial
if(attack == AT_NSPECIAL){
	can_wall_jump = true; // Wall Jump out of the attack
	can_fast_fall = false;
    if(window == 1 && window_timer == (get_window_value(attack,window,AG_WINDOW_LENGTH))){
        if(up_down){window = 4; window_timer = 0} // Upward Angle
        if(down_down){window = 5; window_timer = 0} // Downward Angles
    }
    // Spawn Dissapation Effects at variable angles
    switch(window){
    	case 4: // Up direction
    		if(window_timer == floor(get_window_value(AT_NSPECIAL,window,AG_WINDOW_LENGTH)/2) - 1){
    			var temp_nspecial_disspation_obj = spawn_hit_fx(x + (spr_dir * 100),y- 100,hfx_nspecial_dissipation);
    			temp_nspecial_disspation_obj.draw_angle = spr_dir * 45;
    		}
    	break;
    	case 2: // Middle Direction
    		if(window_timer == floor(get_window_value(AT_NSPECIAL,window,AG_WINDOW_LENGTH)/2) - 1){
				var temp_nspecial_disspation_obj = spawn_hit_fx(x + (spr_dir * 100),y - 60,hfx_nspecial_dissipation);
				temp_nspecial_disspation_obj.draw_angle = 0;
    		}
    	break;
    	case 5: // Down Direction
    		if(window_timer == floor(get_window_value(AT_NSPECIAL,window,AG_WINDOW_LENGTH)/2) - 1){
				var temp_nspecial_disspation_obj = spawn_hit_fx(x + (spr_dir * 110),y - 0,hfx_nspecial_dissipation);
				temp_nspecial_disspation_obj.draw_angle = spr_dir * 45 * -1;
    		}
    	break;
    }
    
}

//Nspecial intro Fthrow
if (attack == AT_FTHROW && instance_exists(grabbed_player_obj)) {
	// Prevent Galaxy interuptions
	if(other_player_galaxied = true){
		//attack_end(); 
		//destroy_hitboxes();
		// Determine which window to leave them in if the galaxy occurs
		switch(nspecial_grab_direction){
			case NEUTRAL_DIRECTION:
				window = 2;
				window_timer = 2;
			break;
			case UP_DIRECTION:
				window = 4;
				window_timer = 2;
			break;
			case DOWN_DIRECTION:
				window = 6;
				window_timer = 2;
		}
		set_attack_value(attack,AG_NUM_WINDOWS,window)
		grabbed_player_obj.hitstop = 20; // Normal Galaxy Amount
		grabbed_player_obj = noone; // Drop opponent
	}
	move_cooldown[AT_NSPECIAL] = 30;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
	//print(window)
	// Set direction
	//print(grabbed_player_obj.free);
	var stage_y = get_stage_data( SD_Y_POS );
	var distance_y_from_stage = stage_y  - y;
	//print("Y: " + string(y) + "/ Stage: " + string(stage_y));
	//print(distance_y_from_stage);
	if(nspecial_grab_direction == DOWN_DIRECTION && distance_y_from_stage < 50){
		nspecial_grab_direction = NEUTRAL_DIRECTION;
	}
	//Determine what Direction this is to set rest of the attack. Dynaically allocate windows
	if(window == 1 && window_timer == 0){
		switch(nspecial_grab_direction){
			case UP_DIRECTION:
				window = 3;
				set_attack_value(AT_FTHROW,AG_NUM_WINDOWS,4);
				// Shock Hitboxes
				for(var current_hitbox = 1; current_hitbox < 4; current_hitbox++){
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_WINDOW,3);
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,3,HG_HITBOX_X));
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,3,HG_HITBOX_Y));
				}
				//Final Hitbox
					set_hitbox_value(AT_FTHROW,5,HG_WINDOW,4);
					set_hitbox_value(AT_FTHROW,5,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,3,HG_HITBOX_X));
					set_hitbox_value(AT_FTHROW,5,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,3,HG_HITBOX_Y));
			break;
			
			case DOWN_DIRECTION:
				window = 5;
				// Shock Hitboxes
				set_attack_value(AT_FTHROW,AG_NUM_WINDOWS,6);
				for(var current_hitbox = 1; current_hitbox < 4; current_hitbox++){
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_WINDOW,5);
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,6,HG_HITBOX_X));
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,6,HG_HITBOX_Y));
				}
				//Final Hitbox
				set_hitbox_value(AT_FTHROW,5,HG_WINDOW,6);
				set_hitbox_value(AT_FTHROW,5,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,6,HG_HITBOX_X));
				set_hitbox_value(AT_FTHROW,5,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,6,HG_HITBOX_Y));
			break;
			
			case NEUTRAL_DIRECTION: // Neutral the same as default in case
			default:
				window = 1;
				set_attack_value(AT_FTHROW,AG_NUM_WINDOWS,2);
				// Shock Hitboxes
				for(var current_hitbox = 1; current_hitbox < 4; current_hitbox++){
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_WINDOW,1);
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,1,HG_HITBOX_X));
					set_hitbox_value(AT_FTHROW,current_hitbox,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,1,HG_HITBOX_Y));
				}
				//Final Hitbox
				set_hitbox_value(AT_FTHROW,5,HG_WINDOW,2);
				set_hitbox_value(AT_FTHROW,5,HG_HITBOX_X,get_hitbox_value(AT_NSPECIAL,1,HG_HITBOX_X));
				set_hitbox_value(AT_FTHROW,5,HG_HITBOX_Y,get_hitbox_value(AT_NSPECIAL,1,HG_HITBOX_Y));
			break;
		}
	}
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) // Neutral
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 180 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if(window == 3){// Upwards
		//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 150 * spr_dir;
			var pull_to_y = -70;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		
		}
		
		if(window == 5){// Downwards
		//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 150 * spr_dir;
			var pull_to_y = 70;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}


//#endregion

//#region Ustrong / Uthrow
//SL Ustrong into Uthrow
if (attack == AT_UTHROW && instance_exists(grabbed_player_obj)) {
	// Prevent Galaxy interuptions
	if(other_player_galaxied = true){
		window = 2;
		window_timer = 1;
		set_attack_value(attack,AG_NUM_WINDOWS,window)
		grabbed_player_obj.hitstop = 20; // Normal Galaxy Amount
		grabbed_player_obj = noone; // Drop opponent
	}
	move_cooldown[AT_USTRONG] = 30;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!

	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	//if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	if (window >= 2) { grabbed_player_obj = noone; } // Relase before last window
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1){ // Neutral
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = floor(get_hitbox_value(AT_UTHROW,5,HG_HITBOX_Y));
			//print(pull_to_y);
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

//#endregion

//#region Dair / Dthrow
//SL Ustrong into Uthrow
if (attack == AT_DTHROW && instance_exists(grabbed_player_obj)) {
	// Prevent Galaxy interuptions
	if(other_player_galaxied = true){
		window = 2;
		window_timer = 1;
		set_attack_value(attack,AG_NUM_WINDOWS,window)
		grabbed_player_obj.hitstop = 20; // Normal Galaxy Amount
		grabbed_player_obj = noone; // Drop opponent
	}
	
	move_cooldown[AT_DAIR] = 30;
	can_fast_fall = false;
	hurtboxID.sprite_index = get_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE); // Set proper hurtbox, thanks Shampoo!
	
	// Relocate hitboxes if the stage is too low
	var stage_y = get_stage_data( SD_Y_POS );
	var distance_y_from_stage = stage_y - y;
	/*
	SD_X_POS	The x position of the left side of the main stage. Use room_width minus this value to get the x position of the right side of the stage
	*/
	
	var stage_x_left = get_stage_data(SD_X_POS);
	var stage_x_right = room_width - get_stage_data(SD_X_POS);
	// Detect Stage and set distance height of all hitboxes
	if(distance_y_from_stage < 100 && (x > stage_x_left && x < stage_x_right)){ // Abover stage and not off ledge
		for(var current_hitbox = 1; current_hitbox < 6; current_hitbox++){
			set_hitbox_value(AT_DTHROW,current_hitbox,HG_HITBOX_Y,distance_y_from_stage);
		}
	}

	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	//if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	if (window >= 2) { grabbed_player_obj = noone; } // Relase before last window
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		//grabbed_player_obj.can_wall_jump = false;
		//grabbed_player_obj.can_wall_cling = false;
		grabbed_player_obj.can_shield = false;
		grabbed_player_obj.can_wall_tech = false;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1){ // Neutral
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = get_hitbox_value(AT_DTHROW,5,HG_HITBOX_X) * spr_dir;
			// Detect if on stage and just above ground to pull them to a particular spot.
			if((x > stage_x_left && x < stage_x_right)){
				if(distance_y_from_stage > get_hitbox_value(AT_DTHROW,5,HG_HITBOX_Y) ){
					var pull_to_y = get_hitbox_value(AT_DTHROW,5,HG_HITBOX_Y);
				}
				else var pull_to_y = distance_y_from_stage;
			}
			else var pull_to_y = get_hitbox_value(AT_DTHROW,5,HG_HITBOX_Y);
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

//#endregion

//#region VFX Controller
switch(attack){
	case AT_USPECIAL:
		if(window == 1 && window_timer == get_window_value(attack,1,AG_WINDOW_LENGTH) && !hitpause){
			spawn_hit_fx(x,y,hfx_uspecial_jumpfx);
		}
	break;
	case AT_NSPECIAL:
		if(window == 1 && window_timer == 1 && !hitpause){
			spawn_hit_fx(x - (50 * spr_dir),y - 60,hfx_parryfx);
		}
	
	case AT_DTILT:
	if(window == 1 && window_timer == (get_window_value(attack,1,AG_WINDOW_LENGTH) - 1) && !hitpause){
			spawn_base_dust(x, y, "dash_start",spr_dir);
		}
	break;
	case AT_UAIR:
		//draw_indicator = false; // Surpress indicator
		hud_offset = 45;
		if(window == 1 && window_timer == get_window_value(attack,1,AG_WINDOW_LENGTH) && !hitpause){
			var temp_x = x + get_hitbox_value(AT_UAIR,2,HG_HITBOX_X) * spr_dir;
			var temp_y = y + get_hitbox_value(AT_UAIR,2,HG_HITBOX_Y);
			spawn_hit_fx(temp_x,temp_y,hfx_uair_sweetspot);
			
		}
	break;
	case AT_FSTRONG:
		if(window == 3 && window_timer == 1){
			spawn_base_dust(x, y, "dash_start",spr_dir);
		}
	break;
	case AT_DSTRONG:
		if(window == 4 && window_timer == 1 && !hitpause){
			spawn_base_dust(x, y, "land",0);
		}
	break;
	default:
	break;
}

//#endregion

//#region Screen Shake Controller
switch(attack){
	case AT_DSPECIAL_2:
		if(window == 5 && window_timer == 0){
			shake_camera(4,6);
		}
	break;
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		if(window == 11 && window_timer == 0){
			shake_camera(2,4);
		}
	break;
	case AT_DSPECIAL:
		if((window == 2 || window == 4) && (window_timer == 1)){
			shake_camera(2,4);
		}
	break;
	default:
	break;
}

//#endregion
//print(attack)
//#region SFX Controller
var window_timer_last_frame = (get_window_value(attack,window,AG_WINDOW_LENGTH) - 1);
switch(attack){
	case AT_JAB:
		insert_sfx(1,window_timer_last_frame,"slash",.5,1.5,false);
		insert_sfx(4,window_timer_last_frame,"uair_slash",.5,1.5,false);
		insert_sfx(7,window_timer_last_frame,"sfx_jab_bite",.5,1,false);
	break;
	
	case AT_FTILT:
		insert_sfx(1,window_timer_last_frame,"sfx_ftilt",.5,.8,false);
	break;
	case AT_UTILT:
		insert_sfx(1,window_timer_last_frame,"utilt_slash",.8,1,false);
		insert_sfx(1,window_timer_last_frame,"sfx_Utilt",.4,.8,false);
	break;
	case AT_DTILT:
		insert_sfx(1,window_timer_last_frame,"sfx_dtilt",.4,.8,false);
	break;
	case AT_FSTRONG:
		insert_sfx(3,window_timer_last_frame,"slash",.5,1.2,false);
		insert_sfx(3,window_timer_last_frame,"sfx_dashattack",.5,.8,false);
		//print(window_timer)
	break;
	case AT_USTRONG:
		insert_sfx(3,1,"sfx_fspecial",.15,1.5,false);
		insert_sfx(3,window_timer_last_frame,"sfx_swipe_heavy2",.7,.85,true);
	break;
	case AT_DSTRONG:
		insert_sfx(3,window_timer_last_frame,"sfx_dstrong",.5,.9,false);
	break;
	case AT_DATTACK:
		insert_sfx(2,window_timer_last_frame,"sfx_dashattack",.2,1.2,false);
		insert_sfx(2,window_timer_last_frame,"slash",.3,1.2,false);
	break;
	case AT_NAIR:
		insert_sfx(1,window_timer_last_frame,"nair_kick",.7,1,false);
		insert_sfx(4,1,"utilt_slash",.7,1,false);
		insert_sfx(7,1,"slash",.7,1.2,false); // neutral
		insert_sfx(10,1,"utilt_slash",.7,.8,false); // Down
		insert_sfx(13,1,"nair_kick",.7,.95,false); // Up
	break;
	case AT_FAIR:
		insert_sfx(1,window_timer_last_frame,"slash",.7,1.05,false);
		
	break;
	case AT_DAIR:
		insert_sfx(1,window_timer_last_frame,"sfx_swipe_heavy2",.7,.85,true);
	break;
	case AT_BAIR:
		insert_sfx(1,1,"slash",.7,.65,false);
	break;
	case AT_UAIR:
		insert_sfx(1,window_timer_last_frame,"slash",.5,1.3,false);
		insert_sfx(1,window_timer_last_frame,"sfx_Uair",.5,1,false);
	break;
	case AT_NSPECIAL:
		insert_sfx(1,1,"mfx_star",.65,2,true);
		insert_sfx(1,window_timer_last_frame,"sfx_swipe_heavy2",.65,.85,true);
	break;
	case AT_FSPECIAL:
	case AT_FSPECIAL_AIR:
		insert_sfx(1,window_timer_last_frame,"sfx_absa_current_pop",.5,3,true);
		insert_sfx(2,window_timer_last_frame,"fspecial_swoosh",.3,1.2,false);
	break;
	case AT_DSPECIAL:
	break;
	case AT_DSPECIAL_2: // SL Powerdunk
		// Starrt up
		insert_sfx(1,1,"sfx_dspecial_2_start",.75,1,false);
		insert_sfx(1,1,"sfx_sL dspecial",.75,1,false);
		// looping Window
		insert_sfx(4,1,"sfx_absa_singlezap1",.75,1,true);
		// Landing
		insert_sfx(5,0,"sfx_dspecial_2",.75,1,false);
		insert_sfx(5,0,"sfx_sL dspecial_impact",.75,1,false);
	
	break;
	case AT_USPECIAL:
		insert_sfx(1,window_timer_last_frame,"sfx_swipe_heavy2",.6,.6,true);
		insert_sfx(1,1,"sfx_absa_boltcloud",.5,1.5,true);
	break;
	case AT_EXTRA_2: // Ground Dash
	case AT_EXTRA_3: // Airdash
		insert_sfx(1,1,"fspecial_swoosh",.3,1.2,false);
	break;
	case 49: // AT_FINAL_STRONG
		insert_sfx(1,1,"sfx_absa_boltcloud",.5,.8,true); // Start up bolt cloud noise
		insert_sfx(2,window_timer_last_frame,"sfx_swipe_heavy2",.65,.85,true); // Swipe Noise
		insert_sfx(3,window_timer_last_frame,"sfx_sL dspecial_impact",.75,1,false); // Impact Noise
		insert_sfx(4,window_timer_last_frame,"fspecial_swoosh",.8,.8,false); // Traveling
	default:
	break;
}

//#endregion

#define Get_Direction()
{
	if(up_down && !right_down && !down_down && !left_down){air_dash_direction = UP_DIRECTION;}
	if(up_down && right_down && !down_down && !left_down){air_dash_direction = UP_RIGHT_DIRECTION;}
	if(!up_down && right_down && !down_down && !left_down){air_dash_direction = RIGHT_DIRECTION;}
	if(!up_down && right_down && down_down && !left_down){air_dash_direction = DOWN_RIGHT_DIRECTION;}
	if(!up_down && !right_down && down_down && !left_down){air_dash_direction = DOWN_DIRECTION;}
	if(!up_down && !right_down && down_down && left_down){air_dash_direction = DOWN_LEFT_DIRECTION;}
	if(!up_down && !right_down && !down_down && left_down){air_dash_direction = LEFT_DIRECTION;}
	if(up_down && !right_down && !down_down && left_down){air_dash_direction = UP_LEFT_DIRECTION;}
	if(!up_down && !right_down && !down_down && !left_down){air_dash_direction = NEUTRAL_DIRECTION;} // Neutral
	//return air_dash_direction;
}

#define resolve_sprite_direction_airdash()
{
	if(spr_dir == 1){// Facing right
	// Spr direction flip
	    switch(air_dash_direction){
	        case UP_DIRECTION:// Straight Up
	            temp_air_dash_draw_angle = 90;
	        break;
	        case DOWN_DIRECTION: // Straight Down
	            temp_air_dash_draw_angle = 270;
	        break;
	        // Forward Directions
	        case UP_RIGHT_DIRECTION: // Forward Up
	            temp_air_dash_draw_angle = 45;
	        break;
	        case RIGHT_DIRECTION: // Forward
	        case NEUTRAL_DIRECTION: 
	            temp_air_dash_draw_angle = 0;
	        break;
	        case DOWN_RIGHT_DIRECTION: // Forward Down
	            temp_air_dash_draw_angle = 315;
	        break;
	        // Reverse Direction
	        case UP_LEFT_DIRECTION:
	        case LEFT_DIRECTION:
	        case DOWN_LEFT_DIRECTION:
	            spr_dir = -1;
	        break;
	    }
	}
	if(spr_dir == -1){// Facing Left
	    switch(air_dash_direction){
	        case UP_DIRECTION: // Straight Up
	            temp_air_dash_draw_angle = -90;
	        break;
	        case DOWN_DIRECTION: // Straight Down
	            temp_air_dash_draw_angle = -270;
	        break;
	        // Forward Directions
	        case UP_LEFT_DIRECTION: // Forward Up
	            temp_air_dash_draw_angle = -45;
	        break;
	        case LEFT_DIRECTION: // Forward
	        case NEUTRAL_DIRECTION: 
	            temp_air_dash_draw_angle = 0;
	        break;
	        case DOWN_LEFT_DIRECTION: // Forward Down
	            temp_air_dash_draw_angle = -315;
	        break;
	        // Reverse Direction - Need these here cause the code execution order will not run the other if statement
	        case UP_RIGHT_DIRECTION: // Forward Up
	            temp_air_dash_draw_angle = 45;
	            spr_dir = 1;
	        break;
	        case RIGHT_DIRECTION: // Forward
	            temp_air_dash_draw_angle = 0;
	            spr_dir = 1;
	        break;
	        case DOWN_RIGHT_DIRECTION: // Forward Down
	            temp_air_dash_draw_angle = 315;
	            spr_dir = 1;
	        break;
	    }
	}
}

#define resolve_directional_speed_hsp(air_dash_total_speed)
{
	var temp_air_dash_hsp;
	switch(air_dash_direction){
	    case UP_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(90)) * spr_dir;
	    break;
		case UP_RIGHT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(45)) * spr_dir;
		break;
		case RIGHT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(0)) * spr_dir;
		break;
		case NEUTRAL_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed; // Dont care about sprite direction in this case
		break;
		case DOWN_RIGHT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(315)) * spr_dir;
		break;
		case DOWN_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(270)) * spr_dir;
		break;
		case DOWN_LEFT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(235)) * spr_dir;
		break;
		case LEFT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(180)) * spr_dir;
		break;
		case UP_LEFT_DIRECTION:
	    	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(135))* spr_dir;
		break;
	}
	return temp_air_dash_hsp;
}
#define resolve_directional_speed_vsp(air_dash_total_speed,verticle_direction_boost)
{
	var temp_air_dash_vsp;
	switch(air_dash_direction){
	    case UP_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(90)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 90 * spr_dir;
	    	break;
		case UP_RIGHT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(45)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 45 * spr_dir;
			break;
		case RIGHT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(0)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 0 * spr_dir;
			break;
		case NEUTRAL_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(0)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 0 * spr_dir;
			break;
		case DOWN_RIGHT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(315)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 315 * spr_dir;
			break;
		case DOWN_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(270)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 270 * spr_dir;
			break;
		case DOWN_LEFT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(235)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 235 * spr_dir;
			break;
		case LEFT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(180)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 180 * spr_dir;
			break;
		case UP_LEFT_DIRECTION:
	    	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(135)) * verticle_direction_boost;
	    	//temp_air_dash_draw_angle = 135 * spr_dir;
			break;
	}
	return temp_air_dash_vsp;
}

#define Set_SL_Mode(mode)
{
    switch(mode){
        case 0: // False
            SL_mode_active = false;
            SL_activated_by_opponent_ID = noone;
            init_shader();
            if(!instance_exists(hfx_sl_untransform_obj)){ hfx_sl_untransform_obj = spawn_hit_fx(x,y - 32,hfx_sl_untransform);}
            sound_play(asset_get("mfx_unstar" ),false,noone,1,.75);
            sl_idle_but_better_flag = false;
        break;
        
        case 1: // True
            SL_mode_active = true;
            init_shader();
        break;
        
        default:
        break;
    }
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define insert_sfx(temp_window,temp_window_timer,temp_sound_string,temp_volume,temp_pitch,use_asset_version)
{
	var temp_sfx_obj;
	if(window == temp_window && window_timer == temp_window_timer && !hitpause){
		switch(use_asset_version){
			case 0: // False
				temp_sfx_obj = sound_play(sound_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			case 1: // True
				temp_sfx_obj = sound_play(asset_get(temp_sound_string),false,noone,temp_volume,temp_pitch);
			break;
			default: // Error
				temp_sfx_obj = noone; 
			break;
		}
	}
	return temp_sfx_obj;
}
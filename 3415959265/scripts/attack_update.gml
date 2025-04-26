//attack_update.gml

custom_attack_grid();

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL_AIR ||  attack == AT_NSPECIAL_AIR) trigger_b_reverse();


if state_timer > 1{ // don't run out mid-attack
	
	if (is_guardian || is_sparking) meter = max(meter, 2);
}


switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_JAB: 
	    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
	        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
	        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
	        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
	            set_state(PS_IDLE);
	            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
	            // that doesn't happen in base cast so this fixes that
	            was_parried = false; 
	        }
	    } else {
	        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
	    }	
		break;
	case AT_DATTACK:
		switch (window)
		{
			case 3:
				if (window_time_is(3))
				{
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-90, vfx_dattack1);	
					temp_fx.hsp += -2*spr_dir
					temp_fx.vsp += 0.5
				}
				if (window_time_is(6))
				{
					var temp_fx = spawn_hit_fx(x-86*spr_dir, y-65, vfx_dattack2);	
					temp_fx.hsp += -2*spr_dir
					temp_fx.vsp += -0.5
				}				
				break;
		}
		break;
	case AT_DTILT: //cancel attack to jump
		switch (window)
		{
			case 2: case 3:
				if (has_hit && window == 2 && !was_parried) can_jump = true;
				break;
		}
		break;
	case AT_UTILT:
		if (window == 1 && window_timer == window_end)  // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		{
			var temp_fx = spawn_hit_fx(x-68*spr_dir, y-130, vfx_utilt);			
		}
		break;
	case AT_DAIR:
		break;
	case AT_DSTRONG:
		switch (window)
		{
			case 1:
				set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
				if (has_rune("B")){
					set_window_value(attack, 5, AG_WINDOW_LENGTH, 10);
					set_window_value(attack, 9, AG_WINDOW_LENGTH, 10);
				}
				else{
					set_window_value(attack, 5, AG_WINDOW_LENGTH, 14);
					set_window_value(attack, 9, AG_WINDOW_LENGTH, 13);					
				}
				break;
			case 2:
				if (strong_charge > 20) && (is_sparking || is_guardian || is_super || has_rune("G"))
				{
					set_window(6);
					set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 6);
					strong_charge = 0;	
					sound_play(sound_get("sfx_saya_chargemax1"), 0, noone, 1.1, 1.1);
					var temp_fx = spawn_hit_fx(x-100*spr_dir, y-120, vfx_shine);	
					temp_fx.depth = depth + 1;
				}
				break;
			case 3: case 7: // Charged and uncharged first hits
			    if (window_timer == window_end) { // Ensure this executes only once per window // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
			        var _y = rayDown("par_block", "par_jumpthrough"); // Get the valid ground level
			        var offset_x = (state == 3) ? -60 : -50;
			        var vfx = (window == 3) ? vfx_dstrong_uncharged : vfx_dstrong_charged;
			        var sfx = (window == 3) ? "sfx_saya_blow_heavy1" : "sfx_saya_blow_heavy2";
			
			        spawn_hit_fx(x + offset_x * spr_dir, y - 94, vfx);
			        sound_play(sound_get(sfx), 0, noone, 0.5, 1.1);
			
			        // **Spawn Article Using the Define Instead**
			        spawn_article(30, "obj_article1"); 
			    }
			    break;
			case 8:
			    var _y = rayDown("par_block", "par_jumpthrough");
			
			    // Handling Wave 2 spawn
			    if (window_time_is(3)) {
			        var positions = [
			            {x: x + 150 * spr_dir, y: _y + 16, type: "par_block", spawn_var: "can_spawn_1", vfx: vfx_dstrong_charged_multi}, //Old was 150 x 16 y
			            {x: x + 150 * spr_dir, y: _y + 61, type: "par_jumpthrough", spawn_var: "can_spawn_1_plat", vfx: vfx_dstrong_charged_multi} //Old was 150 //Old was 150 x 16 y
			        ];
			        for (var i = 0; i < array_length(positions); i++) {
			            var pos = positions[i];
			            if (place_meeting(pos.x, pos.y, asset_get(pos.type))) {
			                spawn_hit_fx(x + 30 * spr_dir, y - 94, pos.vfx);
			                if (pos.spawn_var == "can_spawn_1") {
			                    can_spawn_1 = true;
			                } else {
			                    can_spawn_1_plat = true;
			                }
			            }
			        }
			    }
			
			    // Handling Wave 3 spawn
			    if (window_time_is(9)) {
			        var positions = [
			            {x: x + 200 * spr_dir, y: _y + 16, type: "par_block", spawn_var: "can_spawn_2", vfx: vfx_dstrong_charged_multi}, //Old was 220 x 16 y
			            {x: x + 200 * spr_dir, y: _y + 61, type: "par_jumpthrough", spawn_var: "can_spawn_2_plat", vfx: vfx_dstrong_charged_multi} //Old was 220 x 16 y
			        ];
			        for (var i = 0; i < array_length(positions); i++) {
			            var pos = positions[i];
			            if (place_meeting(pos.x, pos.y, asset_get(pos.type))) {
			                spawn_hit_fx(x + 120 * spr_dir, y - 94, pos.vfx);
			                if (pos.spawn_var == "can_spawn_2") {
			                    can_spawn_2 = true;
			                } else {
			                    can_spawn_2_plat = true;
			                }
			            }
			        }
			    }
			
			    // Handling Wave 2 attack creation
			    if (window_time_is(11)) {
			        if (can_spawn_1) {
			            sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.6);
			            create_hitbox(AT_DSTRONG, 5, x, y);
			            can_spawn_1 = false;
			        }
			        if (can_spawn_1_plat) {
			            sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.6);
			            create_hitbox(AT_DSTRONG, 5, x, y);
			            can_spawn_1_plat = false;
			        }
			    }
			
				// Handling Wave 3 attack creation
				if (window_time_is(17)) {
				    if (can_spawn_2 || can_spawn_2_plat) {
				        var sound = sound_get("sfx_saya_explosion2");
				        var create_y;
				
				        if (can_spawn_2) {
				            create_y = _y + 16;
				            create_hitbox(AT_DSTRONG, 6, x, y);
				            can_spawn_2 = false;
				        }
				        if (can_spawn_2_plat) {
				            create_y = _y - 30;
				            create_hitbox(AT_DSTRONG, 6, x, y);
				            can_spawn_2_plat = false;
				        }
				
				        var _y = rayDown("par_block", "par_jumpthrough");
				        var offset_x = 200 // Fixed offset for ranged article placement
				
				        // Reset article count before counting
				        artc_count = 0;
				
				        // Counting existing articles in the ds_list
				        for (var i = 0; i < ds_list_size(article_list); i++) {
				            var existing_article = article_list[| i];
				            if (instance_exists(existing_article)) {
				                artc_count++;
				            }
				        }
				
				        // Only proceed if there are less than max_articles
				        if (artc_count < max_articles) {
				            // **Spawn article at ranged position using define**
				            spawn_article(offset_x, "obj_article1");
				        }
				    }
				}
		    	break;
		}
		break;
	case AT_USTRONG:
	    if (instance_exists(my_grab_id)) {
	        if (window == 7) {
	            my_grab_id.attack_invince = 1;
	        } else {
	            my_grab_id.attack_invince = 0; 
	        }
	    }	
		if (window == 5 && window_time_is(20))
		{
			spawn_hit_fx(x-80*spr_dir, y-130, vfx_ustrong);
			sound_play(sound_get("sfx_saya_artcblast1"), 0, noone, 0.4, 1.1);
			
		}
		if (window == 8 && window_time_is(1))
		{
			var temp_fx = spawn_hit_fx(x-90*(-spr_dir), y-94, vfx_slam);
			temp_fx.spr_dir = -spr_dir;
			temp_fx.depth = depth - 1;
			var temp_fx2 = spawn_hit_fx(x-90*(-spr_dir), y-94, vfx_slam_behind);
			temp_fx2.spr_dir = -spr_dir;	
			temp_fx2.spr_dir.depth = depth + 1;	
			if (has_rune("K")) {
			    var offset_x = (state == 3) ? -60 : -50;
			    spawn_article(offset_x, "obj_article1");
			}			
		}
		if (window == 1)
		{
			my_grab_id = noone;
			grab_time = 0;
		}
		if (is_sparking || is_guardian || is_super || has_rune("G")) && (has_hit)
		{
			if (window == 5 && window_time_is(15)) spawn_hit_fx(x-80*spr_dir, y-120, vfx_ustrong);
		}
		if (is_super && window == 7 && artc_ground != noone)
		{
			if (window_timer > 4) vsp -= 1.1;
			if (window_timer > 6)
			{
				teleport_to_article();	//super teleport			
			}			
		}
		if (my_grab_id != noone)
		{
			with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 4: case 5: //command grab code for multihit
						x = ease_sineInOut(x, other.x+1*other.spr_dir, other.grab_time, 3);
                		y = ease_sineInOut(y, other.y-32, other.grab_time, 3);
						break;
						
		            case 7:
		                var x_offset = (other.image_index >= 26 && other.image_index <= 29) ? 10 * other.spr_dir : 1 * other.spr_dir;
		                var y_offset = (other.image_index >= 28) ? 36 + (other.image_index - 28) * 10 : 32;
		                x = ease_sineInOut(x, other.x + x_offset, other.grab_time, other.grab_time + (other.image_index >= 25 ? 30 : 10));
		                y = ease_sineInOut(y, other.y - y_offset, other.grab_time, other.grab_time + (other.image_index >= 25 ? 30 : 10));
		                break;
					case 8:
						x = ease_sineInOut(x, other.x+5*other.spr_dir, other.grab_time, other.grab_time+20);
	    		       	y = ease_sineInOut(y, other.y-10, other.grab_time, other.grab_time+20);					
					
						with (other)
						{
							other.force_depth = true; //this allows us to change the depth of the enemy to make them appear in front
							other.depth = other.depth-1;							
							if (window_time_is(0)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								var throw_hbox = create_hitbox(AT_USTRONG, 7, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}	
							}
						}					
						break;
				}
			}
		}
		break;
	case AT_FSTRONG: //command grab / base punch
		can_fast_fall = false;
		if (instance_exists(my_grab_id)) {
		    if (my_grab_id != noone) {
		        // Windows where attack_invince should be 1
		        switch (window) {
		            case 5: case 6: case 7: case 8: 
		            case 11: case 12: case 13: 
		            case 16: case 19: case 21:
		                my_grab_id.attack_invince = 1;
		                break;
		            default:
		                my_grab_id.attack_invince = 0;
		                break;
		        }
		    }
		}
		switch (window)
		{
			case 1: //reset variables for command grab
				my_grab_id = noone; 
				grab_time = 0;
				set_window_value(attack, 7, AG_WINDOW_VSPEED, -4);								
				set_window_value(attack, 7, AG_WINDOW_HSPEED, 5);
				set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);	
				set_window_value(attack, 8, AG_WINDOW_LENGTH, 18) // Resets length of the descent window as the ground detection code changes the length to make it last longer and hit the ground
				set_window_value(attack, 13, AG_WINDOW_LENGTH, 18) // Resets length of the descent window as the ground detection code changes the length to make it last longer and hit the ground
				break;
			case 7: case 12: // Super teleporting code
				if (window_timer > 6 && artc_ground != noone && is_super)
				{
					teleport_to_article();	//super teleport						
				}
				break;
			case 20: case 22: //Walljump out of aerial launch windows
				if (!free) state = PS_LAND;
				can_wall_jump = true;						
				break;
			case 24:
				if (window_timer == window_end) cur_loop_sound = sound_play(sound_get("sfx_saya_charge"), 1, noone, 0.8); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
			case 25:
				if (window_timer == 1) sound_stop(cur_loop_sound); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				if (window_timer == window_end) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				{
					sound_play(sound_get("sfx_saya_wind_medium"), 0, noone, 0.5, 1.2); 
					//sound_play(sound_get("vc30"), 0, noone, 1, 1); 
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-86, vfx_fstrong);
					temp_fx.hsp += 0.5*spr_dir;						
				}				
				break;
				
		}
		if (my_grab_id != noone) //if you have grabbed someone
		{
			//"with" switches the perspective of the code, in this case to the grabbed player
			//if you want to reffer to yourself in this scenario you are called "other"
			with (my_grab_id)
			{
				
				hurt_img = 1;
				switch (other.window)
				{
					case 4: //go to window 4 (grab success window) and erase the grab hitbox
						with (other)
						{
							set_window(6);
							destroy_hitboxes();
						}
						break;
					case 6: //move grabbed player to the proper postion
						with (other) if (window == 6 && window_timer < 3)
						{
							if (left_down && spr_dir || right_down && -spr_dir) //Flips the direction of the throw
							{
								grab_time = 0;
								spr_dir = -spr_dir;
								set_window(11);
							}
							if (left_down && -spr_dir || right_down && spr_dir) // Increase distance of leap if forward is held in the respective direction
							{
								set_window_value(attack, 7, AG_WINDOW_VSPEED, -4-(3));								
								set_window_value(attack, 7, AG_WINDOW_HSPEED, 5+(3));
							
							}
							if (down_down) set_window(16);
						}						
						with (other)
						{
							
							other.force_depth = true; //this allows us to change the depth of the enemy to make them appear in front
							other.depth = other.depth-1;							
						}
						var x_offset = (other.image_index == 36) ? 32 * other.spr_dir : -32 * other.spr_dir;
						var y_offset = (other.image_index == 36) ? 8 : 32;
						
						x = ease_sineInOut(x, other.x + x_offset, other.grab_time, other.grab_time + ((other.image_index == 36) ? 10 : 40));
						y = ease_sineInOut(y, other.y - y_offset, other.grab_time, other.grab_time + ((other.image_index == 36) ? 10 : 40));
						break;
					case 7: //move grabbed player to the proper postion... again
						var x_offset = (other.image_index == 39) ? -24 * other.spr_dir :
						               (other.image_index == 40) ? 35 * other.spr_dir : 
						               50 * other.spr_dir;
						
						var y_offset = (other.image_index == 39) ? 32 :
						               (other.image_index == 40) ? 36 : 
						               20;
						
						var ease_duration = (other.image_index == 39) ? 20 : 
						                    (other.image_index == 40) ? 60 : 
						                    50;
						
						x = ease_sineInOut(floor(x), floor(other.x + x_offset), other.grab_time, other.grab_time + ease_duration);
						y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + ease_duration);					
						break;
					case 8: //Looping window
						with (other)
						{
							if (down_down) fall_through = true; //If down is held, can fall through platforms
							vsp += 1.1;
							if(window_timer == get_window_value(attack, 8, AG_WINDOW_LENGTH)) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
							{
								var range = 200; // Range of the collision check.
								var col = collision_line(x, y, x, y+range, asset_get("par_block"), true, true);
								if (col != noone) 
								{
									set_window_value(attack, 8, AG_WINDOW_LENGTH, 25)
								    									
								} else 
								{
									window = 19;
									window_timer = 0;
								}								
							}
						}
						x = ease_sineInOut(floor(x), floor(other.x+60*other.spr_dir), other.grab_time, other.grab_time+60);
	    		       	y = ease_sineInOut(floor(y), floor(other.y+10), other.grab_time, other.grab_time+60);	
						break;
					case 9:
						x = ease_sineInOut(x, other.x+60*other.spr_dir, other.grab_time, other.grab_time+10);
	    		    	y = ease_sineInOut(y, other.y+10, other.grab_time, other.grab_time+10);									
						with (other)
						{
							if (window_time_is(0)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								create_hitbox(AT_FSTRONG, 2, x, y);
								var temp_fx = spawn_hit_fx(x-140*(-spr_dir), y-94, vfx_slam);
								temp_fx.spr_dir = -spr_dir;
								temp_fx.depth = depth - 1;
								var temp_fx2 = spawn_hit_fx(x-140*(-spr_dir), y-94, vfx_slam_behind);
								temp_fx2.spr_dir = -spr_dir;	
								temp_fx2.spr_dir.depth = depth + 1;
								if (has_rune("K")) {
								    var offset_x = (state == 3) ? -60 : -50;
								    spawn_article(offset_x, "obj_article1");
								}							
							}
						}					
						break;
					case 11: // Turn around grabbed player movement
					    var x_offset = (other.image_index == 48) ? 32 * other.spr_dir : 
					                   (other.image_index == 49) ? 36 * other.spr_dir : 
					                   -24 * other.spr_dir;
					    var y_offset = (other.image_index == 48) ? 8 : 
					                   (other.image_index == 49) ? 10 : 
					                   20;
					                   
					    x = ease_sineInOut(floor(x), floor(other.x + x_offset), other.grab_time, (other.image_index == 48) ? 20 : other.grab_time + 15);
					    y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, (other.image_index == 48) ? 20 : other.grab_time + 15);
					
					    if (other.image_index == 48 || other.image_index == 50) {
					        other.force_depth = true; 
					        other.depth = (other.image_index == 48) ? other.depth - 1 : other.depth + 1;
					    }
					    break;
					
					case 12: // Turn around grabbed player movement... again
					    var x_offset = (other.image_index == 53) ? 20 * other.spr_dir : -32 * other.spr_dir;
					    var y_offset = (other.image_index == 51) ? 32 : 
					                   (other.image_index == 52) ? 36 : 
					                   10;
					
					    x = ease_sineInOut(floor(x), floor(other.x + x_offset), other.grab_time, (other.image_index == 53) ? other.grab_time + 60 : other.grab_time + 30);
					    y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, (other.image_index == 53) ? other.grab_time + 50 : other.grab_time + 30);
					
					    if (other.image_index == 53) {
					        other.force_depth = true; 
					        other.depth = other.depth - 1;
					    }
					    break;
					case 13: //Looping turnaround window
						with (other)
						{
							if (down_down) fall_through = true; //If down is held, can fall through platforms
							vsp += 1.1;
							other.force_depth = true; 
							other.depth = other.depth-1;
							if(window_timer == get_window_value(attack, 8, AG_WINDOW_LENGTH)) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
							{
								var range = 200; // Range of the collision check.
								var col = collision_line(x, y, x, y+range, asset_get("par_block"), true, true);
								if (col != noone) 
								{
									set_window_value(attack, 13, AG_WINDOW_LENGTH, 25)
								    									
								} else 
								{
									window = 21;
									window_timer = 0;
								}								
							}
						}
						x = ease_sineInOut(x, other.x+20*other.spr_dir, other.grab_time, other.grab_time+40);
	    		       	y = ease_sineInOut(y, other.y+10, other.grab_time, other.grab_time+30);	
						break;
					case 14:
						x = ease_sineInOut(x, other.x+30*other.spr_dir, other.grab_time, other.grab_time+30);
	    		       	//y = ease_sineInOut(y, other.y+1, other.grab_time, other.grab_time+30);					
					
						with (other)
						{
							if (window_time_is(0)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								var throw_hbox = create_hitbox(AT_FSTRONG, 2, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x-130*(-spr_dir), y-94, vfx_slam);
								temp_fx.spr_dir = -spr_dir;
								temp_fx.depth = depth - 1;
								var temp_fx2 = spawn_hit_fx(x-130*(-spr_dir), y-94, vfx_slam_behind);
								temp_fx2.spr_dir = -spr_dir;	
								temp_fx2.spr_dir.depth = depth + 1;	
								if (has_rune("K")) {
								    var offset_x = (state == 3) ? -60 : -50;
								    spawn_article(offset_x, "obj_article1");
								}									
							}
						}					
						break;	
					case 16: //Throw in place
						var x_offset = (other.image_index == 59) ? 32 : (other.image_index == 60) ? -24 : (other.image_index == 61) ? -28 : 20;
						var y_offset = (other.image_index >= 61) ? 36 : (other.image_index == 62) ? 16 : 8;
						
						x = ease_sineInOut(floor(x), floor(other.x + x_offset * other.spr_dir), other.grab_time, other.grab_time + 20);
						y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + 20);
						
						with (other) {
						    if (other.image_index != 62) {
						        other.force_depth = true;
						        other.depth = other.depth - 1;
						    }
						}							
						break;
					case 17:
						x = ease_sineInOut(x, other.x+20*other.spr_dir, other.grab_time, other.grab_time+10);
	    		       	y = ease_sineInOut(y, other.y-10, other.grab_time, other.grab_time+10);	
						with (other)
						{
							if (window_time_is(1)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								other.force_depth = true; 
								other.depth = other.depth+1;								
								var throw_hbox = create_hitbox(AT_FSTRONG, 2, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x-140*(-spr_dir), y-94, vfx_slam);
								temp_fx.spr_dir = -spr_dir;
								temp_fx.depth = depth - 1;
								var temp_fx2 = spawn_hit_fx(x-140*(-spr_dir), y-94, vfx_slam_behind);
								temp_fx2.spr_dir = -spr_dir;	
								temp_fx2.spr_dir.depth = depth + 1;
								if (has_rune("K")) {
								    var offset_x = (state == 3) ? -60 : -50;
								    spawn_article(offset_x, "obj_article1");
								}									
							}
						}		    		       	
						break;	
					case 19: case 21:
						with (other)
						{
							other.force_depth = true; 
							other.depth = other.depth-1;								
						}
						if (window_time_is(1)) sound_play(sound_get("sfx_saya_charge2"), 0, noone, 0.8);
						x = ease_sineInOut(x, other.x+30*other.spr_dir, other.grab_time, other.grab_time+10);
	    		       	y = ease_sineInOut(y, other.y+24, other.grab_time, other.grab_time+10);						
						break;
					case 20: case 22:
						with (other)
						{
							can_wall_jump = true;
							hsp = -4*spr_dir;
							vsp = -10.5;
							if (!free) state = PS_LAND;
							if (window_time_is(1)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								var throw_hbox = create_hitbox(AT_FSTRONG, 3, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x+35*-spr_dir, y-45, vfx_ustrong);
								temp_fx.depth = depth - 1;
							}
						}	
						break;
				}
			}
			break;
		}
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL:
	    if (instance_exists(my_grab_id)) {
	        switch (window) {
	            case 4: // Window for invincibility
	                my_grab_id.attack_invince = 1;
	                break;
	            default: // All other windows reset invincibility
	                my_grab_id.attack_invince = 0;
	                break;
	        }
	    }	
		if (window == 1)
		{
			my_grab_id = noone;
			grab_time = 0;
			if has_rune("F") set_window_value(attack, 1, AG_WINDOW_LENGTH, 6);
			else set_window_value(attack, 1, AG_WINDOW_LENGTH, 9);				
		}
		if (window == 4 && window_timer <= 10)
		{
			if (left_down && spr_dir || right_down && -spr_dir) spr_dir = -spr_dir;
		}
		if (my_grab_id != noone)
		{
			with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 2: //go to grab success window
						with (other)
						{
							set_window(4);
							destroy_hitboxes();
						}
						break;
					case 4:
						var x_offset = (other.image_index == 9) ? 32 : (other.image_index == 10) ? 24 : (other.image_index == 11) ? 16 : -10;
						var y_offset = (other.image_index == 9) ? 8 : (other.image_index == 10) ? 30 : (other.image_index == 11) ? 40 : 14;
						var depth_change = (other.image_index == 9 || other.image_index == 12) ? -1 : 1;
						
						x = ease_sineInOut(floor(x), floor(other.x + x_offset * other.spr_dir), other.grab_time, other.grab_time + 30);
						y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + 30);
						
						with (other) {
						    other.force_depth = true;
						    other.depth = other.depth + depth_change;
						}							
						break;
					case 5:
						x = ease_sineInOut(x, other.x+20*other.spr_dir, other.grab_time, other.grab_time);
	    		       	y = ease_sineInOut(y, other.y-2, other.grab_time, other.grab_time);	
						with (other)
						{
							if (window_time_is(1)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								other.force_depth = true; 
								other.depth = other.depth-1;								
								var throw_hbox = create_hitbox(AT_NSPECIAL, 2, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x-100*(-spr_dir), y-94, vfx_slam);
								temp_fx.spr_dir = -spr_dir;
								temp_fx.depth = depth - 1;
								var temp_fx2 = spawn_hit_fx(x-100*(-spr_dir), y-94, vfx_slam_behind);
								temp_fx2.spr_dir = -spr_dir;	
								temp_fx2.spr_dir.depth = depth + 1;	
								if (has_rune("K")) {
								    var offset_x = (state == 3) ? -60 : -50;
								    spawn_article(offset_x, "obj_article1");
								}									
							}
						}					
						break;
				}
			}
		}
		break;
		
	case AT_NSPECIAL_AIR:
		if (window > 6) can_fast_fall = true;
		else can_fast_fall = false;
		
		if (window == 2 && was_parried){
			set_window(3);
			window_timer = window_end;
		}
		if (window == 4 && window_timer <= 14)
		{
			if (left_down && spr_dir || right_down && -spr_dir) spr_dir = -spr_dir;
		}	
	
	    if (instance_exists(my_grab_id)) {
	        switch (window) {
	            case 4: // Window for invincibility
	                my_grab_id.attack_invince = 1;
	                break;
	            default: // All other windows reset invincibility
	                my_grab_id.attack_invince = 0;
	                break;
	        }
	    }	
		if (super_teleport == true)
		{
			set_window(4);
			super_teleport = false;
			can_move = false;
			super_teleport_active = true;
		}
		switch (window)
		{
			case 1:
				my_grab_id = noone;
				grab_time = 0;
				if (!free) set_state(PS_LANDING_LAG);
				if has_rune("F") set_window_value(attack, 1, AG_WINDOW_LENGTH, 6);
				else set_window_value(attack, 1, AG_WINDOW_LENGTH, 9);					
				break;
			case 2:
			    if (!free) {
			        if (was_parried) {
			            set_state(PS_PRATLAND); // Go into pratfall if parried
			        } else {
			            set_state(PS_LANDING_LAG); // Otherwise, normal landing lag
			        }
			    }
			    break;
			case 3:
			    if (!free) {
			        if (was_parried) {
			            set_state(PS_PRATLAND);
			        } else if (!has_hit) {
			            set_state(PS_LANDING_LAG);
			        }
			    }
			    break;
		    case 4:
		        vsp = lerp(-4, 0, window_timer / 12); // Vertical boost
		
		        if (!super_teleport_active) {
		            // Allow limited movement only if not teleporting
		            if (left_down) hsp = clamp(hsp, -3, -1);  
		            else if (right_down) hsp = clamp(hsp, 1, 3);
		        } else {
		            hsp = 0; // Lock horizontal movement if teleporting
		            set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_TECHABLE, 3); 
		        }
		
		        if (window_timer == window_end) { // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
		            sound_play(sound_get("sfx_saya_swipe"), 0, noone, 0.8, 0.9); 
		        }
		        break;
			case 5:
				if (vsp != fast_fall) vsp = lerp(-7, 0, window_timer / 6); //Doing the same thing here for a little veritical boost for the endlag
				break;
			case 6:
				super_teleport_active = false;
				can_move = true;
				can_wall_jump = true;
				if (!free) set_state(PS_LAND);
				my_grab_id = noone;
				grab_time = 0;
				//set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_TECHABLE, 3); 
				break;
			
		}
		if (my_grab_id != noone)
		{
			with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 2: //go to grab success window
						with (other)
						{
							set_window(4);
							destroy_hitboxes();
						}
						break;
					case 4:
						var x_offset = (other.image_index == 10) ? 32 : (other.image_index == 11) ? 24 : (other.image_index == 12) ? -16 : (other.image_index == 13) ? -20 : 10;
						var y_offset = (other.image_index == 10) ? 8 : (other.image_index == 11) ? 16 : (other.image_index == 13) ? 16 : (other.image_index == 13) ? 24 : 14;
			
						x = ease_sineInOut(floor(x), floor(other.x + x_offset * other.spr_dir), other.grab_time, other.grab_time + ((other.image_index == 11) ? 50 : 30));
						y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + ((other.image_index == 11) ? 50 : 30));
						
						with (other) {
						    other.force_depth = true;
						    other.depth = other.depth - 1;
						}					
						break;
					case 5:
						x = ease_sineInOut(x, other.x+4*other.spr_dir, other.grab_time, other.grab_time+10);
	    		       	y = ease_sineInOut(y, other.y-2, other.grab_time, other.grab_time+10);	
						with (other)
						{
							if (window_time_is(1)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								other.force_depth = true; 
								other.depth = other.depth-1;								
								var throw_hbox = create_hitbox(AT_NSPECIAL_AIR, 3, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x+60*spr_dir, y-110, vfx_big_ring);
								temp_fx.depth = depth - 1;
								temp_fx.draw_angle = 270*spr_dir;
								temp_fx.vsp -= 2;
							}
						}					
						break;
				}
			}
		}
		break;		
		
	case AT_DSPECIAL:
		can_move = false;
		can_fast_fall = false;
		switch (window)
		{
			case 1: //hold input redirect 
				//redirection to window 6, the hold version of the move
				dmg_tick = 1; //reset to default value on startup
				hsp = clamp(hsp, -6, 6);
				vsp = 0;
				can_move = false;
				if (window_timer == window_end) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				{
					
					if (meter >= sparking_threshold && meter < meter_max) set_window(2);
					else set_window(6);
					if (meter == meter_max) set_window(9);
					if (special_down)
					{
						if (!is_sparking && !is_guardian)
						{
							if (meter < meter_max) set_window(6);
							if (meter == meter_max) set_window(9);
						}
						
					} 
				}  
				break;
			//SPARKING WINDOWS
			case 2:  
				hsp = clamp(hsp, -3, 3);
				vsp = 0;
				if (window_timer == window_end) sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.6, 1); // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				break;
			case 3:
				if (window_timer == window_end)  // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
				{
					spawn_hit_fx(x-86*spr_dir, y-94, vfx_dspecial_burst);
					var temp_fx = spawn_hit_fx(x-1*spr_dir, y-40, vfx_dspecial_burst2);
					temp_fx.depth = depth - 1;
				}
				break;
			case 4:
				hsp = clamp(hsp, -3, 3);
				vsp = 0	
				if (window_time_is(1)) 
				{
					if (!is_sparking) is_sparking = true;
					
				}
				if (has_hit && !hitpause)
				{
					iasa_script();
				}					
				soft_armor = 2;
				break;
			case 5:
				if (has_hit_player) iasa_script();
				break;
			//CHARGE  
			case 6:
				hsp = clamp(hsp, -4, 4);
				vsp = 0;
				if (window_timer == window_end)
				{
					cur_loop_sound = sound_play(sound_get("sfx_saya_charge"), 1, noone, 1, 1);
					cur_loop_sound2 = sound_play(asset_get("sfx_boss_charge"), 1, noone, 0.8, 1.1);	
				}
				break;
			case 7:
				if (window_timer == 1) 
				{
					if (free) var dust = spawn_base_dust(x, y, "doublejump", 1)
					else var dust = spawn_base_dust(x, y, "land", 1)
					if !(get_gameplay_time()%5)spawn_area_effect(x - 30 * spr_dir, y - 60, 0, 0, 0, 1, 0, 1, 1, -1);
					if !(get_gameplay_time()%10)spawn_area_effect(x - 30 * spr_dir, y - 60, 10, 25, 1, (random_func(0, 15, true)), 0, 0, 0, -1);	
				}
				if (window_timer == window_end && special_down)
				{
					window_timer = 0; 
					if (free) var dust = spawn_base_dust(x, y, "doublejump", 1)
					else var dust = spawn_base_dust(x, y, "land", 1)
					if !(get_gameplay_time()%5)spawn_area_effect(x - 60 * spr_dir, y - 60, 20, 20, 0, 1, 0, 1, 1, -1);
					if !(get_gameplay_time()%10)spawn_area_effect(x - 60 * spr_dir, y - 60, 10, 25, 1, (random_func(0, 15, true)), 0, 0, 0, -1);	
				}
				if (meter == meter_max) //Plays sound and spawns VFX to alert player that they're ready to rock
				{
					meter_voice = true;
					sound_play(sound_get("sfx_saya_chargemax3"), 0, noone, 0.6);
					sound_stop(cur_loop_sound)
					sound_stop(cur_loop_sound2)
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-120, vfx_shine); 
					temp_fx.vsp -= 1;
					var temp_fx2 = spawn_hit_fx(x, y-30, vfx_dspecial_charge_end);
					temp_fx2.depth = depth - 1;	
					temp_fx.vsp -= 1;
				}
				if (!special_down || meter == meter_max)
				{
					set_window(8);
					sound_play(asset_get("sfx_boss_shine"), 0, noone, 1, 1.5);	
					sound_stop(cur_loop_sound)
					sound_stop(cur_loop_sound2)
					var temp_fx2 = spawn_hit_fx(x, y-30, vfx_dspecial_charge_end);
					temp_fx2.depth = depth - 1;	
					temp_fx.vsp -= 1;					
				}
				var charge_multiplier = has_rune("L") ? 1.5 : 1.0;
				var charge_rate = 2;
				meter = min(meter + charge_rate * charge_multiplier, meter_max);
				charge_dmg_tick--;
				if (charge_dmg_tick == 0)
				{
					take_damage(player, -1, 1);
					charge_dmg_tick = 15; //how fast Saya takes damage while charging
				}
				break;
			//GUARDIAN WINDOWS	
			case 9:
				hsp = 0;
				vsp = 0
				if (window_timer == window_end) sound_play(sound_get("sfx_saya_explosion2"), 0, noone, 0.6, 1);
				break;
			case 10:
				if (window_timer == window_end) 
				{
					spawn_hit_fx(x-86*spr_dir, y-94, vfx_dspecial_burst);
					var temp_fx = spawn_hit_fx(x-1*spr_dir, y-40, vfx_dspecial_burst2);
					temp_fx.depth = depth - 1;
				}
				break;				
			case 11:
				hsp = 0;
				vsp = 0	
				if (!is_guardian) is_guardian = true;
				super_armor = true;
				if (has_hit && !hitpause)
				{
					iasa_script();
				}					
				break;
			case 12:
				if (has_hit_player) iasa_script();
				super_armor = false;
				break;
				
			case 13: case 16:
				move_cooldown[AT_DSPECIAL] = 60;
				hsp = clamp(hsp, -3, 3);
				vsp = 0;			
				if (window_timer == window_end) 
				{
					spawn_hit_fx(x-86*spr_dir, y-94, vfx_dspecial_burst);
					var temp_fx = spawn_hit_fx(x-1*spr_dir, y-40, vfx_dspecial_shine);
					temp_fx.depth = depth - 1;	
					sound_play(sound_get("sfx_saya_explosion_small"), 0, noone, 0.7, 1);					  
				}
				break;
			case 14: case 17:
				if (has_hit && !hitpause)
				{
					hsp = clamp(hsp, -6, 6);
					vsp = -6;
					attack_end();
					set_state(PS_IDLE_AIR);
					clear_button_buffer(PC_SPECIAL_PRESSED); // Clears button buffer on hit so other attacks aren't accidently gone into after prematurely ending the attack
				}				
				break;
		}				
		break;
	case AT_USPECIAL:
		if (window == 4) can_wall_jump = true;
		if (window == 12) can_fast_fall = true;
		else can_fast_fall = false;
	    if (instance_exists(my_grab_id)) {
	        switch (window) {
	            case 5: case 6: case 7: // Windows for invincibility
	                my_grab_id.attack_invince = 1;
	                break;
	            default: // All other windows reset invincibility
	                my_grab_id.attack_invince = 0;
	                break;
	        }
	    }		
		switch (window)
		{
			case 1:
				uspc_grabicide = false;
				new_formula = 1;
				uspecial_timer = 0;
				my_grab_id = noone; 
				grab_time = 0;
				set_window_value(attack, 7, AG_WINDOW_LENGTH, 23)
				if has_rune("F") set_window_value(attack, 1, AG_WINDOW_LENGTH, 5);
				else set_window_value(attack, 1, AG_WINDOW_LENGTH, 8);				
				break;
				
			case 2:
				if (window_timer == window_end)
				{
					sound_play(sound_get("sfx_saya_fspcdash2"), 0, noone, 0.5, 0.9);					
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.4, 0.8);					
					var temp_fx = spawn_hit_fx(x-30*spr_dir, y, vfx_big_ring_air);	
					temp_fx.hsp -= 0.3*spr_dir;
					temp_fx.vsp += 1;
					temp_fx.draw_angle = 90*spr_dir;
					
					var temp_fx2 = spawn_hit_fx(x-40*spr_dir, y+30, vfx_small_ring_air);	
					temp_fx2.hsp -= 0.3*spr_dir;
					temp_fx2.vsp += 1;
					temp_fx2.draw_angle = 90*spr_dir;
				}
				break;
			case 4:
				if (window_time_is(2))
				{
					var temp_fx3 = spawn_hit_fx(x-40*spr_dir, y+30, vfx_fspecial_air);	
					temp_fx3.hsp -= 0.3*spr_dir;
					temp_fx3.vsp += 1;
					temp_fx3.draw_angle = 90*spr_dir;					
				}
				break;
			case 6:
				if (window_timer > 9 && artc_ground != noone && is_super)
				{
					teleport_to_article();	//super teleport					
				}			
				break;
			case 11:
				can_fast_fall = true;
				can_wall_jump = true;
				if (!free) state = PS_LAND;							
				break;
		}
		if (my_grab_id != noone) //if you have grabbed someone
		{
			with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 3: case 4: // If special is held while in guardian form, go to grab windows
						 with (other)
						 {
						 	uspc_grabicide = true;
						 	set_window(5);
						 	destroy_hitboxes();
						 }
						break;
					case 5:
					    var x_offset = (other.image_index == 13) ? 30 : 30;
					    var y_offset = (other.image_index == 13) ? 8 : 8;
					
					    x = ease_sineInOut(floor(x), floor(other.x + x_offset * other.spr_dir), other.grab_time, other.grab_time);
					    y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + ((other.image_index == 13) ? 5 : 5));
					    break;
					case 6:
					    var x_offset = (other.image_index == 15) ? 20 : 20;
					    var y_offset = 50;
					
					    x = ease_sineInOut(floor(x), floor(other.x + x_offset * other.spr_dir), other.grab_time, other.grab_time + ((other.image_index == 15) ? 50 : 40));
					    y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + ((other.image_index == 15) ? 50 : 40));
					    break;
					case 7: //Looping descent window
						with (other)
						{
							
							
						    print("uspecial_timer: " + string(uspecial_timer));
						    print("new_formula: " + string(new_formula));
						
						    //increment window when landing and adjust power (stole from la reina)
						    if (vsp >= 0 && window_timer != window_end){
						      // updated formula
						      uspecial_timer = min(uspecial_timer + 1, uspecial_max_timer);
						      new_formula = 0.3 * power(uspecial_timer / uspecial_max_timer, 0.75);
							
						    }
							if (down_down) fall_through = true; //If down is held, can fall through platforms
							vsp += 1.3;
							if(window_timer == get_window_value(attack, 7, AG_WINDOW_LENGTH))
							{
								var range = 700; // Range of the collision check.
								var col = collision_line(x, y, x, y+range, asset_get("par_block"), true, true);
								if (col != noone) 
								{
									set_window_value(attack, 7, AG_WINDOW_LENGTH, 60)
								    									
								} else 
								{
									window = 10;
									window_timer = 0;
									set_window_value(attack, 7, AG_WINDOW_LENGTH, 0)
								}								
							}
						}
						x = ease_sineInOut(x, other.x-1*other.spr_dir, other.grab_time, other.grab_time+40);
                		y = ease_sineInOut(y, other.y-20, other.grab_time, other.grab_time+20);
                		break;
					case 8:
						x = ease_sineInOut(x, other.x-10*other.spr_dir, other.grab_time, 1);
	    		       	y = ease_sineInOut(y, other.y-10, other.grab_time, 1);						
						with (other)
						{
							if (window_time_is(0)) //we are creating the hitbox manually because hitbox_update doesn't like melee hitboxes
							{
								print(new_formula)
							    set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 1 + new_formula);
							    set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.9 + new_formula);							
								var throw_hbox = create_hitbox(AT_USPECIAL, 5, x, y);

								//this part of the code checks the "can_hit" array, which chooses who can be hit by what hitbox
								//we are disabling the detection of the hitbox for any player that isn't the grabbed player
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
								var temp_fx = spawn_hit_fx(x-110*spr_dir, y-94, vfx_uspecial);
								temp_fx.depth = depth - 1;
								if (has_rune("K")) {
								    var offset_x = (state == 3) ? -60 : -50;
								    spawn_article(offset_x, "obj_article1");
								}									
							}
						}					
						break;
					case 10:
						with (other)
						{
							other.force_depth = true; 
							other.depth = other.depth-1;
							can_wall_jump = true;
							hsp = 4*spr_dir;
							vsp = -10.5;
							if (window_time_is(1))
							{
								var throw_hbox = create_hitbox(AT_USPECIAL, 6, x, y);
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;									
								}
							}
						}
						//if (window_time_is(1)) sound_play(sound_get("sfx_saya_charge2"), 0, noone, 0.8);
						x = ease_sineInOut(x, other.x-10*other.spr_dir, other.grab_time, other.grab_time+10);
	    		       	y = ease_sineInOut(y, other.y-10, other.grab_time, other.grab_time+10);						
						break;
					case 11:
						with (other)
						{
							hsp = 4*spr_dir;
							vsp = -10.5;
						}	
						break;						
				}
			}
		}
		break;		
	case AT_FSPECIAL:
		can_move = false;
		if has_rune("J") set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.5); //Hitstun increase
		switch (window)
		{
			case 1: //hold input redirect
				fspc_hit_timer = 0;
				break;
			case 2:
				if (window_timer == window_end) spawn_hit_fx(x-50*spr_dir, y-95, vfx_big_ring);	
				if (window_timer == 5 && !hitpause) {
					sound_play(sound_get("sfx_saya_fspcdash"), 0, noone, 0.5);
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.4);
				}
				break;
			//TAP VERSION GROUND
			case 3:
				vsp = 0;
			    if (has_hit)
			    {
			        fspc_hit_timer++; // Increment hit timer each frame while has_hit is true
			    }
			    if (fspc_hit_timer >= 10)
			    {
			        can_jump = true;
			        hsp = lerp(hsp, hsp * 0.8, 0.2);
			    }				
				if (window_timer == window_end && !hitpause)
				{
				    //hard cap to hsp
				    var max_speed = 5;
				    if (hsp > max_speed) hsp = max_speed;
				    if (hsp < -max_speed) hsp = -max_speed; 					
					if (free) set_state(PS_IDLE_AIR);
					destroy_hitboxes();
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-95, vfx_fspecial);
					temp_fx.hsp += 0.5*spr_dir;	
				}
				break;
			//HOLD VERSION GROUND
			case 6: case 7:
				if (window == 6 && window_timer == window_end)
				{
					sound_play(sound_get("sfx_saya_fspcdash2"), 0, noone, 0.5, 0.8);
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.5);
					spawn_hit_fx(x-50*spr_dir, y-95, vfx_big_ring);	
				}
				if (window == 7 && window_timer == window_end)
				{
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-95, vfx_fspecial);
					temp_fx.hsp += 0.5*spr_dir;					
				} 		
				vsp = 0;
				if (window == 7 && window_time_is(14) && free) set_window(9);
				if (has_hit && !hitpause)
				{
					hsp = clamp(hsp, -6, 6);
					vsp = -6;
					attack_end();
					set_state(PS_IDLE_AIR);
				}					
				break;
			case 8:
				if (free) set_state(PS_IDLE_AIR);
				hsp = clamp(hsp, -6, 6);
				break;
			case 9:
				if (!free) set_state(PS_LAND);
				hsp = clamp(hsp, -6, 6);
				break;				
		}		
		break;
	case AT_FSPECIAL_AIR:
		can_move = false;
		can_fast_fall = false;
		if (fspc_bounce)
		{
			fspc_bounce = false;
			hsp = clamp(hsp, -22, 22);
			vsp = -7.5;
			attack_end();
			set_state(PS_IDLE_AIR);			
		}
		if has_rune("J") set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1.5); //Hitstun increase
		switch (window)
		{
			case 1: //Dive input redirect
				moved_up = false;
				// Store when special was last pressed
				if (special_pressed) {
				    clear_button_buffer(PC_SPECIAL_PRESSED);
				    special_pressed_time = 0; // Reset time since last press
				}
				
				// Increment special press timer
				special_pressed_time++;
				
				// Prevent entering hold window if special was pressed too recently
				if (window_timer == window_end && special_down && special_pressed_time >= 8) {
				    set_window(10);
				}
				vsp = lerp(-4, -1, window_timer / window_end)
				hsp = sin(window_timer / window_end - 0.5) * spr_dir * 6;
				//move_cooldown[AT_FSPECIAL] = 60;
				break;
			case 2:
				if (window_timer == window_end)
				{
					var temp_fx = spawn_hit_fx(x-80*spr_dir, y-80, vfx_big_ring_air);	
					temp_fx.hsp -= 0.3*spr_dir;
					temp_fx.vsp -= 1;					
					
				}
				if (window_timer == 5 && !hitpause) {
					sound_play(sound_get("sfx_saya_fspcdash"), 0, noone, 0.5);
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.4);
				}				
				break;				
			//TAP VERSION AIR
			case 3:
				can_wall_jump = true;
				if (window_time_is(1))
				{
					var temp_fx = spawn_hit_fx(x-80*spr_dir, y-80, vfx_small_ring_air);
					temp_fx.hsp -= 0.3*spr_dir;
					temp_fx.vsp -= 1;
				}
				if (window_time_is(15) && free)  set_window(6); //Set to air endlag window if in the air and window ends
				if (!free)
				{
					destroy_hitboxes();
					if (is_guardian || is_sparking || has_rune("D") || is_super) //sliding window if in install
					{
						set_window(7); 
						sound_play(sound_get("sfx_saya_slide"), 0, noone, 0.6, 1.1);
						var temp_fx = spawn_hit_fx(x-80*(-spr_dir), y-94, vfx_slide);
						temp_fx.spr_dir = -spr_dir;	
						temp_fx.hsp -= 1*spr_dir;
					}
					else // If not in install, sets to the grounded punch window
					{
						set_window(4);
						sound_play(sound_get("sfx_saya_fspcslam"), 0, noone, 0.8, 1.1);
						var temp_fx = spawn_hit_fx(x-80*(spr_dir), y-94, vfx_slam);
						//temp_fx.spr_dir = -spr_dir;
						var temp_fx2 = spawn_hit_fx(x-80*(spr_dir), y-94, vfx_slam_behind);
						//temp_fx2.spr_dir = -spr_dir;	
						temp_fx2.spr_dir.depth = depth + 1;
					}
				}
				break;
			case 5:
				if (free && !was_parried) set_state(PS_IDLE_AIR)
				if (has_hit_player && !was_parried) iasa_script(); // Actionable if a player is hit
				break;				
			case 6:
				if (!free && !was_parried) set_state(PS_LANDING_LAG);
				if (free && !was_airborne) {
				    djumps = 0;         // Run once per airtime
				    was_airborne = true;
				}
				break;
			case 8:  //sliding attack window
				if (free && !was_parried) set_state(PS_IDLE_AIR)
				can_jump = true;
				break;
			case 9: //sliding window endlag
				if (has_hit_player && !was_parried) iasa_script();
				if (free && !was_parried) set_state(PS_IDLE_AIR)
				can_jump = true;
				break;
				
			//HOLD VERSION AIR
			case 10: 
			//move_cooldown[AT_FSPECIAL] = 70;
			hsp = 0;
			vsp = 0;
				break;
			case 11: case 12:
				can_wall_jump = true;			
				if (window == 11 && window_timer == window_end)
				{
					sound_play(sound_get("sfx_saya_fspcdash2"), 0, noone, 0.5, 0.8);
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.5);
					spawn_hit_fx(x-50*spr_dir, y-95, vfx_big_ring);	
				}
				if (window == 12 && window_timer == window_end)
				{
					var temp_fx = spawn_hit_fx(x-50*spr_dir, y-95, vfx_fspecial);
					temp_fx.hsp += 0.5*spr_dir;					
				} 				

				vsp = 0;
				if (has_hit && !hitpause && marks_consumed == 0)
				{
					hsp = clamp(hsp, -6, 6);
					vsp = -6;
					attack_end();
					set_state(PS_IDLE_AIR);
				}	
				ledge_snap();
				break;
			case 13:
				can_wall_jump = true;
				hsp = clamp(hsp, -6, 6);
				ledge_snap();				
				break;
		}
		break;
	case AT_EXTRA_2: //Sparking Exit
	    can_fast_fall = false;
		if (instance_exists(my_grab_id)) {
		    if (my_grab_id != noone) {
		        // Windows where attack_invince should be 1
		        switch (window) {
		            case 5: case 6:
		                my_grab_id.attack_invince = 1;
		                break;
		            default:
		                my_grab_id.attack_invince = 0;
		                break;
		        }
		    }
		}	    
	    switch (window) {
	        case 1:
	            if (window_timer == 1)
	            {
	            	moved_up = false;
	            	if (free) used_in_air = true;
					if (is_sparking) {
					    meter -= meter_max * 0.5; // Depletes half of the max meter
					    meter = max(0, meter); 
					    move_cooldown[AT_DSPECIAL] = 120;
					}
					else if (is_guardian) {
					    meter -= meter_max * 0.5; // Depletes half of the max meter
					    meter = max(0, meter);
					}
	            }
	            if (window_timer == window_end)
	            {
					sound_play(sound_get("sfx_saya_fspcdash2"), 0, noone, 0.5, 0.9);
					sound_play(sound_get("sfx_saya_fspcdashalt"), 0, noone, 0.5);
					spawn_hit_fx(x-50*spr_dir, y-95, vfx_big_ring);	            	
					spawn_hit_fx(x-65*spr_dir, y-95, vfx_small_ring);	            	
	            }
				if (shield_pressed) set_window(11);
	            my_grab_id = noone; 
	            grab_time = 0;
	            is_sparking = false;
	            set_window_value(attack, 6, AG_WINDOW_LENGTH, 18); // Resets length of the descent window
	            can_move = false;	    		
	            if (free)
	            {
	            	vsp = 0;
	            	set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
	            }
	            else set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
	            break;
	        case 2: 
	            if (free) vsp = 0; 	        
	        	break;
	        case 3:
	            if (free) vsp = 0; 
	            can_move = false;
				ledge_snap();	            
	            break;	    		
	        case 4:	
	            can_move = false;
	            if (free && window_timer < 8) vsp = 0; 
	            if (window_timer == window_end && used_in_air){
	            	set_state(PS_PRATFALL);
	            	used_in_air = false;
	            }
	            hsp = clamp(hsp, -6, 6);
				ledge_snap();	            
	            break;
	        case 5:
	        	hsp = clamp(hsp, -8, 8);
	            break;	
			case 10: //Walljump out of aerial launch windows
				if (!free) state = PS_LAND;
				can_wall_jump = true;						
				break;	   
			case 11: 
				vsp = 0;
				can_attack = true;
				break;
	    }
	    if (my_grab_id != noone) 
	    {
	        with (my_grab_id) 
	        {
	            hurt_img = 1;
	            switch (other.window) 
	            {
					case 3: 
						with (other)
						{
							set_window(5);
							destroy_hitboxes();
						}
						break;	            	
	                case 5:
	                    var x_offset, y_offset, ease_duration;
	                    
	                    if (other.image_index == 13) {
	                        x_offset = 32 * other.spr_dir;
	                        y_offset = 8;
	                        ease_duration = 30;
	                        force_depth = true; 
	                        depth = depth - 1;	                        
	                    } else if (other.image_index == 14) {
	                        x_offset = -24 * other.spr_dir;
	                        y_offset = 32;
	                        ease_duration = 30;
	                        force_depth = true; 
	                        depth = depth - 1;	  	                        
	                    } else if (other.image_index == 15) {
	                        x_offset = 35 * other.spr_dir;
	                        y_offset = 36;
	                        ease_duration = 50;
	                    } else if (other.image_index == 16) {
	                        x_offset = 40 * other.spr_dir;
	                        y_offset = 40;
	                        ease_duration = 70;
	                    } else if (other.image_index == 17) {
	                        x_offset = 50 * other.spr_dir;
	                        y_offset = 50;
	                        ease_duration = 70;
	                    } else {
	                        x_offset = 50 * other.spr_dir;
	                        y_offset = 20;
	                        ease_duration = 50;
	                    }
	                    x = ease_sineInOut(floor(x), floor(other.x + x_offset), other.grab_time, other.grab_time + ease_duration);
	                    y = ease_sineInOut(floor(y), floor(other.y - y_offset), other.grab_time, other.grab_time + ease_duration);
	                    break;
	
	                case 6: // Looping window
	                    with (other) {
	                        if (down_down) fall_through = true; // If down is held, can fall through platforms
	                        vsp += 1.1;
	                        if (window_timer == get_window_value(attack, 6, AG_WINDOW_LENGTH)) {
	                            var range = 200;
	                            var col = collision_line(x, y, x, y + range, asset_get("par_block"), true, true);
	                            if (col != noone) {
	                                set_window_value(attack, 6, AG_WINDOW_LENGTH, 25);
	                            } else {
	                                window = 9;
	                                window_timer = 0;
	                            }
	                        }
	                    }
	                    x = ease_sineInOut(floor(x), floor(other.x + 60 * other.spr_dir), other.grab_time, other.grab_time + 60);
	                    y = ease_sineInOut(floor(y), floor(other.y + 10), other.grab_time, other.grab_time + 60);
	                    break;
	
	                case 7:
	                    x = ease_sineInOut(x, other.x + 60 * other.spr_dir, other.grab_time, other.grab_time + 10);
	                    y = ease_sineInOut(y, other.y + 10, other.grab_time, other.grab_time + 10);
	                    with (other) {
	                        if (window_time_is(0)) {
	                            create_hitbox(AT_EXTRA_2, 2, x, y);
	                            var temp_fx = spawn_hit_fx(x - 140 * (-spr_dir), y - 94, vfx_slam);
	                            temp_fx.spr_dir = -spr_dir;
	                            temp_fx.depth = depth - 1;
	                            var temp_fx2 = spawn_hit_fx(x - 140 * (-spr_dir), y - 94, vfx_slam_behind);
	                            temp_fx2.spr_dir = -spr_dir;
	                            temp_fx2.spr_dir.depth = depth + 1;
	                            if (has_rune("K")) {
	                                var offset_x = (state == 3) ? -60 : -50;
	                                spawn_article(offset_x, "obj_article1");
	                            }
	                        }
	                    }
	                    break;
	
	                case 9:
	                    with (other) {
	                        other.force_depth = true; 
	                        other.depth = other.depth - 1;
	                    }
	                    if (window_time_is(1)) sound_play(sound_get("sfx_saya_charge2"), 0, noone, 0.8);
	                    x = ease_sineInOut(x, other.x + 30 * other.spr_dir, other.grab_time, other.grab_time + 10);
	                    y = ease_sineInOut(y, other.y + 24, other.grab_time, other.grab_time + 10);
	                    break;
	
	                case 10:
	                    with (other) {
	                        can_wall_jump = true;
	                        hsp = -4 * spr_dir;
	                        vsp = -10.5;
	                        if (!free) state = PS_LAND;
	                        if (window_time_is(1)) {
	                            var throw_hbox = create_hitbox(AT_EXTRA_2, 3, x, y);
	                            for (var i = 0; i < 4; ++i) {
	                                throw_hbox.can_hit[i] = false;
	                                throw_hbox.can_hit[my_grab_id.player] = true;
	                            }
	                            var temp_fx = spawn_hit_fx(x + 35 * -spr_dir, y - 45, vfx_ustrong);
	                            temp_fx.depth = depth - 1;
	                        }
	                    }
	                    break;
	            }
	        }
	    }
	    break;	
	case AT_DSPECIAL_2: // Thousand Blows window
	can_fast_fall = false;
	    switch (window) {
	    	case 1: case 2: 
				can_move = false;	    		
	    		if (free) vsp = 0; 
	    		break;
	    	case 4:	
	    		can_move = false;
	    		if (free) vsp = 0; 
	    		hsp = clamp(hsp * 0.9, -6, 6);
	    		hsp = clamp(hsp * 0.9, -6, 6);
	    		break;	    	
	        case 3: // Window 3: Check marks and transition
	            if (free) vsp = 0; 
	            can_move = false;
	            if (has_hit_player) {
	                destroy_hitboxes();
	                if (window_timer == window_end) {
	                    set_window(5);
	                }
	            }
	            break;
	        case 5: // Window 5: Spawn first hitbox
	        	can_move = false;
	            if (free) vsp = 0; 
	            if (window_timer == window_end && instance_exists(my_grab_id)) {
	                var throw_hbox;
	                if (marks_consumed == 0) {
	                    throw_hbox = create_hitbox(AT_DSPECIAL_2, 7, my_grab_id.x, my_grab_id.y);
	                } else {
	                    throw_hbox = create_hitbox(AT_DSPECIAL_2, 2, my_grab_id.x, my_grab_id.y);
	                }
	
	                for (var i = 0; i < 4; ++i) {
	                    throw_hbox.can_hit[i] = false;
	                    throw_hbox.can_hit[my_grab_id.player] = true;
	                }
	
	                if (marks_consumed > 1) {
	                    set_window(7); // Go to multi-hit
	                }
	            }
	            break;
	
	        case 7: // Window 7: Spawn sequential hitboxes based on marks
	        	can_move = false;
	            if (free) vsp = 0; 
	            hsp = clamp(hsp * 0.9, -6, 6);
	            if (instance_exists(my_grab_id)) {
	                hitbox_timer++;
	                if (spawned_hitboxes < marks_consumed - 1) { // Skip first mark
	                    if (hitbox_timer >= 12) { // Delay between spawns
	                        var hitbox_id = 3 + spawned_hitboxes; // Hitboxes 3-6
	                        var remaining_marks = marks_consumed - spawned_hitboxes - 1;
	
	                        if (hitbox_id <= 6 && remaining_marks > 0) {
	                            var throw_hbox = create_hitbox(AT_DSPECIAL_2, hitbox_id, my_grab_id.x, my_grab_id.y);
	
	                            for (var i = 0; i < 4; ++i) {
	                                throw_hbox.can_hit[i] = false;
	                                throw_hbox.can_hit[my_grab_id.player] = true;
	                            }
	
	                            hitbox_timer = 0;
	                            spawned_hitboxes++;
	                        }
	                    }
	                } else {
	                    if (free) {
	                    	can_move = false;
	                    	spawned_hitboxes = 0;
	                    	hitbox_timer = 0;
	                    	marks_consumed = 0;
	                        set_window(31);
	                    } else {
	                    	can_move = false;
	                    	spawned_hitboxes = 0;
	                    	hitbox_timer = 0;
	                    	marks_consumed = 0;	                    	
	                        set_window(8); 
	                    }
	                }
	            }
	            break;
	         case 8:
	        	iasa_script();
	        	break;
	    }
	    break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		can_move = false;
		break;
	case 48: //super saya transformation
		vsp = clamp(vsp, -abs(vsp), 0);
		hsp /= 1.1;
		can_move = false;	
		if (window == 3 && window_time_is(1)) sound_play(sound_get("sfx_saya_teleport"), 0, noone, 1.4,); 
		break;
		
	case 46: // bar sonic trick compat
		iasa_script(); //lets character cancel out of the animation at any point
	    if (vsp > 0 && window == 3) //window 3 is the window specified for the trick pose
	    {
	        window ++;
	        window_timer = 0;
	    }
	    if (window > 1 && !free) set_state(PS_LANDING_LAG);		
		break;
}



//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;

	//we need this so if we put an "illegal" value it will not crash the game
	window_num = window;

	//speed resetting - horizontally
	switch (get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE))
	{
		case 0: hsp += get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //adds speed
		case 1: case 2: hsp = get_window_value(attack, window_num, AG_WINDOW_HSPEED) * spr_dir; break; //sets speed for the first frame/the entire window
	}

	//speed resetting - vertically
	switch (get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE))
	{
		case 0: vsp += get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //adds speed
		case 1: case 2: vsp = get_window_value(attack, window_num, AG_WINDOW_VSPEED); break; //sets speed for the first frame/the entire window
	}
}

#define custom_attack_grid
{
    var window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES); //looping window for X times - we set this up inside the different conditions
    var window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE); //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS); //checks if the loop should refresh hits or not

    //make sure the player isn't in hitpause
    if (!hitpause)
    {
        //make sure the window is in type 9 or 10
        if (window_type_value == 9 || window_type_value == 10)
        {
            //checks the end of the window
            if (window_timer == window_end)
            {
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0)
                {
                    if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                    window_loops ++; //at the start of the window, count a loop up
                }

                //when all the loops are over, go to the next window and reset the loop value
                //if it's window type 10, it should stop the loop prematurely
                if (window_loops > window_loop_value-1 || window_type_value == 10 && !free)
                {
                    destroy_hitboxes();
                    if (window < window_last)
                    {
                        window += 1;
                        window_timer = 0;
                    }
                    else set_state(free ? PS_IDLE_AIR : PS_IDLE);
                    window_loops = 0;
                }
            }
            else if (window_loop_value == 0 && window_loop_can_hit_more) attack_end(attack);
            //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
            //this is how the game usually treats window type 9
        }
    }
}
#define rayDown(key1, key2){
        if(!free) return y;
        var _y = y-16;
        var _obj;
        //do pathfind loop
        for(var i = 0; i < 100; ++i){
            _obj = instance_position(x+1*spr_dir,_y + 16 * i,asset_get(key1));
            if(_obj == noone) _obj = instance_position(x+1*spr_dir,_y + 16 * i,asset_get(key2));
            if(_obj != noone){
                _y = _y + 16 * i;
                return _y;
            }
        }
        if(y == _y){
            _y = 1000;
        }
        return _y;
}
#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir=0
/// spawn_base_dust(x, y, name, dir = 0)
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
newdust.dust_depth = -1; // set the depth here
return newdust;

#define spawn_area_effect
/// @param dx
/// @param dy
/// @param area_width
/// @param area_height
/// @param effect_id
/// @param angle=1
/// @param seed=0
/// @param follow_player=0
/// @param dir=1
/// @param depth_setting=-1
/// @param vsp=0
/// @param hsp=0;
/// spawn_area_effect(dx, dy, area_width, area_height, effect_id, angle = 1, seed = 0, follow_player = 0, dir = 1, depth_setting = -1, vsp = 0, hsp = 0;)
var dx = argument[0], dy = argument[1], area_width = argument[2], area_height = argument[3], effect_id = argument[4];
var angle = argument_count > 5 ? argument[5] : 1;
var seed = argument_count > 6 ? argument[6] : 0;
var follow_player = argument_count > 7 ? argument[7] : 0;
var dir = argument_count > 8 ? argument[8] : 1;
var depth_setting = argument_count > 9 ? argument[9] : -1;
var vsp = argument_count > 10 ? argument[10] : 0;
var hsp = argument_count > 11 ? argument[11] : 0;;

/* effect ids:
0 - vfx_sparking_big
1 - vfx_sparking_small1
2 - vfx_sparking_small2
3 - vfx_sparking_run
4 - vfx_guardian_big1
5 - vfx_guardian_big2
6 - vfx_guardian_small1
7 - vfx_guardian_small2
8 - vfx_guardian_run
*/
var fx_list = [vfx_sparking_big, vfx_sparking_small1, vfx_sparking_small2, vfx_sparking_run, vfx_guardian_big1, vfx_guardian_big2, vfx_guardian_small1, vfx_guardian_small2, vfx_guardian_run];
dx += random_func(1 + seed, area_width, true) - area_width / 2;
dy += random_func(2 + seed, area_height, true) - area_height / 2;

var da = angle;

// Particle spawn
var h = spawn_hit_fx(dx, dy, fx_list[effect_id]);

h.draw_angle = da * h.spr_dir;
h.hsp = hsp;  // Horizontal speed
h.vsp = vsp;  // Vertical speed

//If dir is set to 0, randomize between left (-1) or right (1)
if (dir == 0) {
    h.spr_dir = random_func(0, 2, true) == 0 ? -1 : 1;  
} else {
    h.spr_dir = dir;  // Use the provided direction
}

// Update position based on speed
h.x += h.hsp;
h.y += h.vsp;

// Depth logic setting depth_setting to -1 makes particles spawn in front of the player(default), 1 makes it spawn behind, and 0 randomizes between in front and behind
if (depth_setting == 1) {
    h.depth = depth + 1;  
} else if (depth_setting == -1) {
    h.depth = depth - 1;  
} else if (depth_setting == 0) {
    var random_depth = random_func(0, 2, true) == 0 ? -1 : 1;
    h.depth = depth + random_depth;
}

if follow_player with h if "fx_follow_player" not in self fx_follow_player = other;

#define spawn_article(offset_x, article_obj) 
    // Prevent spawning if parry timer is active
    if (artc_parried_timer > 0) return;

    var _y = rayDown("par_block", "par_jumpthrough"); // Get nearest ground/platform level
    var spawn_x = x + (offset_x * spr_dir);
    var spawn_y = _y;

    // Ensure we are not exceeding max articles
    if (artc_count >= max_articles) return;

    var can_spawn = true;

    // Check for solid ground 
    if (place_meeting(spawn_x + 30 * spr_dir, spawn_y + 16, asset_get("par_block"))) { 
        if (!collision_rectangle(spawn_x - 40, spawn_y - 10, spawn_x + 40, spawn_y + 10, artc_ground, false, false)) {
            artc_ground = instance_create(spawn_x, spawn_y, article_obj);
            if (instance_exists(artc_ground)) {
                ds_list_add(article_list, artc_ground);
                artc_count++;
            }
        }
    } 
    // Check for platform 
    else if (place_meeting(spawn_x + 40 * spr_dir, spawn_y + 16, asset_get("par_jumpthrough"))) { 
        if (!collision_rectangle(spawn_x - 40, spawn_y - 10, spawn_x + 40, spawn_y + 10, artc_ground, false, false)) {
            artc_ground = instance_create(spawn_x, spawn_y - 29, article_obj);
            if (instance_exists(artc_ground)) {
                ds_list_add(article_list, artc_ground);
                artc_count++;
            }
        }
    } 
    // Failsafe: No valid ground/platform detected
    else { 
        var safe_x = x - (40 * spr_dir); // Move back to avoid ledge
        var safe_y = _y;

        // Adjust Y for solid ground or platform
        if (place_meeting(safe_x, _y + 16, asset_get("par_block"))) {
            safe_y = _y; // Snap to solid ground
        } 
        else if (place_meeting(safe_x, _y + 16, asset_get("par_jumpthrough"))) {
            safe_y = _y - 29; // Snap to platform height
            safe_x = x - (40 * spr_dir); // Move back to avoid ledge
        } 

        if (!collision_rectangle(safe_x - 40, safe_y - 10, safe_x + 40, safe_y + 10, artc_ground, false, false)) {
            artc_ground = instance_create(safe_x, safe_y, article_obj);
            if (instance_exists(artc_ground)) {
                ds_list_add(article_list, artc_ground);
                artc_count++;
            }
        }
    }
#define teleport_to_article() 
grabbed_invisible = true; 
my_grab_id.grabbed_invisible = true; 
var nearest_article = noone; 
var shortest_distance = 999999; 
can_move = false; 
for (var i = 0; i < ds_list_size(article_list); i++) { 
    var article = article_list[| i]; 
    if (instance_exists(article)) { 
        var distance = point_distance(x, y, article.x, article.y); 
        if (distance < shortest_distance) { 
            shortest_distance = distance; 
            nearest_article = article; 
        } 
    } 
} 
if (nearest_article != noone) { 
    x = nearest_article.x; 
    y = nearest_article.y; 
    my_grab_id.x = nearest_article.x; 
    my_grab_id.y = nearest_article.y; 
    set_attack(AT_NSPECIAL); 
    super_teleport = true; 
    grab_time = 0; 
    var temp_fx = spawn_hit_fx(x, y-20, vfx_teleport); 
    sound_play(sound_get("sfx_saya_teleport"), 0, noone, 1.3, 1.1); 
}
#define ledge_snap()
{
    if (!moved_up && free && place_meeting(x + hsp + spr_dir, y, asset_get("par_block"))) {
        for (var i = 0; i < 45; i++) {
            if (!place_meeting(x + hsp + spr_dir, y - (i + 1), asset_get("par_block"))) {
                y -= i;
                moved_up = true;
                break;
            }
        }
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion
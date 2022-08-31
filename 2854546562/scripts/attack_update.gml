//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}



// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	//case AT_JAB:
	//	if window == 1 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash", spr_dir]);
	//	}
	//	break;
	//case AT_FTILT:
	//	if (window == 1 && window_timer == 1 && voices) rand_voice(0);
	//	if window == 1 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash", spr_dir]);
	//	}
	//	break;
	//case AT_DTILT:
	//	if (window == 1 && window_timer == 1 && voices) rand_voice(0);
	//	if window == 1 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash", spr_dir]);
	//	}
	//	break;
	//case AT_UTILT:
	//	if (window == 1 && window_timer == 1 && voices) rand_voice(0);
	//	if window == 1 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash", spr_dir]);
	//		array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
	//	}
	//	break;
	case AT_DATTACK:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		if (window == 1) {
			if (special_pressed) {
				sound_play(asset_get("mfx_coin"));
				attack_end();
				attack = AT_NSPECIAL;
				hsp += 5 * spr_dir;
				window = 1;
				window_timer = 0;
			}
		}
		if (window == 3 && window_timer > 15){
			can_jump = true;
			can_shield = true;
		}

		if ((window == 3 || window == 4) && !free) {
			sound_play(asset_get("sfx_land_heavy"));
			window = 5;
			window_timer = 0;
			destroy_hitboxes();
		} 
		break;
	//case AT_FSTRONG:
	//	if window == 2 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
	//	}
	//	break;
	//case AT_USTRONG:
	//	if window == 2 && window_timer == phone_window_end{
	//		array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
	//		array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
	//	}
	//	break;
	
	case AT_NAIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		break;
	case AT_FAIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		break;
	case AT_DAIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		break;
	case AT_BAIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		break;
	case AT_UAIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		break;
	
	
	case AT_NSPECIAL:
		switch(window){
			case 1: // startup
				
				break;
			case 2: // charge loop
				
				break;
			case 3: // post-charge
				
				break;
			case 4: // 
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				if (window == 4) {
					if (grabbed_id != noone) {
						grabbed_id.x = x;
						grabbed_id.y = y;
					}
					else {
						window = 3;
						window_timer = 0;
					}
					if (window_timer > 14) {
						attack_end();
						if (down_down) {
							attack = AT_DTHROW;
							window = 1;
							window_timer = 0;
						}
						else if (up_down) {
							attack = AT_UTHROW;
							window = 1;
							window_timer = 0;
						}
						else if ((right_down && !spr_dir) || (left_down && spr_dir)) {
							attack = AT_NTHROW;
							window = 1;
							window_timer = 0;
						}
						else {
							attack = AT_FTHROW;
							window = 1;
							window_timer = 0;
						}
					}
				}
				break;
			}
		break;

	case AT_NSPECIAL_2:
		can_move = false;
    	switch(window) {
    	    case 3:
    	        if (window_timer == 1) {
    	            spawn_hit_fx(x + 52 * spr_dir, y - 38, fx_sonic).depth = depth - 1;
    	            move_cooldown[AT_NSPECIAL_2] = 30;
    	        }     
    	    break;
    	}
		break;

	case AT_UTHROW:
		can_move = false;
		can_fast_fall = false;
		switch (window) {
			case 1:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				grabbed_id.x = x;
				grabbed_id.y = y;
				break;
			case 2:
				if (window_timer == 1 && !hitpause && !hitstop) {
					grabbed_id.state = PS_PRATFALL;
    				grabbed_id.ungrab = 0;
					var beeg_hitbox = create_hitbox(AT_UTHROW, 1, x, y);
					grabbed_id = noone;
					attack_end();
				}
		}
		break;

	case AT_NTHROW:
		can_move = false;
		can_fast_fall = false;
		switch (window) {
			case 1:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				grabbed_id.x = x + 24 * -spr_dir;
				grabbed_id.y = y;
				break;
			case 2:
				//if (window_timer < 5) {
				//	if (grabbed_id != noone) {
				//		off_edge = false;
				//		grabbed_id.ungrab = 0;
				//		grabbed_id.spr_dir = -spr_dir;
				//		grabbed_id.depth = depth - 0.1;
				//	}
				//	grabbed_id.x = x + 24 * -spr_dir;
				//	grabbed_id.y = y;
				//}
				if (window_timer == 1 && !hitpause && !hitstop) {
					grabbed_id.state = PS_PRATFALL;
    				grabbed_id.ungrab = 0;
					var beeg_hitbox = create_hitbox(AT_NTHROW, 1, x, y);
					grabbed_id = noone;
					attack_end();
				}
		}
		break;
		
	case AT_FTHROW:
		can_move = false;
		can_fast_fall = false;
		switch (window) {
			case 1:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				grabbed_id.x = x + 24 * spr_dir;
				grabbed_id.y = y;
				break;
			case 2:
				if (window_timer == 1 && !hitpause && !hitstop) {
					grabbed_id.state = PS_PRATFALL;
    				grabbed_id.ungrab = 0;
					var beeg_hitbox = create_hitbox(AT_FTHROW, 1, x, y);
					grabbed_id = noone;
					attack_end();
				}
		}
		break;

	case AT_DTHROW:
		can_move = false;
		can_fast_fall = false;
		switch (window) {
			case 1:
				if (window_timer == 1) {
					vsp = -12;
					hsp = 5 * spr_dir;
				}
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				grabbed_id.x = x + 38 * spr_dir;
				grabbed_id.y = y;
				break;
			case 2:
				vsp += 0.5;
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				grabbed_id.x = x + 12 * -spr_dir;
				grabbed_id.y = y;

				if (!free) {
					window = 3;
					window_timer = 0;
				}
				break;
			case 3:
				if (window_timer < 5) {
					if (grabbed_id != noone) {
						off_edge = false;
						grabbed_id.ungrab = 0;
						grabbed_id.spr_dir = -spr_dir;
						grabbed_id.depth = depth - 0.1;
					}
					grabbed_id.x = x + 12 * -spr_dir;
					grabbed_id.y = y;
				}
				else if (window_timer == 5 && !hitpause && !hitstop) {
					grabbed_id.state = PS_PRATFALL;
    				grabbed_id.ungrab = 0;
					var beeg_hitbox = create_hitbox(AT_DTHROW, 1, x, y);
					grabbed_id = noone;
					attack_end();
				}
				break;
		}
		break;
	
	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;

		if (window == 1 && vsp != 0) {
			vsp = lerp(vsp, 0, 0.5);
			hsp = lerp(hsp, 0, 0.3);
		}

		if (window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)) {
			if (magic_charges == 0) {
				if (voices) rand_voice(0);
			}
			if (magic_charges == 1) {
				if (voices) rand_voice(1);
				window = 4;
				window_timer = 0;
				magic_charges = 0;
			}
			else if (magic_charges == 2) {
				if (voices) rand_voice(2);
				window = 6;
				window_timer = 0;
				magic_charges = 0;
			}
			else if (magic_charges == 3) {
				if (voices) rand_voice(3);
				window = 8;
				window_timer = 0;
				magic_charges = 0;
			}
		}

		switch(window){
			case 4:
				if (window_timer == 0 && !hitpause && !hitstop) {
					hsp = 8 * spr_dir;
				}
				if (window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH)) {
					window = 5;
					window_timer = 0;
				}
				break;
			case 6:
				if (window_timer == 0 && !hitpause && !hitstop) {
					hsp = 14 * spr_dir;
				}
				if (window == 6 && window_timer == get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH)) {
					window = 7;
					window_timer = 0;
				}
				break;
			case 8:
				if (window_timer == 0 && !hitpause && !hitstop) {
					hsp = 18 * spr_dir;
				}
				if (window == 8 && window_timer == get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH)) {
					window = 9;
					window_timer = 0;
				}
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1: // startup
				break;
			case 2: // HOP
				if (window_timer == 1 && voices) rand_voice(0);
			case 3: // FALLING
				if (!free) {
					vsp = 0;
					hsp = 0;
					window = 5;
					window_timer = 0;
					destroy_hitboxes();
				}
				else if (place_meeting(x + 16 * spr_dir, y, asset_get("par_block"))) {
					window = 4;
					window_timer = 0;
					destroy_hitboxes();
				}

				if (shield_pressed) {
					//print(string(abs(hsp)));
					if (abs(hsp) > 5) {
						hsp = 5 * spr_dir;
					} 
					sound_play(asset_get("sfx_forsburn_consume_fail"));
					state = PS_PRATFALL;
				}
				break;
			
			case 4: // atk active
				vsp = -6;
				hsp = 0;
				if (window_timer % 8 == 0) {
					sound_play(asset_get("sfx_pillar_crumble"));
				}
				if (place_meeting(x + 16 * spr_dir, y - 30, asset_get("par_block")) == false) {
					state = PS_PRATFALL;
				}
				break;
			case 5: // SLAM
				if (window_timer == 1) {
					sound_play(asset_get("sfx_zetter_downb"));
				}
				if (window_timer == get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH)) {
					window = 6;
					window_timer = 0;
				}
				break;
		}
		break;
	
	
	
	case AT_DSPECIAL:
		switch (window) {
			case 1:
				if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) {
					if (magic_charges == 0 || !special_down) {
						window = 5;
						window_timer = 0;
						sound_play(sfx_quake_light);
						if (voices) rand_voice(0);
					}
				}
				break;
			case 2:
				if (window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)) {
					if (magic_charges <= 1 || !special_down) {
						window = 7;
						window_timer = 0;
						sound_play(sfx_quake_medium);
						if (voices) rand_voice(1);
						magic_charges -= 1;
					}
				}
				break;
			case 3:
				if (window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)) {
					if (magic_charges <= 2 || !special_down) {
						window = 9;
						window_timer = 0;
						sound_play(sfx_quake_heavy);
						if (voices) rand_voice(2);
						magic_charges -= 2;
					}
				}
				break;
			case 4:
				if (window_timer == get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH)) {
					window = 11;
					window_timer = 0;
					sound_play(sfx_quake_magic);
					if (voices) rand_voice(3);
					magic_charges -= 3;
				}
				break;
			
			case 5:
				if (window_timer == get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH)) {
					window = 6;
					window_timer = 0;
				}
				break;
			case 7:
				if (window_timer == 1 && !hitstop && !hitpause) {
					var offset = spr_dir ? 64 : 0
					var new_quake = instance_create(x + offset, y, "obj_article1");
					new_quake.pain_level = 1;
					new_quake.quake_size = 5;
					
				}
				if (window_timer == get_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH)) {
					window = 8;
					window_timer = 0;
				}
				break;
			case 9:
				if (window_timer == 1 && !hitstop && !hitpause) {
					var offset = spr_dir ? 64 : 0
					var new_quake = instance_create(x + offset, y, "obj_article1");
					new_quake.pain_level = 2;
					new_quake.quake_size = 10;
				}
				if (window_timer == get_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH)) {
					window = 10;
					window_timer = 0;
				}
				break;
			case 11:
				if (window_timer == 4 && !hitstop && !hitpause) {
					var offset = spr_dir ? 64 : 0
					var new_quake = instance_create(x + offset, y, "obj_article1");
					new_quake.pain_level = 3;
					new_quake.quake_size = 999;
				}
				if (window_timer == get_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH)) {
					window = 12;
					window_timer = 0;
				}
				break;
		}
		break;
	
	case AT_DSPECIAL_AIR:
		if (window == 1 && window_timer == 1 && voices) rand_voice(0);
		if (!free) {
			attack_end();
			attack = AT_DSPECIAL;
			window = 13;
			window_timer = 0;
		}
		break;
	
	
	case AT_TAUNT:
		move_cooldown[AT_TAUNT] = 60;
		if (window == 3 && window_timer == get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH) && taunt_down) {
			window = 1;
			window_timer = 0;
		}
		break;

	

	case AT_FSTRONG:
		switch (window) {
			case 6:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				if (window_timer != get_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH)) {
					grabbed_id.x = x + 150 * spr_dir;
					grabbed_id.y = y;
				}
				else {
					window = 7;
					window_timer = 0;
				}
				break;
			case 7:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				var move_to = 0;
				if (window_timer < 3) {
					move_to = x + 120 * spr_dir;
				}
				else if (window_timer < 6) {
					move_to = x + 90 * spr_dir;
				}
				else {
					move_to = x + 50 * spr_dir;
				}
				if (!grab_parried) {
					if (point_distance(grabbed_id.x, grabbed_id.y, move_to, y) > 5) {
						grabbed_id.x += 12 * -spr_dir;
						//grabbed_id.x = move_to;
					}
					if (window_timer == get_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH) - 1) {
						grabbed_id.state = PS_PRATFALL;
    					grabbed_id.ungrab = 0;
						//var beeg_hitbox = create_hitbox(AT_FSTRONG, 2, x + 12 * spr_dir, y - 10 )
						grabbed_id = noone;
					}
				}
				else {
					if (window_timer == get_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH)) {
						window = 8;
						window_timer = 0;
    					grab_parried = false;
					}
				}
				break;
		}
		break;

	case AT_DSTRONG:
		switch (window) {
			case 6:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}

				if (window_timer != get_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH)) {
					grabbed_id.x = x + 100 * spr_dir;
				}
				else {
					window = 7;
					window_timer = 0;
				}
				break;
			
			case 7:
				if (grabbed_id != noone) {
					off_edge = false;
					grabbed_id.ungrab = 0;
					grabbed_id.spr_dir = -spr_dir;
					grabbed_id.depth = depth - 0.1;
				}
				var move_to = 0;
				var move_y = 0;
				if (window_timer < 3) {
					move_to = x + 60 * spr_dir;
					move_y = y - 90;
				}
				else if (window_timer < 6) {
					move_to = x - 60 * spr_dir;
					move_y = y - 80;
				}
				else if (window_timer == 6) {
					move_to = x - 80 * spr_dir;
					move_y = y;
				}
				else if (window_timer == 7 && !hitpause && !hitstop) {
					grabbed_id.state = PS_PRATFALL;
    				grabbed_id.ungrab = 0;
					if (place_meeting(x - 80 * spr_dir, y + 4, asset_get("par_block"))) {
						print("This is tru")
						// spawn
						var beeg_hitbox = create_hitbox(AT_DSTRONG, 3, x, y);
					}
					else {
						var invis_hitbox = create_hitbox(AT_DSTRONG, 2, x, y);
					}
					grabbed_id = noone;
				}
				if (window_timer == get_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH)  && !hitpause && !hitstop) {
					spr_dir = -spr_dir;
				}

				if (!grab_parried) {
					if (window_timer <= 6 && grabbed_id.state == PS_HITSTUN) {
						//grabbed_id.x += 12 * -spr_dir;
						//grabbed_id.y += 12 * -spr_dir;
						grabbed_id.x = move_to;
						grabbed_id.y = move_y;
					}
				}
				else {
					if (window_timer == get_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH)) {
						window = 8;
						window_timer = 0;
    					grab_parried = false;
					}
				}
				break;
		}
		break;


		case AT_USTRONG:
		if (grabbed_id != noone) {
			off_edge = false;
			grabbed_id.ungrab = 0;
			grabbed_id.spr_dir = -spr_dir;
			grabbed_id.depth = depth - 0.1;
		}
		if (window == 6) {
			if (window_timer != get_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH)) {
				grabbed_id.x = x + 140 * spr_dir;
				grabbed_id.y = y - 80;
			}
			else {
				window = 7;
				window_timer = 0;
			}
		}
		if (window == 7) {
			var move_to = 0;
			var move_y = 0;
			if (window_timer < 3) {
				move_to = x + 60 * spr_dir;
				move_y = y - 60;
			}
			else if (window_timer < 6) {
				move_to = x - 26 * spr_dir;
				move_y = y - 30;
			}
			else if (window_timer == 6) {
				move_to = x - 80 * spr_dir;
				move_y = y;
			}
			else if (window_timer == 7 && !hitpause && !hitstop) {
				grabbed_id.state = PS_PRATFALL;
    			grabbed_id.ungrab = 0;
				if (place_meeting(x - 80 * spr_dir, y + 4, asset_get("par_block"))) {
					print("This is tru")
					// spawn
					var beeg_hitbox = create_hitbox(AT_USTRONG, 6, x + 60 * spr_dir, y - 10 )
				}
				else {
					var invis_hitbox = create_hitbox(AT_USTRONG, 5, x + 60 * spr_dir, y - 10 )
				}
				grabbed_id = noone;
			}

			if (!grab_parried) {
				if (window_timer <= 6 && grabbed_id.state == PS_HITSTUN) {
					//grabbed_id.x += 12 * -spr_dir;
					//grabbed_id.y += 12 * -spr_dir;
					grabbed_id.x = move_to;
					grabbed_id.y = move_y;
				}
			}
			else {
				if (window_timer == get_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH)) {
					window = 8;
					window_timer = 0;
    				grab_parried = false;
				}
			}
			
		}
		break;
}

#define rand_voice(voice_num)
if (!hitstop && !hitpause) {
	switch (attack) {
		case AT_NAIR:
		case AT_DTILT:
			var rand_choice = random_func(0, 3, true);
			if (rand_choice == 0) sound_play(sfx_voice_light1, false, noone, voice_vol);
			else if (rand_choice == 1) sound_play(sfx_voice_light2, false, noone, voice_vol);
			break;
		case AT_FTILT:
		case AT_DATTACK:
		case AT_DAIR:
		case AT_UAIR:
			var rand_choice = random_func(0, 3, true);
			if (rand_choice == 0) sound_play(sfx_voice_medium1, false, noone, voice_vol);
			else if (rand_choice == 1) sound_play(sfx_voice_medium2, false, noone, voice_vol);
			break;
		case AT_UTILT:
		case AT_FAIR:
		case AT_BAIR:
		case AT_DSPECIAL_AIR:
			var rand_choice = random_func(0, 3, true);
			if (rand_choice == 0) sound_play(sfx_voice_heavy1, false, noone, voice_vol);
			else if (rand_choice == 1) sound_play(sfx_voice_heavy2, false, noone, voice_vol);
			break;
		case AT_USPECIAL:
			sound_play(sfx_voice_medium1, false, noone, voice_vol);
			break;
		case AT_DSPECIAL:
				if (voice_num == 0) {
					var rand_choice = random_func(0, 2, true);
					if (rand_choice == 0) sound_play(sfx_voice_quakel1, false, noone, voice_vol);
					else if (rand_choice == 1) sound_play(sfx_voice_quakel2, false, noone, voice_vol);
				}
				else if (voice_num == 1) {
					sound_play(sfx_voice_quakel3);
				}
				else if (voice_num == 2) {
					var rand_choice = random_func(0, 2, true);
					if (rand_choice == 0) sound_play(sfx_voice_quakeh1, false, noone, voice_vol);
					else if (rand_choice == 1) sound_play(sfx_voice_quakeh2, false, noone, voice_vol);
				}
				else if (voice_num == 3) {
					sound_play(sfx_voice_quakem, false, noone, voice_vol);
				}
			break;
		case AT_FSPECIAL:
			if (voice_num == 0) {
				sound_play(sfx_voice_headbuckl, false, noone, voice_vol);
			}
			else if (voice_num == 1) {
				sound_play(sfx_voice_headbuckm, false, noone, voice_vol);
			}
			else if (voice_num == 2) {
				sound_play(sfx_voice_headbuckh, false, noone, voice_vol);
			}
			else if (voice_num == 3) {
				sound_play(sfx_voice_headbuckma, false, noone, voice_vol);
			}
			break
	}
}



#define spawn_base_dust // written by supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;



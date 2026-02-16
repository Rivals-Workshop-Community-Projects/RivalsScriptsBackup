//attack_update.gml

custom_attack_grid();

//B-reverse - it allows the character to turn in while using specials (fspec has custom handling)
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

//allow reverse ftilt code (by supersonic)
if (attack == AT_JAB)
{
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player)
	{
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if (get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time)
		{
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
            was_parried = false; 
        }
    }
	else reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
}

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FTILT:
		if (window == 3) {
			var forward_down = (right_down - left_down == spr_dir) || (right_stick_pressed - left_stick_pressed == spr_dir);
			if ((attack_pressed && forward_down) || is_attack_pressed(DIR_FORWARD)) {
		    	window += 1;
		        window_timer = 0;
		    }
		}
		break;
	case AT_UTILT:
		if (window == 1 && window_timer < 5) {
			hud_offset = lerp(hud_offset, 70, window_timer/5);
		}
		else hud_offset = 70;
		break;
	case AT_UAIR:
		if (window == 1 && window_timer < 5) {
			hud_offset = lerp(hud_offset, 60, window_timer/5);
		}
		else hud_offset = 60;
		break;
	case AT_USTRONG:
		if (window == 3) {
			var win_len = get_window_value(attack, window, AG_WINDOW_LENGTH);
			hud_offset = lerp(hud_offset, 100, window_timer/win_len);
		}
		else if (window > 3) hud_offset = 100;
		break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_EXTRA_1: // footstool
		down_down = true;
		force_crouch = true;
		if (!plant_gang_rune) hud_offset = 120;
		break;
	
	case AT_NSPECIAL:
		if (window != 1 && window < 8) hud_offset = 200;
		can_move = (window == 1 || window == 5 || window >= 8); // startup, empty recovery, swallow/punished recovery
		move_cooldown[AT_NSPECIAL] = 30;
		
		switch window {
			case 1:
				var win_len = get_window_value(attack, window, AG_WINDOW_LENGTH);
				if (!instance_exists(ptooie_obj)) hud_offset = lerp(hud_offset, 200, window_timer/win_len);
				hsp *= 0.8;
				vsp *= 0.8;
				if (window_timer == win_len) {
					if(nspecial_windbox_rune) ptooieless_nspecial = instance_exists(ptooie_obj) && ptooie_obj.state != 0;
					if (!instance_exists(ptooie_obj)) {
						ptooie_obj = instance_create(x, y-60, "obj_article1");
						set_attack_value(attack, AG_NUM_WINDOWS, 5);
						ptooie_full_fx = 0;
					} else if(ptooieless_nspecial){
						set_attack_value(attack, AG_NUM_WINDOWS, 5);
						ptooie_full_fx = 0;
					} else {
						window = 8;
						window_timer = 0;
					}
				}
				break;
			case 3: // Shares ptooie handling with case 2
				if (vsp > 2.5) vsp = 2.5;
				if(!ptooieless_nspecial){
					var dir = (right_down - left_down);
					if (dir != 0) {
						set_attack_value(attack, AG_NUM_WINDOWS, 7);
						window = 6;
						window_timer = 0;
						spr_dir = dir;
						break;
					}
					else if (!special_down) {
						window++;
						window_timer = 0;
						break;
					}
				} else if (!special_down) {
					window = 8;
					window_timer = 0;
					break;
				}
			case 2: // Ptooie handling
				if (window == 2) vsp = 0;
				hsp *= 0.8;
				
				if (state_timer % 10 == 0) {
					spawn_base_dust(x-2, y+floor(2*vsp), "wavedash", -1);
					spawn_base_dust(x+2, y+floor(2*vsp), "wavedash", 1);
					if (ptooie_full_fx) spawn_hit_fx(x, y-120, nspecial_vfx_full);
					else spawn_hit_fx(x, y-120, nspecial_vfx_half);
				}
				
				if(nspecial_windbox_rune && ptooieless_nspecial) ptooie_full_fx = true;
				else {
					ptooie_obj.x = lerp(ptooie_obj.x, x, 0.9);
					ptooie_obj.rot_speed = -3*spr_dir;
					var pt_timer = ptooie_obj.state_timer;
					var loop_timer = pt_timer % pt_total;
					if (pt_timer < pt_r) { // init rise
						ptooie_obj.y = ease_backOut(y-60, y-190, pt_timer, ptooie_raise_time, 1);
						ptooie_full_fx = (ptooie_obj.y < y-130);
					} else if (loop_timer < pt_r) { // looped rise
						pt_timer = loop_timer;
						ptooie_obj.y = ease_backInOut(y-110, y-190, pt_timer, ptooie_raise_time, 1);
						ptooie_full_fx = (ptooie_obj.y < y-130);
					} else if (loop_timer < pt_h) { // hold high
						pt_timer = loop_timer - pt_r;
						ptooie_obj.y = y-190 + 2*sin(pi * pt_timer / 16.667);
					} else if (loop_timer < pt_d) { // descend
						pt_timer = loop_timer - pt_h;
						ptooie_obj.y = ease_backInOut(y-190, y-110, pt_timer, ptooie_descend_time, 1);
						ptooie_full_fx = (ptooie_obj.y < y-180);
					} else { // hold low (deprecated)
						pt_timer = loop_timer - pt_total;
						ptooie_obj.y = y-110 - 2*sin(pi * pt_timer / 16.667);
					}
					if (instance_exists(ptooie_obj.hitbox)) {
						ptooie_obj.hitbox.x = ptooie_obj.x;
						ptooie_obj.hitbox.y = ptooie_obj.y;
					}
				}
				
				// Abyss Rune: Nspecial active windbox
				if(nspecial_windbox_rune && special_down){
					strong_windbox_h = ptooie_full_fx ? tall_strong_windbox_h : short_strong_windbox_h;
					strong_windbox_y = ptooie_full_fx ? tall_strong_windbox_y : short_strong_windbox_y;
					
					var strong_windbox = [x+strong_windbox_x, y+strong_windbox_y, x+strong_windbox_x+strong_windbox_w, y+strong_windbox_y+strong_windbox_h];
					var weak_windbox = [x+weak_windbox_x, y+weak_windbox_y, x+weak_windbox_x+weak_windbox_w, y+weak_windbox_y+weak_windbox_h];
					
					with(oPlayer) if player != other.player && !super_armor && !soft_armor && !hitpause && !invincible && !attack_invince && !hurtboxID.dodging {
						if(collision_rectangle(strong_windbox[0], strong_windbox[1], strong_windbox[2], strong_windbox[3], self, false, false)){
							do_a_fast_fall = false;
                    		can_fast_fall = false;
							var damage_mod = (get_player_damage(player)/100) * knockback_adj;
							vsp -= grav + (vsp > 0 ? 0.4 + damage_mod : 0.2 + damage_mod);
							spider_plant_windbox_death_timer = abs(vsp/grav) + 10;
							spider_plant_windbox_death_owner = other;
						} else if(collision_rectangle(weak_windbox[0], weak_windbox[1], weak_windbox[2], weak_windbox[3], self, false, false)){
							do_a_fast_fall = false;
                    		can_fast_fall = false;
							var damage_mod = (get_player_damage(player)/200) * knockback_adj;
							vsp -= grav + (vsp > 0 ? 0.4 + damage_mod : 0.1 + damage_mod);
							spider_plant_windbox_death_timer = abs(vsp/grav) + 10;
							spider_plant_windbox_death_owner = other;
						}
					}
					
					with(ptooie_obj){
						if(state == 1 && !destroyed && !hitstop){
							if(collision_rectangle(strong_windbox[0], strong_windbox[1], strong_windbox[2], strong_windbox[3], self, false, false)){
								vsp -= 1.5;
							} else if(collision_rectangle(weak_windbox[0], weak_windbox[1], weak_windbox[2], weak_windbox[3], self, false, false)){
								vsp -= 1;
							}
						}
					}
				}
				break;
			case 4: // Await ptooie drop
				if (vsp > 2) vsp = 2;
				var dir = (right_down - left_down);
				
				if (!instance_exists(ptooie_obj) || ptooie_obj.state != 0) {
					window = 8;
					window_timer = 0;
				}
				else if (ptooie_obj.y >= y-90) {
					window++;
					window_timer = 0;
					sound_play(asset_get("sfx_bite"));
				}
				else if (dir != 0) {
					set_attack_value(attack, AG_NUM_WINDOWS, 7);
					ptooie_obj.vsp = 0;
					window = 6;
					window_timer = 0;
					spr_dir = dir;
				}
				else {
					ptooie_obj.x = lerp(ptooie_obj.x, x, 0.9);
					ptooie_obj.vsp += 0.6;
				}
				break;
			case 5: // Chomp ptooie
				if (instance_exists(ptooie_obj)) {
					ptooie_obj.x = x;
					ptooie_obj.vsp += 0.6;
					if (window_timer > 2) {
						if (instance_exists(ptooie_obj.hitbox)) ptooie_obj.hitbox.destroyed = true;
						instance_destroy(ptooie_obj);
						ptooie_obj = noone;
					}
				}
			case 6: // Ptooie hurl
				vsp = 0;
				if (instance_exists(ptooie_obj) && ptooie_obj.state == 0) {
					if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						ptooie_obj.state = 1;
						ptooie_obj.state_timer = 0;
						var damping = (y - ptooie_obj.y - 100) / 80;
						ptooie_obj.hsp = (pt_hsp_base + pt_hsp_scale*damping) * spr_dir;
						ptooie_obj.vsp = pt_vsp_base + pt_vsp_scale*damping;

						var blow_fx = spawn_hit_fx(x+64*spr_dir, y-80, nspecial_vfx_spit);
						blow_fx.draw_angle = -40*spr_dir;
					} else {
						ptooie_obj.x += 3*spr_dir;
						ptooie_obj.y += window_timer/2;
						ptooie_obj.rot_speed = -3*spr_dir;
					}
					if (instance_exists(ptooie_obj.hitbox)) {
						ptooie_obj.hitbox.x = ptooie_obj.x;
						ptooie_obj.hitbox.y = ptooie_obj.y;
					}
				}
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
					spawn_base_dust(x, y+floor(2*vsp), "land");
				}
				break;
				
		}
		break;
	
	case AT_FSPECIAL:
		if (window == 1 && window_timer == 1 && fspecial_charge >= fspecial_large_charge) {
			fspecial_charge = fspecial_release_charge;
		}
		if (window == 1 && !fspecial_reversed && window_timer <= 5) {
			if (left_pressed - right_pressed == spr_dir) {
				fspecial_reversed = true;
				spr_dir *= -1;
				hsp *= -1;
				if (free) vsp -= 1; // as a treat
			}
		}
		if (window == 2) {
			if (fspecial_charge < fspecial_release_charge) {
				can_jump = true;
				if (shield_pressed) {
					clear_button_buffer(PC_SHIELD_PRESSED);
					window = 5;
					window_timer = 0;
				}
			}
			can_wall_jump = true;
			if (!special_down || fspecial_charge >= fspecial_release_charge) {
				window = 3;
				window_timer = 0;
			}
			fspecial_charge++;
			
			if (fspecial_charge == fspecial_mid_charge) {
				sound_play(asset_get('sfx_frog_fspecial_charge_gained_2'));
				fspecial_flash = 1;
			}
			else if (fspecial_charge == fspecial_large_charge) {
				sound_play(asset_get('sfx_frog_fspecial_charge_full'));
				fspecial_flash = 1;
				if(fspecial_infinite_charge_rune){ // Abyss Rune: Fspecial Infinite Charge
					fspecial_charge = 0;
					fspecial_stacks++;
				}
			}

			if (window == 3) {
				// 1, 2, 3
				fspecial_level = 1 + (fspecial_charge >= fspecial_mid_charge) + (fspecial_charge >= fspecial_large_charge);
				if (!fspecial_infinite_charge_rune) fspecial_charge = 0;
			}
		}
		if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			if(fspecial_infinite_charge_rune && fspecial_stacks > 0){  // Abyss Rune: Fspecial Infinite Charge
				for(var j = 1; j <= fspecial_stacks + 1; j++){
					var stored_fspecial_level = fspecial_level;
					if(j != fspecial_stacks + 1) fspecial_level = 3;
					var i = fspecial_level-1; // for array access
					var _x = !free ? x+(poison_ground_x[i]*spr_dir*j) : x+(poison_air_x[i]*spr_dir*j);
					var _y = !free ? y+poison_ground_y[i] : y+poison_air_y[i]*j;
					if (fspecial_level == 1) {
						var hitbox = create_hitbox(AT_FSPECIAL, 1+free, _x, _y);
						if (free) hitbox.proj_angle = poison_air_angle*spr_angle;
					}
					else instance_create(_x, _y, "obj_article2");
					fspecial_level = stored_fspecial_level;
				}
			} else {
				var i = fspecial_level-1; // for array access
				var _x = !free ? x+(poison_ground_x[i]*spr_dir) : x+(poison_air_x[i]*spr_dir);
				var _y = !free ? y+poison_ground_y[i] : y+poison_air_y[i];
				if (fspecial_level == 1) {
					var hitbox = create_hitbox(AT_FSPECIAL, 1+free, _x, _y);
					if (free) hitbox.proj_angle = poison_air_angle*spr_angle;
				}
				else instance_create(_x, _y, "obj_article2");
			}
			
			move_cooldown[AT_FSPECIAL] = fspecial_cooldown;

			if (!free) {
				hsp = fspecial_ground_hsp[i] * spr_dir;
			}
			else {
				hsp = fspecial_air_hsp[i] * spr_dir;
				vsp = fspecial_air_vsp[i];
			}
		}
		if (window == 4) can_wall_jump = true;
		break;
	
	
	
	case AT_USPECIAL:
		can_fast_fall = false;
	
		if (window == 1) {
			var win_len = get_window_value(attack, window, AG_WINDOW_LENGTH);
			hud_offset = lerp(hud_offset, 30, window_timer/win_len);
			if (window_timer == win_len) do_uspec_hitbox(1);
		}
		else {
			hud_offset = 30;
			can_wall_jump = true;
		}
		
		if (window == 2 && !hitpause) {
			if (vsp > -8) vsp--;
			spr_angle = lerp(spr_angle, hsp*-10, 0.5);

			var win_len = get_window_value(attack, window, AG_WINDOW_LENGTH);
			if (window_timer == win_len) do_uspec_hitbox(2);
			else if (window_timer % 4 == 0) do_uspec_hitbox(1);
		}
		else if (window > 3 && spr_angle != 0 && !hitpause) {
			spr_angle *= 0.9;
		}
		
		if (2 <= window && window <= 3 && window_timer % 4 == 2) {
			var vfx = spawn_hit_fx(x, y-10, uspecial_trail_vfx);
			vfx.draw_angle = spr_angle;
		}
		
		if (window == 5) {
			if(slowfall_rune && slowfalling){
				if !hitpause vsp = slowfall_speed;
				if !free set_state(PS_IDLE);
				else if !jump_down || slowfall_duration <= 0 set_state(PS_IDLE_AIR);
				iasa_script();
				uspecial_override = true;
			} else {
				if (window_timer == 12) create_hitbox(AT_USPECIAL, 3, x, y);
				spr_angle = 0;
				if(pratless_uspecial_rune && uspecial_count == 1 && !was_parried){
					if (!free) set_state(PS_IDLE);
					else if (down_pressed) set_state(PS_IDLE_AIR);
					else if (vsp > 3) vsp = clamp(vsp-1.5, 3, vsp);
					iasa_script();
				} else {
					if (!free) set_state(PS_PRATLAND);
					else if (down_pressed) set_state(PS_PRATFALL);
					else if (vsp > 3) vsp = clamp(vsp-1.5, 3, vsp);
					if(pratless_uspecial_rune && uspecial_count > 1 && free && !was_parried) {
						uspecial_prat_buffer = true;
						can_attack = true;
					}
				}
				if (state != PS_ATTACK_AIR) destroy_hitboxes();
			}
		}
		
		break;
	
	case AT_DSPECIAL:
	// Based on code written by VForce. Used with permission.
	
		// Movement properties
		can_fast_fall = false;
		can_move = false;
		if (window <= 2) {
			vsp = min(vsp, 1);
			hsp = clamp(hsp, -3, 3);
			can_shield = free;
		}
		else vsp = min(vsp, 4);
		
		if window > 1 && "dspecial_tilt" in self spr_angle = dspecial_tilt; // fixed issue where hurtbox and sprite didn't align properly
		hurtboxID.image_angle = spr_angle;
		
		// Armor
		if (window == 2) soft_armor = 20;
		else soft_armor = 0;
		
		// Reset on attack start
		if (window == 1 && window_timer == 1) {
			dspecial_tilt = 0;
			dspecial_timer = 0;
		}
		
		// Charge window
		if (window == 2) {
			var max_tilt = homing_dspecial_rune ? 720 : free ? 120 : 75;
			var tilt_dir = right_down - left_down;
			if (tilt_dir != 0) dspecial_tilt -= (homing_dspecial_rune ? 7.5 : 4.5) * tilt_dir;
			dspecial_tilt = clamp(dspecial_tilt, -max_tilt, max_tilt);
			spr_angle = dspecial_tilt;
			can_shield = (dspecial_timer < 20)
			
			// Calculate max distance, advance
			if (dspecial_timer >= dspecial_max_time || !special_down) {
				dspecial_distance = ease_circInOut(
						dspecial_distance_min, 
						dspecial_distance_max, 
						dspecial_timer, dspecial_max_time);
				dspecial_shortest_distance = [noone, 0];
				
				dspecial_distance_true = dspecial_distance;
				
				window = 3;
				window_timer = 1;
			}
			dspecial_timer++;
		}
		
		// Extend window
		if (window == 3) {
			var _max_ddistance = 36 * dsp_mult + dsp_start + 50;
			var _stem_hxoffset = lengthdir_x(4, dspecial_tilt);
			var _stem_hyoffset = lengthdir_y(4, dspecial_tilt) * spr_dir;
			var max_tilt = homing_dspecial_rune ? 720 : free ? 120 : 75;
			
			if (window_timer == 4) {
				
				// Homing handling
				
				with (oPlayer) {
					if (player == other.player) continue;
					
					var _x_distance = x - other.x;
					var _y_distance = (y - char_height / 2) - other.y;
					var _radius_2 = power(_x_distance, 2) + power(_y_distance, 2);
					
					// Check if within range
					if (_radius_2 < power(other.dspecial_distance, 2))
					{
						// Check if within angle limits
						var _angle = -1 * (darctan2(_y_distance, _x_distance) + 90);
						
						if (_angle < -180) _angle += 360;
						
						if ((_angle < other.dspecial_tilt + other.dspecial_lockon_degrees &&
							_angle > other.dspecial_tilt - other.dspecial_lockon_degrees) ||
							(_radius_2 < power(other.dspecial_distance_min + 40, 2) && 
							abs(_angle) > 30 && abs(_angle) < 90 && 
							_angle < other.dspecial_tilt + other.dspecial_lockon_degrees * 2 &&
							_angle > other.dspecial_tilt - other.dspecial_lockon_degrees * 2))
						{
							// Check if distance is less than previous
							if (other.dspecial_shortest_distance[@0] == noone ||
								_radius_2 < other.dspecial_shortest_distance[@0])
							{
								other.dspecial_shortest_distance[@0] = _radius_2;
								other.dspecial_shortest_distance[@1] = _angle;
							}
						}
					}
				}
				
				if (dspecial_shortest_distance[@0] != noone) {
					dspecial_distance = clamp(sqrt(dspecial_shortest_distance[@0]) - 30, dspecial_distance_true_min, dspecial_distance_max);
					dspecial_tilt = clamp(dspecial_shortest_distance[@1], -max_tilt, max_tilt)
				}
				
				var _check_position = dspecial_distance_min;
				var _increment = 10;
				while (_check_position < dspecial_distance)
				{
					if place_meeting(
						x + lengthdir_x(_check_position, dspecial_tilt + 90), 
						y + lengthdir_y(_check_position, dspecial_tilt + 90), 
						asset_get("par_block"))
					{
						dspecial_distance = _check_position;
						// Increase Precision
						var _old_check = _check_position;
						_check_position -= _increment;
						_increment = floor(_increment * 0.1);
						if (_increment <= 0) 
						{
							sound_play(asset_get("sfx_blow_medium1"));
							dspecial_bonk = spawn_hit_fx(
									x + lengthdir_x(
										_old_check + 40, 
										dspecial_tilt + 90), 
									y + lengthdir_y(
										_old_check + 40, 
										dspecial_tilt + 90), 
									305);
							break;
						}
					}
					else _check_position += _increment;
				}

				// Set move properties
				
				var atk = AT_DSPECIAL;
				var ratio = ease_linear(0, 1, floor(dspecial_distance_true - dspecial_distance_min), dspecial_distance_max);
				// Where ratio represents the percentage of possible distance covered, ranged [0, 1]
				
				// Set hitbox properties
				set_hitbox_value(atk, 1, HG_ANGLE, clamp(90+dspecial_tilt*spr_dir, 50, 130));
				
				set_hitbox_value(atk, 2, HG_ANGLE, clamp(90+dspecial_tilt*spr_dir, 50, 130));
				set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5 + 2*ratio);
				set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0.6 + 0.2*ratio);
				
				set_hitbox_value(atk, 3, HG_ANGLE, clamp(90+dspecial_tilt*spr_dir, 50, 130));
				set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 6 + 2*ratio);
				set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 0.7 + 0.2*ratio);
				
				// Set endlag
				set_window_value(atk, 5, AG_WINDOW_LENGTH, 5 + 3*ratio);
				set_window_value(atk, 6, AG_WINDOW_LENGTH, 5 + 3*ratio);
				set_window_value(atk, 7, AG_WINDOW_LENGTH, 8 + 8*ratio);
				
				// Head Hitbox
				var _head_x_distance = lengthdir_x(dspecial_distance + 20, dspecial_tilt + 90);
				var _head_y_distance = lengthdir_y(dspecial_distance + 20, dspecial_tilt + 90);
				var _head_hbox = create_hitbox(AT_DSPECIAL, 1, 0, 0);
				_head_hbox.x_pos = _head_x_distance + draw_x;
				_head_hbox.y_pos = _head_y_distance + draw_y;
				
				var _max_x_distance = lengthdir_x(dspecial_distance, dspecial_tilt + 90);
				var _max_y_distance = lengthdir_y(dspecial_distance, dspecial_tilt + 90);
				var _hurtbox_length = 40;
				
				var _reached_distance = 52;
				
				var _data = 0;
				while (_reached_distance - _hurtbox_length < dspecial_distance)
				{
					_data = [create_hitbox(AT_DSPECIAL, 2, 0, 0), _reached_distance, _max_x_distance, _max_y_distance];
					ds_list_add(dspecial_stem_hitboxes, _data);
					_reached_distance += _hurtbox_length;
				}
			}
		}
		
		// Spawn bite hitbox
		if (window == 4 && window_timer == 3 && !hitpause) {
			var _head_x_distance = lengthdir_x(dspecial_distance + 40, dspecial_tilt + 90);
			var _head_y_distance = lengthdir_y(dspecial_distance + 40, dspecial_tilt + 90);
			var _bite_hbox = create_hitbox(AT_DSPECIAL, 3, 0, 0);
			_bite_hbox.x_pos = _head_x_distance + draw_x;
			_bite_hbox.y_pos = _head_y_distance + draw_y;
			if(poison_consume_rune){ // poison consume rune
				var _bite_consume_hbox = create_hitbox(AT_DSPECIAL, 4, 0, 0);
				_bite_consume_hbox.x_pos = _head_x_distance + draw_x;
				_bite_consume_hbox.y_pos = _head_y_distance + draw_y;
			}
		}
		
		// Handle HUD offset
		if ((window == 4 || window == 5) && abs(spr_angle) < 10) {
			hud_offset = dspecial_distance_true+60;
		}
		
		// Dynamically set stem hitbox lengths
		var _length = ds_list_size(dspecial_stem_hitboxes);
		if (_length > 0)
		{
			for (var i = 0; i < _length; ++i)
			{
				var _data = dspecial_stem_hitboxes[|i];
				if !instance_exists(_data[@0])
				{
					ds_list_delete(dspecial_stem_hitboxes, i);
					i--;
					_length--;
					continue;
				}
				_data[@0].x_pos = _data[@2] * (_data[@1] / dspecial_distance) + draw_x;
				_data[@0].y_pos = _data[@3] * (_data[@1] / dspecial_distance) + draw_y;
			}
		}
		
		var adj_window_length = 
				(has_hit)
				? get_window_value(attack, window, AG_WINDOW_LENGTH)
				: get_window_value(attack, window, AG_WINDOW_LENGTH) * 1.5;
		
		// Hurtbox handling
		if ((window == 3 && window_timer == 4) || window == 4 || (window == 5 && window_timer < adj_window_length)) {
			hurtboxID.sprite_index = sprite_get("dspecial_stretch_hurt");
			if(long_dspecial_rune) {
				hurtboxID.sprite_index = sprite_get("dspecial_rune_hurt");
			}
		}
		else {
			hurtboxID.sprite_index = sprite_get("dspecial_hurt");
			hurtboxID.image_index = image_index;
		}
		
		// Ease back to idle angle during endlag
		if (window == 7) {
			spr_angle = ease_quadOut(round(dspecial_tilt), 0, min(window_timer, 5 - has_hit * 3), 5 - has_hit * 3);
		}
		
		// Aesthetics
		if (window == 2 && window_timer == 1 && !hitpause) {
			spawn_base_dust(x-12*spr_dir, y, "dash", spr_dir);
			spawn_base_dust(x+12*spr_dir, y, "dash", -spr_dir);
			//spawn_base_dust(x, y, "land", -spr_dir);
			if (free) spawn_base_dust(x, y+5, "djump", spr_dir);
		}
		if (window == 3 && window_timer == 4 && !hitpause) {
			sound_play(asset_get("sfx_syl_nspecial"));
		    sound_play(sound_get("sfx_atk_bite_01"), false, noone, 2, .7);

		}
	
		break;
	
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
	
	case AT_TAUNT:
		if (window == 1 && window_timer < 5) {
			hud_offset = lerp(hud_offset, 90, window_timer/5);
		}
		else hud_offset = 90;
		if(plant_gang_rune && window == 2 && window_timer == 1){
			var plant_gang_count = 0;
    		for (var i = instance_number(oPlayer) - 1; i >= 0; i--) // nested safe with statements, by frtoud
    		with (instance_find(oPlayer, i)) {
    			if "PLANT_GANG" in self && player == other.player {
    				if (plant_gang_count < 4) plant_gang_count++;
    				else instance_destroy(self);
    			}
    		}
			for(var i = 1; i < 5; i++){
				var _x_off = 80 * ceil(i/2) * (i%2 == 1 ? 1 : -1);
				var new_self = instance_create(x + _x_off, y, "oPlayer");
				with(new_self){
					x = other.x + _x_off;
					PLANT_GANG = true;
					player_id = other;
					ignore_camera = true;
				}
			}
		}
		break;
}

//vfx
with hit_fx_obj if player_id == other {
    if hit_fx == other.fx_explosion || hit_fx == other.bairvfx {
        depth = player_id.depth+1;
    }
}
//sfx/vfx
switch attack {
	
	case AT_JAB:
		if (window == 7 && window_timer == 4 && !hitpause) {
	        sound_play(sound_get("sfx_atk_bite_01"), false, noone,);
			//hyu
	        sound_play(asset_get("sfx_bigplant_clamp"), false, noone, 0.5, 1.1);
	        sound_play(asset_get("sfx_ell_dtilt2"), false, noone, 0.8, 1.1);
			//h
	    }
		
		break;
	
	case AT_DATTACK:
		if window == 1 && window_timer == 6 and !hitpause {
	        sound_play(asset_get("sfx_waveland_kra"), false, noone, .7, 1.2);
	    }
		//hyu
		if (window == 1 && window_timer == 2 && !hitpause) {
	        sound_play(asset_get("sfx_ell_big_missile_ground"), false, noone, 0.9, 1);
	    }//h
	    break;
	
	case AT_FTILT:
		if (window == 1 && window_timer == 3 && !hitpause) {
	        sound_play(sound_get("sfx_atk_bite_01"), false, noone,);
	    }
	    else if (window == 4 && window_timer == 3 && !hitpause) {
	    	sound_play(sound_get("sfx_atk_bite_03"), false, noone, 0.7, .9);
	    }
		break;
	
	case AT_UTILT:
		if (window == 1 && !hitpause) {
			if (window_timer == 6) interruptable_sfx = sound_play(sound_get("sfx_shake"));
			if (window_timer == 7) sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.7, .9);
		}
		break;
		
	case AT_NAIR:
		if (window == 1 && window_timer == 5 && !hitpause) {
	        interruptable_sfx = sound_play(asset_get("sfx_spin"), false, noone,);
	    }
		//hyu
		if (window == 2 && !hitpause) {
			if ((window_timer+3)%4==0){
				sound_play(asset_get("sfx_leaves"), false, noone, 0.8, 1.1);
			}
		}//h
		break;
	
	case AT_FAIR:
		if (window == 1 && !hitpause) {
			if (window_timer == 4) sound_play(asset_get("sfx_kragg_roll_start"), false, noone, 0.5, 0.9);//hyu
			if (window_timer == 7) sound_play(asset_get("sfx_shovel_swing_heavy2"), false, noone, .4, 1.025);
		}
		//hyu
		if (window == 1 && window_timer == 9 && !hitpause) {
	        sound_play(asset_get("sfx_propeller_dagger_release"), false, noone, 0.8, 0.8);
	    }//h
		
		break;
	
		//hyu
	case AT_UAIR:
		if (window == 1 && window_timer == 6 && !hitpause) {
	        sound_play(asset_get("sfx_shovel_swing_med2"), false, noone, 0.6, 0.9);
	        sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.4, 0.9);
	    }
		
		break;//h
	
	case AT_BAIR:
		if (window == 1 && window_timer == 1 && !hitpause) {
	        sound_play(asset_get("sfx_forsburn_consume_fail"), false, noone, .7, .8);
	    }
		//hyu
		//i also commented out the sfx in bair.gml
		if (window == 1 && window_timer == 14 && !hitpause) {
	        sound_play(asset_get("sfx_abyss_explosion"), false, noone, 0.5, 1.7);
	        //sound_play(asset_get("sfx_ell_dspecial_explosion_3"), false, noone, 1, 1.5);
	        //sound_play(asset_get("sfx_mol_norm_explode"), false, noone, 1, 1.1);
	        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 1, 0.9);
	        sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 1, 0.8);
	        interruptable_sfx = sound_play(sound_get("sfx_fireball"), false, noone, 0.7, 0.8);
	    }
		if (window == 3 && window_timer == 5 && !hitpause) {
	        interruptable_sfx = -4
	    }
		//h
		else if (window == 2 && window_timer == 4 && !hitpause) {
	    	var vfx = spawn_hit_fx( x, y, bairvfx );
	        vfx.depth -= 20;
		}
		break;
	
	case AT_DAIR:
		if (window == 1 && window_timer == 1 && !hitpause) {
	        sound_play(asset_get("sfx_kragg_rock_pull"), false, noone, .7, .9);
	    }
		//hyu
		if (window == 2 && window_timer == 4 && !hitpause) {
	        sound_play(asset_get("sfx_propeller_dagger_release"), false, noone, 0.7, 0.6);
	    }//h
		
		break;
	
	case AT_FSTRONG:
		if (window == 3 && window_timer == 3 && !hitpause) {
	        sound_play(sound_get("sfx_ike_attackair"), false, noone, .7, .9);
	    }
		//hyu
		if (window == 3 && window_timer == 3 && !hitpause) {
	        sound_play(asset_get("sfx_kragg_roll_turn"), false, noone, 0.8, 1.2);
	    }
		if (window == 1 && window_timer == 1 && !hitpause) {
	        sound_play(asset_get("sfx_ori_ustrong_charge"), false, noone, 0.7, 0.7);
	    }//h
		break;	
		
	case AT_USTRONG:
		if (window == 3 && window_timer == 3 && !hitpause) {
	        sound_play(sound_get("sfx_atk_bite_03"), false, noone, 1, .85);
	        sound_play(asset_get("sfx_syl_nspecial"), false, noone, .5, 1);
			//hyu
	        sound_play(sound_get("sfx_spike"), false, noone, 0.5, 1.4);
	        sound_stop(asset_get("sfx_tow_anchor_start"));
			//h
	    }
		else if (window == 1 && window_timer == 1 && !hitpause) {
	        sound_play(asset_get("sfx_syl_nspecial_plantgrowth"), false, noone, .7, 1.5);
			//hyu
	        sound_play(asset_get("sfx_tow_anchor_start"), false, noone, 0.3, 2);
			//h
	    }
		break;	
	
	case AT_DSTRONG:
		if (window == 1 && window_timer == 1 && !hitpause) {
			interruptable_sfx = sound_play(asset_get("sfx_kragg_rock_pull"));
		}
		break;
	
	case AT_NSPECIAL:
		if (window == 3 && window_timer == 2 && !hitpause) {
	        sound_play(asset_get("sfx_bird_sidespecial"), false, noone,.5, 1);
	    }
	    else if (window == 9 && window_timer == 3 && !hitpause) {
	    	sound_play(sound_get("sfx_death"), false, noone, 0.4, .9);
	    }
	    
		break;
	
	case AT_DSPECIAL:
		if (window == 2 && window_timer == 3 && !hitpause) {
	        interruptable_sfx = sound_play(asset_get("sfx_frog_fspecial_charge_loop"), false, noone, .7, .9);
	    }
	    if (window == 4 && interruptable_sfx != noone) {
	    	sound_stop(interruptable_sfx);
    		interruptable_sfx = noone;
	    }
	    else if (window == 6 && window_timer == 1 && !hitpause) {
	    	sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.5, 1);
	    }
		break;	
		
	case AT_USPECIAL:
		if (window == 1 && window_timer == 9 && !hitpause) {
			sound_play(asset_get("sfx_bird_nspecial"), false, noone, .8, 1);
		}
		//hyu
		if (window == 5 && !hitpause) {
			if (state_timer == 1) {
				sound_play(asset_get("sfx_leaves"), false, noone, 0.4, 0.9);
				sound_play(asset_get("sfx_leaves"), false, noone, 0.4, 1.2);
			}
			if (get_gameplay_time()%12==0){
				sound_play(asset_get("sfx_holy_grass"), false, noone, 0.5, 1.3);
			}
		}//h
		break;
		
	case AT_FSPECIAL:
		if (window == 1 && window_timer == 7 && !hitpause) {
			sound_play(asset_get("sfx_forsburn_consume_fail"), false, noone, .8, 1);
		}
		else if (window == 2 && window_timer == 1 && !hitpause) {
		interruptable_sfx = sound_play(asset_get("sfx_frog_fspecial_charge_loop"), false, noone, .7, .9);
	}
		else if window == 3 && window_timer == 9 {
		sound_play(asset_get("sfx_forsburn_spew_end"));

	}
		else if window == 4 && window_timer == 1 {
		sound_play(asset_get("sfx_bird_sidespecial"), false, noone, .3, .6);

	}
	break;

		}








// Also spawns the trail effects!
#define do_uspec_hitbox(hbox_num)
if (hitpause) return;

attack_end();
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 90+spr_angle*spr_dir);
var hbox = create_hitbox(AT_USPECIAL, hbox_num, 0, 0);
hbox.image_angle = spr_angle;

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
        else if (window_loops > 0) window_loops = 0;
    }
}

//break


#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
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
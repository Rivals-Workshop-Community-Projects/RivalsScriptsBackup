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
	
	case AT_JAB:
	case AT_FTILT:
	case AT_DTILT:
		if (window == 1 || window == 4) && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	case AT_DSPECIAL:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
	case AT_USTRONG:
	case AT_DSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;

}

switch(attack){
	
	case AT_JAB:
		if window == 1 && window_timer == phone_window_end was_parried = false;
		break;
	
	case AT_FTILT:
		
		if window == 3{
			var in_atk = attack_pressed;
			var in_up = up_down;
			var in_down = down_down;
			
			if up_stick_pressed{
				in_atk = 1;
				in_up = 1;
				in_down = 0;
			}
			
			if down_stick_pressed{
				in_atk = 1;
				in_up = 0;
				in_down = 1;
			}
			
			if left_stick_pressed || right_stick_pressed{
				in_atk = 1;
				in_up = 0;
				in_down = 0;
			}
			
			if jump_pressed && has_hit && !was_parried{
				attack_end();
				set_state(PS_JUMPSQUAT);
			}
			else if in_atk{
				var was_was_parried = was_parried;
				attack_end();
				switch(in_down - in_up){
					case 1:
						var old_spr_dir = spr_dir;
						set_attack(AT_DTILT);
						hsp = 16 * old_spr_dir;
						break;
					case 0:
						set_attack(AT_EXTRA_1);
						hurtboxID.sprite_index = sprite_get("ftilt2_hurt"); // why
						break;
					case -1:
						hsp = 16 * spr_dir;
						set_attack(AT_UTILT);
						break;
				}
				was_parried = was_was_parried;
			}
		}
		
		break;
	
	case AT_EXTRA_1:
		if window == 1 && window_timer == phone_window_end{
			hsp = 16 * spr_dir;
		}
		else{
			hsp = 0;
		}
		break;
		
	case AT_UTILT:
		if window == 1{
			if window_timer == 1 hsp = 0;
			// hsp = 2 * spr_dir;
			if window_timer == phone_window_end{
				y -= 32;
				vsp = -4;
				hsp = 10 * spr_dir;
				free = true;
			}
		}
		if hitpause && !was_parried{
			old_vsp = -6;
		}
		if window > 1{
			can_move = false;
			can_fast_fall = false;
			if !hitpause{
				vsp -= gravity_speed / 2;
				hsp	*= 0.75;
			}
		}
		break;
	
	case AT_DATTACK:
		
		if window == 1 && window_timer < 4 && down_strong_pressed{
			attack_end();
			set_attack(AT_DSTRONG);
			hsp = 12 * spr_dir;
		}
		break;
	
	case AT_NAIR:
		
		if (window == 1) nair_check = false;
		
		if window == 2 && hitpause && !was_parried{
			if !nair_check{
				if old_vsp == fast_fall old_vsp += 0.01;
				nair_check = true;
			}
			if old_vsp != fast_fall{
				old_vsp = min(old_vsp, -3);
				if down_pressed{
					do_a_fast_fall = true;
					old_vsp = fast_fall;
				}
			}
		}
		break;
	
	case AT_UAIR:
	
		if window == 1 && window_timer == phone_window_end - 1{
			array_push(phone_stopped_sounds, sound_play(asset_get("sfx_spin")));
		}
		
		if window == 5 && window_timer == phone_window_end{
			set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, uair_orig_height + has_hit_player * 64);
			set_hitbox_value(AT_UAIR, 4, HG_WIDTH, uair_orig_width + has_hit_player * 64);
			sound_play(asset_get("mfx_star"));
			if vsp < fast_fall && !was_parried && free{
				vsp = -2;
				y -= 10;
			}
		}
		
		if window < 5 && has_hit && down_hard_pressed{
			if hitpause old_vsp = fast_fall;
			else vsp = fast_fall;
		}
		
		break;
	
	case AT_FSTRONG:
		
		if window == 2 && window_timer == 1{
			var h = spawn_hit_fx(x - 16 * spr_dir, y - 56, vfx_sparkle);
			h.depth = depth - 1;
		}
	
	case AT_USTRONG:
	case AT_DSTRONG:
	
		break;
		
		if window == 2 && window_timer == phone_window_end{
			var h = spawn_hit_fx(x, y - 36, vfx_wavelengths[ir]);
			if attack == AT_FSTRONG h.x += 64 * spr_dir;
			if attack == AT_USTRONG h.y -= 64;
			h.draw_angle = random_func(0, 30, true) - 15;
			// h.depth = depth - 1;
		}
		
		break;
	
	case AT_NSPECIAL:
		
		switch(window){
			case 1:
				if window_timer == 1{
					vsp = min(vsp, 0);
				}
				should_charge = 0;
				set_window_value(attack, window, AG_WINDOW_GOTO, 3 - special_down);
				if (shield_pressed || shield_down || force_nspecial_store) && window_timer == phone_window_end{
					window = 5;
					window_timer = 0;
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
					
					switch_ir();
					
					if !joy_pad_idle{
						can_shield = true;
					}
					else{
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
				}
				else if window_timer == phone_window_end{
					array_push(phone_stopped_sounds, sound_play(asset_get("sfx_frog_fspecial_charge_loop"), 1));
				}
				break;
			case 2:
				if (window_timer - 1) % 6 == 0{
					array_push(phone_dust_query, [x + random_func(0, 20, true) - 10 - 20 * spr_dir, y, (window_timer == 1) ? "dash_start" : "dash", spr_dir]);
				}
				if shield_pressed || shield_down{
					window = 5;
					window_timer = 0;
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
					
					switch_ir();
					
					if !joy_pad_idle{
						can_shield = true;
					}
					else{
						clear_button_buffer(PC_SHIELD_PRESSED);
					}
				}
				else if !special_down || (nspecial_charge == nspecial_charge_max && window_timer == phone_window_end){
					window++;
					window_timer = 0;
				}
				else if window_timer == phone_window_end{
					if nspecial_charge < nspecial_charge_max{
						nspecial_charge++;
						var sounds = [
							"sfx_frog_fspecial_charge_gained_1",
							"sfx_frog_fspecial_charge_gained_2",
							"sfx_frog_fspecial_charge_full",
							];
						sound_play(asset_get(sounds[nspecial_charge - 1 % nspecial_charge_max]))
						if nspecial_charge == nspecial_charge_max{
							var h = spawn_hit_fx(x - 41 * spr_dir, y - 36, vfx_wavelengths[ir]);
							h.depth = depth - 1;
							h.draw_angle = 90 + random_func(0, 60, true) - 30;
						}
					}
				}
				break;
			case 3:
				if window_timer == phone_window_end{
					
					vsp = min(vsp, 0);
					
					var const = 1.05946309436; // 12th root of 2; important music constant
					array_push(phone_dust_query, [x + random_func(0, 20, true) - 10 - 20 * spr_dir, y, "dash_start", spr_dir]);
					
					if nspecial_charge == nspecial_charge_max{
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, -2));
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 1));
						sound_play(asset_get("mfx_star"), 0, noone, 1, power(const, 5));
						nspecial_charge = 0;
						
						var h = create_hitbox(attack, ir + 3, x + 64 * spr_dir, y - 36 + round(sin(nspecial_charge * 3) * 25));
						
						if free{
							var ang = -30 * spr_dir;
							h.vsp = lengthdir_y(h.hsp, ang);
							h.hsp = lengthdir_x(h.hsp, ang);
							h.y += 16;
							
							hsp = -5 * spr_dir;
							vsp = -5;
						}
					}
					
					else{
					
						var pitch = power(const, nspecial_charge * 2);
						sound_play(asset_get("mfx_star"), 0, noone, 1, pitch);
						
						var h = create_hitbox(attack, ir + 1, x + 64 * spr_dir, y - 36 + round(sin(nspecial_charge * 3) * 25));
						
						if free{
							var ang = -30 * spr_dir;
							h.vsp = lengthdir_y(h.hsp, ang);
							h.hsp = lengthdir_x(h.hsp, ang);
							h.y += 16;
						}
					}
				}
				break;
			case 4:
				if (window_timer % 6 == 0 && nspecial_charge){
					
					nspecial_charge--;
					
					var const = 1.05946309436; // 12th root of 2; important music constant
					var pitch = power(const, nspecial_charge * 2);
					sound_play(asset_get("mfx_star"), 0, noone, 1, pitch);
					
					var h = create_hitbox(attack, ir + 1, x + 64 * spr_dir, y - 36 + round(sin(nspecial_charge * 3) * 25));
					
					if free{
						var ang = -30 * spr_dir;
						h.vsp = lengthdir_y(h.hsp, ang);
						h.hsp = lengthdir_x(h.hsp, ang);
						h.y += 16;
					}
				}
				break;
		}
		
		if window > 1 && free && vsp > -3 && !(window > 2 && down_down){
			hsp = clamp(hsp, -3, 3);
			vsp -= gravity_speed * 2 / 3;
			vsp = min(vsp, 5);
		}
		
		if window > 3 && array_length(phone_stopped_sounds){
			sound_stop(phone_stopped_sounds[0]);
		}
		
		break;
	
	case AT_FSPECIAL:
		
		hsp *= 0.9;
		vsp *= 0.9;
		
		if window == 3 && window_timer == phone_window_end{
			if free vsp = -5;
			
			var spd = 7;
			var angle = ir ? 60 : 25;
			var h = create_hitbox(attack, 1, x + 48 * spr_dir, y - 56);
			h.hsp = lengthdir_x(spd, angle) * spr_dir;
			h.vsp = lengthdir_y(spd, angle);
		}
		
		break;
	
	
	
	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = (window > 1);
		set_attack_value(attack, AG_NUM_WINDOWS, 3 + (window == 4));
		switch(window){
			case 1:
				hsp *= 0.8;
				if vsp > 0 && free{
					vsp -= 0.9;
				}
				if window_timer == phone_window_end - 5{
					sound_play(asset_get("sfx_ori_ustrong_launch"));
					sound_play(asset_get("sfx_orca_snow_evaporate"));
				}
				if window_timer == 3{
					move_angle = 90 - 20 * (right_down - left_down);
				}
				if window_timer == phone_window_end{
					hsp = lengthdir_x(48, move_angle);
					vsp = lengthdir_y(48, move_angle);
					var h = spawn_hit_fx(x, y, vfx_sparkles_up);
					h.spr_dir = 1;
					h.draw_angle = move_angle - 90;
					
					prism_flag = 0;
				}
				break;
			case 2:
				var move_speed = 30;
				
				if !hitpause{
					hsp = lengthdir_x(move_speed, move_angle);
					vsp = lengthdir_y(move_speed, move_angle);
					
					var h = spawn_hit_fx(x + random_func(0, 20, true) - 10, y + random_func(1, 10, true) - 32, vfx_sparkle);
					h.prism_guy_mover = self;
					if abs(angle_difference(move_angle, 90)) < 25{
						h.hsp = random_func(2, 5, true) - 2;
						h.vsp = -random_func(1, 4, true) - 2;
					}
					else{
						h.hsp = lengthdir_x(random_func(1, 4, true) + 2, move_angle);
						h.vsp = lengthdir_y(random_func(2, 4, true) + 2, move_angle);
					}
				}
				break;
			case 3:
				if window_timer < 4{
					hsp *= 0.6;
					vsp *= 0.6;
				}
				break;
			case 4:
				hsp = 0;
				vsp = 0;
				can_move = false;
				
				if window_timer == phone_window_end - 5{
					sound_play(asset_get("sfx_ori_ustrong_launch"));
					sound_play(asset_get("sfx_orca_snow_evaporate"));
				}
				if window_timer == phone_window_end{
					hsp = lengthdir_x(48, move_angle);
					vsp = lengthdir_y(48, move_angle);
					var h = spawn_hit_fx(x, y, vfx_sparkles_up);
					h.spr_dir = 1;
					h.draw_angle = move_angle - 90;
					
					prism_flag = 0;
				}
				break;
		}
		if window > 2 && !free && !hitpause && vsp >= 0{
			attack_end();
			set_state(PS_PRATLAND);
		}
		break;
	
	
	
	case AT_DSPECIAL:
		can_wall_jump = window > 1;
		set_window_value(attack, 5, AG_WINDOW_TYPE, 7 * !has_hit);
		
		switch(window){
			case 1:
				if !can_dspecial{
					window = 2;
					window_timer = 8;
				}
				else{
					hsp *= 0.8;
					vsp *= 0.8;
					
					if window_timer == phone_window_end{
						spawn_hit_fx(x, y, vfx_sparkles_up);
						hsp = 8 * spr_dir;
						vsp = -7;
						x += hsp * 2;
						y += vsp * 2;
					}
				}
				break;
			case 2:
				can_dspecial = 0;
				
				can_move = 0;
				hsp = clamp(hsp + air_accel * (right_down - left_down), -10, 10);
				
				if window_timer % 4 == 1{
					var h = spawn_hit_fx(x + random_func(0, 20, true) - 10, y + random_func(1, 10, true) - 32, vfx_sparkle);
					h.prism_guy_mover = self;
					h.hsp = hsp * 0.2 + random_func(1, 4, true) - 2;
					h.vsp = vsp * 0.2 + random_func(2, 4, true) - 2;
				}
				
				if window_timer == phone_window_end{
					hsp = clamp(hsp, -4, 4);	
				}
				break;
			case 3:
				if hitpause && !was_parried{
					old_hsp = 3 * spr_dir;
					old_vsp = -7;
				}
			case 4:
				if !free{
					window = 6;
					window_timer = 0;
					array_push(phone_dust_query, [x, y, "land", spr_dir]);
					sound_play(landing_lag_sound);
				}
				break;
			case 6:
				if free{
					attack_end();
					set_state(PS_IDLE_AIR);
				}
				break;
		}
		break;
}



#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}



#define switch_ir

ir = !ir;
ir_change_timer = ir_change_timer_max;

var h = spawn_hit_fx(x - 32 * spr_dir, y - 40, vfx_wavelengths[ir]);
h.depth = depth - 1;
init_shader();

with obj_article1 if player_id == other spawn_hit_fx(x, y, player_id.vfx_wavelengths[player_id.ir]);

var replaced = [];

with pHitBox if player_id == other && attack == AT_NSPECIAL{
	array_push(replaced, self);
}

for (var i = 0; i < array_length(replaced); i++){
	var cur = replaced[i];
	
	var h = create_hitbox(AT_NSPECIAL, cur.hbox_num + (ir ? 1 : -1), cur.x, cur.y);
	h.hitbox_timer = cur.hitbox_timer;
	h.length = max(cur.length, h.hitbox_timer + h.length);
	h.spr_dir = cur.spr_dir;
	h.player = cur.player;
	
	var spd = abs(h.hsp);
	var ang = point_direction(0, 0, cur.hsp, cur.vsp);
	h.hsp = lengthdir_x(spd, ang);
	h.vsp = lengthdir_y(spd, ang);
	
	instance_destroy(cur);
}

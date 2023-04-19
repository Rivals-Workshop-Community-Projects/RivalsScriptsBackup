switch(attack) {
	case AT_USPECIAL:
		can_fast_fall = false;
		if (window == 2 && !hitpause && window_timer % 3 == 0) {
			spawn_hit_fx( x + spr_dir * 20, y - 20, HFX_ZET_FIRE );
			//sound_play(asset_get("sfx_burnapplied"))
		}
		if (window == 3 && !hitpause) {
			if (vsp < 0) {
				vsp *= .85;			
			}
			hsp *= .8;
			can_wall_jump = true;
		}
	break;
	case AT_DAIR:
		if (window <= 3) {
			can_move = false;
		}
		can_fast_fall = false;
		if (!hitpause) {
			can_wall_jump = true;
		} else {
			can_wall_jump = false;
		}
		//Stalling
		if (window == 1) {
			vsp = 0;
			hsp = 0;
		}
		//Landing
		if (window == 2 || window == 3) {
			if (!hitpause) {
				vsp = 16;
				hsp = spr_dir * 6;
				if (!free) {
					destroy_hitboxes();
					window = 4;
					window_timer = 0;
				}
			}
			//Bouncy off Projectile Code
			with (pHitBox) {
				if (attack == AT_DAIR && type == 1 && player_id == other.id) {
					with (pHitBox) {
						if (type == 2 && place_meeting(x, y, other)) {
							other.player_id.dair_bounce = true;
						}
					}
				}
			}
		}
		//Whiffing/Endlag/Air when Grounded
		if (window >= 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 4 && free) {
			window = 6;
			window_timer = 0;
		}
		if (dair_bounce || (has_hit && window < 5)) && !hitpause {
			sound_play(jump_sound);
			can_move = true;
			dair_bounce = false;
			djumps = 0
			destroy_hitboxes();
			vsp = -8;
			hsp = -spr_dir * 2;
			window = 5;
			window_timer = 0;
		}
	break;
	case AT_FSPECIAL:
		/*
		switch(window) {
			case 3: //Retract
				//hsp = 0;
			case 1: //Start Up
			case 2: //Projectile
				//vsp = 0;
				//hsp = lerp(hsp , 0, .1);
				//can_move = false;
				//can_fast_fall = false;
				//can_wall_jump = false;
			break;
		}
		*/
		/*
		if (instance_exists(mic_proj)) {
			print(mic_proj.mic_grabbed_obj);
		}
		*/
		if (instance_exists(mic_proj) && !has_hit && can_wall_tether) {
			with mic_proj {
				if place_meeting(x, y, asset_get("par_block")) {
					other.wall_tether = true;
					var tether = spawn_hit_fx(x, y, 305);
					sound_play(asset_get("sfx_clairen_nspecial_grab_success"));
					other.window = 2;
					other.window_timer = 0;
					//other.window_timer = clamp(6 - other.window_timer, 0, 30); //DiscoBall Jump
					other.tether_to_x = x;
					other.tether_x = other.x;
					other.tether_y = other.y;
					other.can_wall_tether = false;
					instance_destroy(self);
				}
			}
		}
		if (wall_tether && !hitstop) {
			can_move = false;
			vsp = 0;
			hsp = 0;
			x += ((tether_to_x - tether_x) / 6);
			y = tether_y;
			while (place_meeting(x, y, asset_get("par_block"))) {
				x -= spr_dir;
			}
			if (window_timer >= 6) {
				x = tether_to_x;
				while (place_meeting(x, y, asset_get("par_block"))) {
					x -= spr_dir;
				}
				y = tether_y;
				set_state(PS_FIRST_JUMP);
			}
		}
		if (instance_exists(mic_proj) && mic_proj.has_hit && mic_proj.mic_grabbed_obj != -4) {
			vsp = 0;
			hsp = 0;
			can_move = false;
			can_fast_fall = false;
			if (window == 2 && window_timer ==  get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
				mic_grabbed_obj = mic_proj.mic_grabbed_obj;
				print("mario")
				set_attack(AT_UTHROW);
			}
		}
		
		if (window == 1 && window_timer ==  get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			mic_proj = create_hitbox(AT_FSPECIAL, 2, x + 40 * spr_dir, y - 24)
		}
	break;
	case AT_UTHROW:
		if (window == 1) {
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
		}
		
		if instance_exists(mic_grabbed_obj) {
			mic_grabbed_obj.can_tech = false;
			mic_grabbed_obj.can_wall_tech = false;
			switch(image_index) {
				case 0:
					mic_grabbed_obj.x = lerp(mic_grabbed_obj.x, x, .5);
					mic_grabbed_obj.y = lerp(mic_grabbed_obj.y, y - 10, .5);
				break;
				case 1:
					mic_grabbed_obj.x = lerp(mic_grabbed_obj.x, x, .5);
					mic_grabbed_obj.y = lerp(mic_grabbed_obj.y, y - 20, .5);
				break;
				case 2:
					mic_grabbed_obj.y = y - 40;
					mic_grabbed_obj = -4;
				break;
				default:
					mic_grabbed_obj = -4;
				break;
			}
		}
	break;
	case AT_DSPECIAL:
		can_move = false;
		if (window == 1) {
			//sound_play(asset_get("sfx_sand_screech"), false, noone, 1, .95);
			sound_play(asset_get("sfx_sand_yell"), false, noone, 1, .95);
		}
		if (has_hit || window > 3) {
			can_fast_fall = false;
		}
		if (free) {
			vsp -= (gravity_speed - .3);
			hsp *= .95;
		}
	break;
	case AT_NAIR:
	/*
		if (!hitpause && (window == 2 || window == 3) && window_timer % 3 == 0) {
			with pHitBox {
				if (player_id == other.id && type == 1) {
					for (var i = 0; i <= 20; i++) {
						can_hit[i] = true;
					}
				}
			}
		}
		*/
	break;
	case AT_NSPECIAL:
		if window == 2 {
			can_move = false;
		}
		hsp *= .99;
		vsp *= .99;
	break;
	case AT_NSPECIAL_2:
		if (!hitpause) {
			switch(window) {
				case 1:
					if (window_timer == 4) {						
						var clap = spawn_hit_fx(x, y - 80, 305);
					} else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						x += 12 * spr_dir;
					}
				break;
				case 2:
					 if (window_timer % 20 == 0) {
						var _offset = -40;
						sound_play(asset_get("sfx_pom_note1"));
						spawn_hit_fx(x, y + _offset, notes_s);
						create_hitbox(AT_NSPECIAL, 2, x, y + _offset);
						if (instance_exists(clam_ball)) {
							var ball_fx = spawn_hit_fx(clam_ball.x, clam_ball.y, notes_s);
							create_hitbox(AT_NSPECIAL, 2, clam_ball.x, clam_ball.y);
						}
					 }
					 if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						set_attack(AT_NSPECIAL_AIR);
					 }
				break;
			}
			can_move = false;
			hsp *= .99;
			vsp *= .99;
		}
	break;
	case AT_NSPECIAL_AIR:
		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && thrillers_left) {
			thrillers_left -= 1;
			set_attack(AT_NSPECIAL_AIR);
		}
		can_move = false;
		hsp *= .99;
		vsp *= .99;
	break;
	case AT_FSTRONG:
		if (window == 3 && window_timer == 1 && !hitpause) {
			sound_play(asset_get("sfx_blow_heavy1"), false, noone, .5, 1);
		}
	break;
	
	
	case AT_TAUNT:
		if (window == 1 && taunt_down && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
			window_timer = 0;
		}
	break;
}
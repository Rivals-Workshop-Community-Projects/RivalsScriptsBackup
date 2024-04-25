//
switch(attack) {
	case AT_BAIR:
		if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && bair_spins) {
			bair_spins--;
			window = 2;
			window_timer = 0;			
		}
	break;
	case AT_DAIR:
		can_move = false;
		can_wall_jump = true;
		if (hsp != 0) {
			hsp *= .9;
		}
		switch(window) {
			case 1:
				if (vsp < 0) {
					vsp *= .9;
				} else {
					vsp = 0;
				}
			break;
			case 2:
				if !hitpause {
					vsp = 18;
				}
				if (state_timer >= 30) { //40
					//can_jump = !has_hit;
					if !(hitpause || hitstop) {
						can_jump = true;
						can_shield = true;
					} else {
						can_jump = false;
						can_shield = false;
					}
				}
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
					window_timer = 1;
				}
				if (!free) {
					destroy_hitboxes();
					sound_play(asset_get("sfx_shovel_hit_heavy1"))
					spawn_hit_fx( x, y, 301 );
					window = 3;
					window_timer = 0;
				}
			break;
			default:
			
			break;
		}
	break;
	case AT_DATTACK:
		var _d_speed = spr_dir * 4;
		switch(window) {
			case 1: //Start Up
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) {
				//vsp = -3;
			}
			if (free) {
				//hsp = _d_speed;
				set_attack(AT_FAIR);
				hsp = clamp(hsp, -air_max_speed, air_max_speed);
			}
			can_ustrong = true;
			break;
			case 2: //Air
				//
				if (!hitpause) {
					hsp = _d_speed;
				}
				can_move = false;
				//
				//if (!free && !hitpause) {
				//	sound_play(asset_get("sfx_swipe_medium1"));
				//	window = 3;
				//	window_timer = 0;
				//}
			break
		}
	break;
	case AT_DTILT:
		if (window == 3) {
			if (attack_pressed && dtilts) {
				dtilts--;
				window = 1;
				window_timer = 0;
			}
		}
	break;
	case AT_USPECIAL:
		//		
		if (uspecial_has_pratfall) {
			set_window_value(attack, 3, AG_WINDOW_TYPE, 7);
			var _uspecial_hsp = spr_dir * -3;
			var _uspecial_vsp = -12;
		} else {
			set_window_value(attack, 3, AG_WINDOW_TYPE, 1);
			move_cooldown[AT_USPECIAL] = 9999;
			var _uspecial_hsp = spr_dir * -6;
			var _uspecial_vsp = -8;
		}
		//	
		can_move = false;
		var _uspec_fric = .95;
		var _uspec_min = 1;
		if (window == 1) {
			if (!free) {
				vsp = -14; //-8
				sound_play(jump_sound);
			}
			//Lasers
			if (window_timer == 4) {
				//Laser 1 Center
				var _laser = instance_create(x + 32 * spr_dir, y, "obj_article1");
				_laser.image_alpha = .2;
				_laser.sprite_index = sprite_get("uspecial_ball")
				_laser.spr_dir = spr_dir;
				//_laser.image_angle = 90 * spr_dir;
				_laser.depth = -40;
				_laser.orb_attack = AT_USPECIAL;
				_laser.orb_owner = self;
				_laser.orb_special = true;
				//Laser 2 - Down
				var _laser = instance_create(x + 16 * spr_dir, y + 16, "obj_article1");
				_laser.image_alpha = .2;
				_laser.sprite_index = sprite_get("uspecial_ball")
				_laser.spr_dir = spr_dir;
				_laser.depth = -38;
				_laser.orb_attack = AT_USPECIAL;
				_laser.orb_owner = self;
				_laser.start_x = _laser.x;
				_laser.start_y = _laser.y;
				_laser.end_x = _laser.x - 64 * spr_dir;
				_laser.end_y = _laser.y + 64;
				_laser.end_angle = -90 * spr_dir;
				//Laser 3 - Right
				var _laser = instance_create(x + 48 * spr_dir, y - 16, "obj_article1");
				_laser.image_alpha = .2;
				_laser.sprite_index = sprite_get("uspecial_ball")
				_laser.spr_dir = spr_dir;
				_laser.depth = -38;
				_laser.orb_attack = AT_USPECIAL;
				_laser.orb_owner = self;
				_laser.start_x = _laser.x;
				_laser.start_y = _laser.y;
				_laser.end_x = _laser.x + 64 * spr_dir;
				_laser.end_y = _laser.y - 64;
				_laser.end_angle = 0;
			}
			if (window_timer >= 4) {
				hsp = 0;
				vsp = 0;
			}
			//
		}
		if (window == 2) {
			//Horizontal Fric
			hsp = 0;
			vsp = 0;
			//
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
				if (uspecial_loop && special_down) {
					uspecial_loop-- 
					window = 2;
					window_timer = 0;
				} else {
					if (uspecial_loop == 0) {
						uspecial_has_pratfall = true;
						set_window_value(attack, 3, AG_WINDOW_TYPE, 7);
						var _uspecial_hsp = spr_dir * -6;
						var _uspecial_vsp = -12;
					}
					hsp = _uspecial_hsp;
					vsp = _uspecial_vsp;// - ((uspecial_loop_max - uspecial_loop) * 4);
				}
				if (window_timer != 0) {
					sound_play(asset_get("sfx_absa_jab1"));
				}
			}
		}
	break;
	case AT_NSPECIAL_AIR:
		var _nspec_fric = .99;
		if (window == 1) {
			hsp *= _nspec_fric;
			vsp *= _nspec_fric;
		}
		if (window == 2) {
			//Horizontal Fric
			can_move = false;
			hsp = 0;
			vsp = 0;
		}
	case AT_NSPECIAL:
		if (window == 1 && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			var _laser = instance_create(x - 12 * spr_dir, y - 96, "obj_article1");
			_laser.image_alpha = .2;
			_laser.spr_dir = spr_dir;
			_laser.depth = 0;
			//_laser.orb_attack = attack;
			_laser.orb_attack = AT_NSPECIAL;
			_laser.start_x = _laser.x;
			_laser.start_y = _laser.y;
			_laser.end_x = x + (36 * spr_dir);
			_laser.end_y = y - 24;
			_laser.orb_owner = self;
		}
	break;
	case AT_DSPECIAL:
		if (window == 1 && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
			//Laser 1 Center
			var _laser = instance_create(x - 32 * spr_dir, y - 24, "obj_article1");
			_laser.image_alpha = .2;
			_laser.spr_dir = spr_dir;
			_laser.image_angle = 90 * spr_dir;
			_laser.depth = -40;
			_laser.orb_attack = AT_DSPECIAL;
			_laser.orb_owner = self;
			//Laser 2 Left
			var _laser = instance_create(x - 64 * spr_dir, y - 48, "obj_article1");
			_laser.image_alpha = .2;
			_laser.spr_dir = spr_dir;
			_laser.image_angle = 90 * spr_dir;
			_laser.depth = 0;
			_laser.orb_attack = AT_DSPECIAL;
			_laser.orb_owner = self;
			//Laser 3 Back
			var _laser = instance_create(x + 0 * spr_dir, y - 64, "obj_article1");
			_laser.image_alpha = .2;
			_laser.spr_dir = spr_dir;
			_laser.image_angle = 90 * spr_dir;
			_laser.depth = 0;
			_laser.orb_attack = AT_DSPECIAL;
			_laser.orb_owner = self;
			//Laser 4 Front
			var _laser = instance_create(x + 32 * spr_dir, y - 36, "obj_article1");
			_laser.image_alpha = .2;
			_laser.spr_dir = spr_dir;
			_laser.image_angle = 90 * spr_dir;
			_laser.depth = -40;
			_laser.orb_attack = AT_DSPECIAL;
			_laser.orb_owner = self;
			//Laser 5 Invisible
			var _laser = instance_create(x - 8 * spr_dir, y - 48, "obj_article1");
			_laser.image_alpha = 0;
			_laser.spr_dir = spr_dir;
			_laser.image_angle = 90 * spr_dir;
			_laser.depth = -40;
			_laser.orb_attack = AT_DSPECIAL;
			_laser.orb_owner = self;
			_laser.orb_special = true;
		}
	break;
	case AT_FSTRONG :
		if (window == 2 && (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) && !(instance_exists(fstrong_one) || instance_exists(fstrong_two)){
			print("Note")
			var _note_speed = 2;
			//
			fstrong_one = instance_create(x + 24 * spr_dir, y - 48, "obj_article2");
			fstrong_two = instance_create(x + 24 * spr_dir, y - 16, "obj_article2");
			//
			fstrong_one.hsp = spr_dir * _note_speed;
			fstrong_one.start_y = y - 32;
			fstrong_one.y_direction = 1;
			//
			fstrong_two.hsp = spr_dir * _note_speed;
			fstrong_two.start_y = y - 32;
			fstrong_one.y_direction = -1;
		}
	break;
		

}
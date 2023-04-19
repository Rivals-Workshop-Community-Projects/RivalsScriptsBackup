
switch (attack) {
	case AT_DATTACK:
		//if (can_fly && (jump_down || attack_down)) {
		//	in_flight = true;
		//}
	break;
	case AT_NSPECIAL:
		switch(window) {
			case 1:
				hsp *= 1 - air_friction;
				vsp *= 1 - air_friction;
				if (spr_dir == 1 && left_pressed) {
					needle_angle *= -1;
					spr_dir *= -1;
					hsp *= -1;
				}
				if (spr_dir == -1 && right_pressed) {
					needle_angle *= -1;
					spr_dir *= -1;
					hsp *= -1;
				}
			break;
			case 2:
				if (has_airdodge && shield_pressed) {
					set_state(PS_AIR_DODGE);
				}
				if window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) {
					window_timer = 0;
					needle_loop += 1;
				}
				if ((special_pressed || attack_down)) || (needle_loop >= needle_max_loop) {
					window = 3;
					window_timer = 0;
				}
				needle_angle += needle_dir;
				if (needle_angle == (needle_range + 45) * spr_dir || needle_angle == (needle_range - 45) * spr_dir) {
					needle_dir *= -1;
				}
				if (needle_once_per <= 1) {
					hsp *= .75;
					if (abs(vsp) < 1) {
						vsp = 0;
					} else {
						vsp *= .5;
					}
				}
				if (!in_flight) {  //Float during nspecial
					can_move = false;
				}
				can_fast_fall = false
			break;
			case 3:
				if (window_timer == 3 && !hitpause) {
					if (has_item) { //Item NSPECIAL
						var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x + 44 * spr_dir, y - 20);
						item_thrown.image_index = has_item - 1;
						//
						has_item = false;
					}
				}
				can_fast_fall = false;
			break;
			case 4:
				can_fast_fall = true;	
			break;
		}
	break;
	case AT_USPECIAL:
		switch(window) {
			case 1: //Start Up
				if (spr_dir == -1 && right_down) {
					spr_dir *= -1;
				}
				if (spr_dir == 1 && left_down) {
					spr_dir *= -1;
				}
			case 2: //Swing
				can_wall_jump = true;
				if (!hitpause) {
					hsp = 0;
					vsp = 0;
					can_move = false;
				}				
			break;
			case 3: //Rise
				can_wall_jump = true;
				if (!hitpause) {
					vsp = -20; //-16
					hsp = spr_dir * 12; //8
					can_move = false;
				}
				if (window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH) && (!has_flown || in_flight)) {
					hsp = 0;
					can_fly = true;					
				}
			break; 
			case 4: //Pre Spin
				can_wall_jump = true;
				if (jump_down && !has_flown) {
					if (can_fly) {
						in_flight = true;
						can_fly = false;
					} 
				} else {
					if (!hitpause && !in_flight) {
						hsp = 0;
						vsp = 0;
						can_move = false;
					}
				}		
				if in_flight {
					if (jump_down) {
						window_timer = 0;
						can_move = true;
					} else {
						in_flight = false;
						can_fly = false;
					}
				}					
				
			break;
			case 5: //Spin
				can_wall_jump = true;
				if (!hitpause) {
					hsp = 0;
					vsp = 0;
					can_move = false;
				}
				can_fly = false;
				in_flight = false;
			break;
			case 6: //Prefall
				can_wall_jump = true;
				if (!hitpause) {
					hsp = 0;
					vsp = 0;
					can_move = false;
				}
			break;
			case 7: //Fall 1
			case 8: //Fall Loop
				//if (!has_hit) {
					can_wall_jump = true;
				//}
				if (!hitpause) {
					vsp = 24;
					hsp = 0;
					can_move = false;
				}
				if (!free) {
					window = 9;
					window_timer = 0;
				}
			break;
			case 9: //Land
				with pHitBox {
					if (attack == AT_USPECIAL && orig_player == other.player && hbox_num != 8) {
						instance_destroy(self);
					}
				}
			case 10: //Endlag
				if (!hitpause) {
					hsp = 0;
					vsp = 0;
					can_move = false;
				}
			break;
		}
	break;
	case AT_DSPECIAL:
		if (window == 2 && !has_item) {
			if (allow_sounds) {
				sound_play(sound_get("ItemGet0"), false, noone, 1, 1);
			} else {
				sound_play(asset_get("sfx_gem_collect"), false, noone, 1, 1);
			}
			var _rand_1 = random_func(11, 100, true) + 1;
			var _rand_2 = random_func(12, 100, true) + 1;
			var _rand_item = 0;
			var _numb_1 = 0;
			var _numb_2 = 0;
			
			print("Rand 1: " + string(_rand_1) + ", Rand 2: " + string(_rand_2))

		
			//if (_rand_1 > item_mistake_rate) {
				while _rand_1 > item_pools[_numb_1, 0] { //Decides Which Pool
					_rand_1 -= item_pools[_numb_1, 0];
					_numb_1 += 1;
				}
				while _rand_2 > item_pools[_numb_1, 1][_numb_2, 0] { //Decides Which Pool
					_rand_2 -= item_pools[_numb_1, 1][_numb_2, 0];
					_numb_2 += 1;
				}
				has_item = item_pools[_numb_1, 1][_numb_2, 1];
				print(item_pools[_numb_1, 1][_numb_2, 2])
				item_mistake_rate = clamp(item_mistake_rate + 5, 0, 100);
			//} else { //Mistake
			//	print("Mistake!")
			//	has_item = 9
			//	item_mistake_rate = 0
			//}
			if !(item_force == -4 || item_force == 0) { //Debug tool
				has_item = item_force;
				/*Debug test
				item_force = ((item_force + 1) % items_max);
				if item_force == 9 {
					item_force += 1;
				}
				*/
			}
			//has_item = random_func(1, items_max, true) + 1;

		}
	break;
	case AT_FTHROW:
		if (window == 1 && window_timer == get_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH)) {
			var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x + 44 * spr_dir, y - 20);
			item_thrown.image_index = has_item - 1;
			item_thrown.hsp = spr_dir * 8;
			item_thrown.vsp = -3;
			//
			has_item = false;
		}
	break;
	case AT_UTHROW:
		if (window == 1 && window_timer == get_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH)) {
			var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x - 4 * spr_dir, y - 44);
			item_thrown.image_index = has_item - 1;
			item_thrown.vsp = -10;
			//
			has_item = false;
		}
	break;
	case AT_DTHROW:
		if (window == 1 && window_timer == get_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH)) {
			var item_thrown = create_hitbox(AT_DSPECIAL, has_item, x + 22 * spr_dir, y - 14);
			item_thrown.image_index = has_item - 1;
			item_thrown.vsp = 10;
			//
			has_item = false;
		}
	break;
	case AT_UTILT:
		with pHitBox {
			if (hbox_num == 2 && hitbox_timer % 2 == 0) {
				for (i = 0; i < array_length(can_hit); i++) {
					can_hit[i] = 1;
				}
			}
		}
	break;
	case AT_TAUNT:
		if (window == 2 && taunt_down) {
			window_timer = 0;
		}
	break;
}

#define fly_sfx() {
	if (allow_sounds) {
		if random_func(1, 2, true) {
			sound_play(sound_get("BeeFly"));
		} else {
			sound_play(sound_get("BeeFly2"));	
		}
	} else {
		sound_play(asset_get("sfx_clairen_tip_loop"), true, noone, .5, 2);
	}
}

//
switch(attack) {
	case AT_USPECIAL:
		can_fast_fall = false;
		if (!hitpause) {
			if (window == 1) {
				vsp = 0;
				hsp *= .9;
			}
			if (window == 2) {
				hsp = spr_dir * 2;
			}
			if (window == 3) {
				vsp *= .9;
			}
			if (uspecial_will_turn) {
				spr_dir *= -1;
				uspecial_will_turn = false;
			}
		} else {
			if (has_hit && uspecial_can_turn && ((left_down && spr_dir == 1) || (right_down && spr_dir == -1))) {
				//print("e")
				uspecial_will_turn = true;
			}
		}
	break;	
	case AT_FSPECIAL:
		if (instance_exists(miku_clone)) {
			miku_clone.spr_dir = spr_dir;
			if (place_meeting(x, y, miku_clone) && window == 2 && !fspecial_reset && rune_fspecial) {
				djumps = 0;
				vsp = -12;
				hsp = spr_dir * 16;
				fspecial_reset = 3;
				move_cooldown[AT_FSPECIAL] = 9999;
				window = 10;
				sound_play(asset_get("sfx_shop_buy"))
				spawn_hit_fx( x, y - 24, HFX_ORI_BLUE_SMALL );
			}
		}
		move_cooldown[AT_FSPECIAL] = 9999;
		if (window == 2) {
			spawn_hit_fx( x, y, dash_fx );
			if (window_timer == 1) {
				//Rune Off
				if (!free) {
					hsp = spr_dir * fspecial_speed_ground;
				} else {
					hsp = spr_dir * fspecial_speed_air;
				}
			}
		}
		if (window == 3) {
			if (attack_pressed || up_strong_pressed || right_strong_pressed || down_strong_pressed || left_strong_pressed || up_strong_pressed || right_stick_pressed || down_stick_pressed || left_stick_pressed) {
				window = 4;
				window_timer = 0;
			}
		}
		if (free && abs(hsp) >= 8) {
			hsp = (8 * spr_dir);
		}
	break;
	case AT_NSPECIAL:
		if (!custom_clone) {
			if (window == 1 && window_timer <= 6 && !b_reversed_nspecial) {
				if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed)) {
					b_reversed_nspecial = true;
					hsp *= -1;
					spr_dir *= -1;
				}
			}
			if (window == 2 && window_timer == 1) {
				if (!instance_exists(leak_proj)) {
					leak_proj = create_hitbox(AT_NSPECIAL, 2, x + (spr_dir * 24), y - 24);
					leak_proj.leak_state = 0;
					leak_proj.leak_state_timer = 0;
				}
			}
		} else {
			if (window == 2 && window_timer == 1) {
				//clone_owner.leak_proj = create_hitbox(AT_NSPECIAL, 2, x + (spr_dir * 24), y - 24);
				clone_owner.leak_proj.x = x + (spr_dir * 24);
				clone_owner.leak_proj.y = y - 24;
				clone_owner.leak_proj.leak_state = 0;
				clone_owner.leak_proj.leak_state_timer = 0;
				clone_owner.leak_proj.spr_dir = spr_dir
				clone_owner.leak_proj.hsp = spr_dir * 12
			}
		}
	break;	
	case AT_DSPECIAL:
		if (window == 1 && window_timer == 5 && !move_cooldown[AT_DSPECIAL]) {
			move_cooldown[attack] = 60;
			if (!instance_exists(miku_clone)) {
				miku_clone = instance_create( x + (spr_dir * 44), y, "obj_article1" );
				miku_clone.clone = clone_player;
			} else {
				miku_clone.state_timer = 0;
				miku_clone.state = 0;
				miku_clone.image_index = 0;
				clone_player.visible = false;
				clone_player.invincible = true;
				clone_player.clone_active = false;
				miku_clone.x = x + (spr_dir * 44);
				miku_clone.y = y;
			}
			miku_clone.spr_dir = spr_dir
		}	
		if (move_cooldown[AT_DSPECIAL]) {
			move_cooldown[attack] = 60;
		}
	break;
	case AT_DATTACK:
		if (free && !custom_clone) {
			set_attack(AT_FAIR)
			hsp *= .5
		}
	break;
	case AT_NAIR:
		if (rune_nair && attack_down && window == 3 && window_timer = get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
			window = 2;
			window_timer = 0;
			attack_end();
		}
	break;
	case AT_TAUNT:
	case AT_DTHROW:
		can_move = false;
		can_fast_fall = false;
		if ((window_timer == get_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_LENGTH)) && window == get_attack_value(attack, AG_NUM_WINDOWS)) {
			if (taunt_down || clone_owner.taunt_down) {
				window = 1;
				window_timer = 0;
			}
		}
	break;
	case AT_TAUNT_2:
		can_move = false;
		can_fast_fall = false;
		if !(is_oc) {
			if ((window_timer == get_window_value(attack, get_attack_value(attack, AG_NUM_WINDOWS), AG_WINDOW_LENGTH)) && window == get_attack_value(attack, AG_NUM_WINDOWS)) {
				if (taunt_down || clone_owner.taunt_down) {
					window = 1;
					window_timer = 0;
				}
			}
		} else {
			if (window == 2) {
				pizza_gamemode();
				if (taunt_pressed || shield_pressed) {
					window = 3;
					window_timer = 0;
				}
				if (window == 3) {
					pizza_game = false;
				}
			}
		}
	break;
	case AT_JAB:
		/*
		if (window == 3 && attack_pressed && !hitpause) {
			window = 4;
			window_timer = 0;
		}
		if (window == 3 && !hitpause && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)) {
			window = 7;
		}
		*/
	break;
	/*
	case AT_FSTRONG: //testing
		set_attack_value(attack, AG_CATEGORY, 2);
		if (!free && !freemd) {
			print("test");
			if (window == 4) {
				if (window_timer == 1) {
					test_var = true;
					vsp = -4;
				}				
			}
		}
		if (test_var) {
			hsp = 0;
			fall_through = true;
		}
	break;
	*/
	//Grabs and Throws
	case 40: //Grab
		was_parried = false;
		can_fast_fall = false;
		if (!hitstop && instance_exists(grabbed_obj) && grabbed_obj != -4) {
			attack_end();
			set_attack(AT_GRAB_HOLD);
			destroy_hitboxes();
		}
		if (grab_type == "nspecial") {
			trigger_b_reverse();
		}
		//Grab Clone
		/*
		var grabbed_clone = false;
		if (!has_hit) {
			with pHitBox {
				if (attack == other.AT_GRAB && type == 1) {
					if place_meeting(x, y, other.miku_clone) {
						other.grabbed_obj = other.miku_clone
						grabbed_clone = self;
					}
				}
			}
			if (grabbed_clone) {
				sound_play(grabbed_clone.sound_effect);
				spawn_hit_fx(grabbed_obj.x, grabbed_obj.x, grabbed_clone.hit_effect);
				set_attack(AT_GRAB_HOLD);
				destroy_hitboxes();
			}
		}
		*/
	break;
	case 41: //Hold
		can_fast_fall = false;
		grab_pos(attack, 0, 32, -16);
		if (!hitstop && instance_exists(grabbed_obj) && grabbed_obj != -4) {
			if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (left_pressed || down_pressed || right_pressed || up_pressed) || (attack_pressed && (left_down || right_down || up_down || down_down)) || (left_stick_pressed || left_strong_pressed || right_stick_pressed || right_strong_pressed || down_stick_pressed || down_strong_pressed || up_stick_pressed || up_strong_down) {
				activate_throw()
			} else if (attack_pressed && joy_pad_idle) {
				set_attack(AT_PUMMEL);
				attack_end();
			}			
		}
		if !(instance_exists(grabbed_obj)) {
			window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		}

	break;
	case 42: //Pummel:
		can_fast_fall = false;
		grab_pos(attack, 0, 32, -20);
		grab_pos(attack, 1, 24, -8);
		grab_pos(attack, 2, 24, -8);
		grab_pos(attack, 3, 24, -8);
		if (window == 3 && !hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			if pummel_count {
				pummel_count--;
				attack_end();
				window = 1;
				window_timer = 0;
			} else {
				activate_throw()
			}
		}
	break;
	case 43: //Fthrow
		can_fast_fall = false;
		grab_pos(attack, 0, -24, -16);
		grab_pos(attack, 1, -28, -16);
		grab_set_pos(attack, 2, 56, -16);
		//release_obj()
	break;
	case 44: //Dthrow
		can_fast_fall = false;
		grab_pos(attack, 0, -28, -40);
		grab_pos(attack, 1, -24, -44);
		grab_set_pos(attack, 2, -8, 0);
		//release_obj()
	break;
	case 45: //Bthrow
		can_fast_fall = false;
		grab_pos(attack, 0, 14, -16);
		grab_pos(attack, 1, -8, -8);
		grab_set_pos(attack, 2, -16, -8);
		//release_obj()
	break;
	case 46: //Uthrow
		can_fast_fall = false;
		grab_pos(attack, 0, 4, -8);
		grab_pos(attack, 1, 8, -4);
		grab_set_pos(attack, 2, 16, -40);
		//release_obj()
	break;
	default:
	break;
}


#define grab_pos(_attack, _image, _x, _y) {
	if (!hitstop && instance_exists(grabbed_obj) && grabbed_obj != -4 && attack == _attack && image_index == _image) {
		grabbed_obj.x = lerp(grabbed_obj.x , (x + _x * spr_dir), .5);
		grabbed_obj.y = lerp(grabbed_obj.y , (y + _y), .5);
		with (grabbed_obj) {
			if place_meeting(x, y, asset_get("par_block")) {
				while(place_meeting(x, y, asset_get("par_block"))) {
					x -= sign(x - other.x);
					y -= sign(y - other.y);
				}
			}
		}
	}
}

#define grab_set_pos(_attack, _window, _x, _y) {
	if (instance_exists(grabbed_obj) && grabbed_obj != -4 && attack == _attack && window == _window - 1 && window_timer == get_window_value(attack, _window - 1, AG_WINDOW_LENGTH)) {
		grabbed_obj.x = x + (_x * spr_dir)
		grabbed_obj.y = y + _y
	}
}

#define activate_throw() {
	if (down_down || down_pressed || down_stick_pressed || down_stick_down || down_strong_down || down_strong_pressed) {
	//	spr_dir = -spr_dir;
		set_attack(AT_DTHROW_2);
	} else if (up_down || up_pressed || up_stick_pressed || up_stick_down || up_strong_down || up_strong_pressed) {
		set_attack(AT_UTHROW_2);
	} else if (spr_dir == 1 && (left_down || left_pressed || left_stick_pressed || left_stick_down || left_strong_down || left_strong_pressed)) || (spr_dir == -1 && (right_down || right_pressed || right_stick_pressed || right_stick_down || right_strong_down || right_strong_pressed))  {
		set_attack(AT_BTHROW_2);
	} else {
		set_attack(AT_FTHROW_2);
	}
}

#define release_obj() {
	with pHitBox {
		if (attack == other.attack && player_id == other) {
			if instance_exists(other.grabbed_obj) {
				other.grabbed_obj.vsp = lengthdir_y(get_kb_formula(0, 1, 1, damage, kb_value, kb_scale), kb_angle);
				other.grabbed_obj.hsp = lengthdir_x(get_kb_formula(0, 1, 1, damage, kb_value, kb_scale), kb_angle) * spr_dir;
				other.grabbed_obj = -4;
			}
		}
	}
}

#define pizza_gamemode() {
	//Debug
	//print(pg_pizza);
	//print(pg_order);
	//
	pizza_game = true;
	#region Animation
	if (pg_can_make) {
		pg_make_timer--;
	}
	if (!pg_wait_timer) {
		if (pg_pizza_offset < pg_pizza_offset_middle) { //Animation
			pg_show_order = false;
			pg_pizza_offset++;
			pg_can_make = true;
		} else if (pg_pizza_offset == pg_pizza_offset_middle) { //Make Pizza
			pg_can_make = true;
			if !(pg_make_timer) {
				sound_play(sound_get("ERROR"));
				window = 3;
				window_timer = 0;
				exit;
			}
			if (pg_pizza_sent) {
				pg_pizza_offset++;
				pg_pizza_sent = false;
				pg_can_make = false;
			}
		} else if (pg_pizza_offset == pg_pizza_offset_max) { //Pizza Check
			if (array_length(pg_order) && (array_length(pg_pizza) == array_length(pg_order))) {
				for (var i = 0; i <= array_length(pg_order) - 1; i++) {
					if (pg_order[i] != pg_pizza[i]) {
						sound_play(sound_get("ERROR"));
						window = 3;
						window_timer = 0;
						exit;
					}
				}
			} else {
				if (array_length(pg_pizza)) {
					sound_play(sound_get("ERROR"));
					window = 3;
					window_timer = 0;
					exit;
				}
			}
			sound_play(asset_get("mfx_levelup"));
			pg_score++;
			pg_order = [];
			pg_pizza = [];
			pg_pizza_offset = 0;
			pg_can_make = false;
			pg_wait_timer = pg_wait_timer_curr;
			pizza_order(pg_score);
			if pg_wait_timer_curr > 30 {
				pg_wait_timer_curr--;
			}
			if pg_make_timer_curr > 30 {
				pg_make_timer_curr-=3;
			}
			pg_make_timer = pg_make_timer_curr;
			pg_show_order = true;
		} else if (pg_pizza_offset < pg_pizza_offset_max) { //Animation
			pg_pizza_offset++;
			pg_can_make = false;
		}
	}
	#endregion
	pg_pizza_offset = pg_pizza_offset % (99 + 1);
	//print(pg_pizza_offset);
	#region Cursor
	if (left_pressed) {
		pg_hori --;
		clear_button_buffer( PC_LEFT_HARD_PRESSED);
		if (pg_hori < 0) {
			pg_hori = 4;
		}		
	}
	if (right_pressed) {
		pg_hori++;
		clear_button_buffer( PC_RIGHT_HARD_PRESSED);
		if (pg_hori  > 4) {
			pg_hori = 0;
		}	
	}
	if (up_pressed) {
		pg_vert--
		clear_button_buffer( PC_UP_HARD_PRESSED);
		if (pg_vert < 0) {
			pg_vert = 1;
		}		
	}
	if (down_pressed) {
		pg_vert++
		clear_button_buffer( PC_DOWN_HARD_PRESSED);
		if (pg_vert  > 1) {
			pg_vert = 0;
		}	
	}
	pg_cursor_pos = pg_hori + pg_vert * 5;
	#endregion	
	#region Buttons
		if (attack_pressed && (pg_can_make || pg_show_order)) {
		pg_wait_timer = 0;
		pg_show_order = false;
		clear_button_buffer( PC_ATTACK_PRESSED);
		switch(pg_cursor_pos) {
			case 4: //Confirm
				sound_play(asset_get("mfx_confirm"));
				pg_pizza_sent = true;
				pg_can_make = false;
			break;
			case 9: //Trash
				sound_play(asset_get("mfx_back"));
				pg_pizza = [];
			break;
			default:
				if (array_length(pg_pizza) <= 6) {
					if (pg_cursor_pos <= 4) {
						array_insert(pg_pizza, array_length(pg_pizza), pg_cursor_pos);
					} else {
						array_insert(pg_pizza, array_length(pg_pizza), pg_cursor_pos - 1);
					}
					sound_play(asset_get("mfx_option"));
				} else {
					sound_play(sound_get("ERROR"));
				}
			break;
		}
	}
	if (special_pressed && pg_can_make) {
		clear_button_buffer( PC_SPECIAL_PRESSED);
		pg_pizza = array_delete(pg_pizza, array_length(pg_pizza) - 1);
		sound_play(asset_get("mfx_editor_erase"));
	}
	#endregion
	if (pg_pizza_offset == 0 && pg_wait_timer) {
		pg_wait_timer--;
	}
}


#define array_delete(_array, _id) {
	var old_array = _array;
	var new_array = [];
	if (array_length(_array)) {
		old_array[_id] = "deleteing from array";
		for(var i = 0; i < array_length(old_array); i++) {
			if old_array[i] != "deleteing from array" {
				array_insert(new_array, array_length(new_array), old_array[i])
			}
		}
	} else {
		print("Error: Tried to delete from an empty array.")
	}
	return new_array;	
}

#define pizza_order(_score) {
	var _num = 1;
	var _rand_ing = 	0;
	while ((_score >= sqr(_num + 1)) && _num < 6) {
		_num++;
	}
	for (var i = 0; i < _num; i++) {
			_rand_ing = random_func_2( 1 + i, 8, true );
			array_insert(pg_order, array_length(pg_order), _rand_ing );
	}
}






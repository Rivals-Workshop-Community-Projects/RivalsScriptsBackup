//
switch(attack) {
	case AT_USPECIAL:
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
				print("e")
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
					hsp = spr_dir * 12;
				} else {
					hsp = spr_dir * 8;
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
	case AT_TAUNT_2:
	case AT_DTHROW:
		can_move = false;
		can_fast_fall = false;
		if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)) {
			if (taunt_down || clone_owner.taunt_down) {
				window_timer = 0;
			}
		}
	break;
	default:
	break;
}


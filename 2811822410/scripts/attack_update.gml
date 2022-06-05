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
		}
	break;	
	case AT_FSPECIAL:
		if (instance_exists(miku_clone)) {
			miku_clone.spr_dir = spr_dir;
		}
		move_cooldown[AT_FSPECIAL] = 9999;
		if (window == 2) {
			spawn_hit_fx( x, y, dash_fx );
			if (window_timer == 1) {
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
		if (window == 1 && window_timer <= 6 && !b_reversed_nspecial) {
			if ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed)) {
				b_reversed_nspecial = true;
				hsp *= -1;
				spr_dir *= -1;
			}
		}
		if (window == 2) {
			if (!instance_exists(leak_proj)) {
				leak_proj = create_hitbox(AT_NSPECIAL, 2, x + (spr_dir * 24), y - 24);
				leak_proj.leak_state = 0;
				leak_proj.leak_state_timer = 0;
			}
		}
	break;	
	case AT_DSPECIAL:
		move_cooldown[attack] = 60;
		if (window == 1 && window_timer == 5) {
			if (!instance_exists(miku_clone)) {
				miku_clone = instance_create( x + (spr_dir * 44), y, "obj_article1" );
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
	break;
	case AT_DATTACK:
		if (free && !custom_clone) {
			set_attack(AT_FAIR)
			hsp *= .5
		}
	break;
	case AT_TAUNT:
	case AT_TAUNT_2:
	case AT_DTHROW:
		if (window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)) {
			if (taunt_down || clone_owner.taunt_down) {
				window_timer = 0;
			}
		}
	break;
	default:
	break;
}

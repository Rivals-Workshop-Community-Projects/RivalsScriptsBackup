// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
}

if (attack == AT_DATTACK) {
	if (window == 3) {
		can_jump = true;
		can_shield = true;
		can_strong = true;
		can_ustrong = true;
		can_special = true;
		if (left_down || right_down || up_down || down_down) {
			can_attack = true;
		} else if (window_timer > 7 && attack_pressed) {
			window = 5;
			window_timer = 0;
		}
	}
	if (window == 4 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		attack_end();
		attack = 0;
	}
}

if (attack == AT_UAIR) {
	hud_offset = 32;
}

if (attack == AT_DAIR) {
	if (window == 3) {
		if (!down_down) {
			can_attack = true;
		}
		can_shield = true;
	}
	if (window >= 4 && !hitpause) {
		if (has_hit) {
			can_shield = true;
			can_jump = true;
		}
		can_wall_jump = true;
	}
}

if (attack == AT_NSPECIAL) {
	if (window == 1) {
		if (left_down && spr_dir == -1) || (right_down && spr_dir == 1) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -9);
		} else if (left_down && spr_dir == 1) || (right_down && spr_dir == -1) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -9);
		} else if (up_down) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
		} else if (down_down) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
		} else {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -11);
		}
		if (window_timer == 10 || window_timer == 11) && (special_down) {
			window_timer = 10;
		}
	}
	move_cooldown[AT_NSPECIAL] = 35;
}

if (attack == AT_FSPECIAL) {
	if (window == 1) {
		if (window_timer >= 13 && shield_pressed) {
			window = 2;
			window_timer = 10;
			my_barrel.moving = false;
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if (window_timer >= 15 && special_down) {
			window_timer = 13;
		}
		// Spawn Barrel
		if (window_timer == 12) {
			var screen_y = view_get_yview();
			if (instance_exists(my_barrel)) {
				if (my_barrel.state == 0) {
					my_barrel.moving = true;
				} else { // Replace barrel if it was already dropped
					my_barrel.hp = 0;
					my_barrel = instance_create(round(x), screen_y - 90, "obj_article_platform");
				}
			} else {
				my_barrel = instance_create(round(x), screen_y - 90, "obj_article_platform");
			}
		}
	}
	if (window == 2) {
		if (instance_exists(my_barrel) && window_timer == 1) {
			my_barrel.dropped = true;
			move_cooldown[AT_FSPECIAL] = 230;
		}
	}
}

if (attack == AT_DSPECIAL) {
	if (window == 2 && window_timer == 1) {
		instance_create(round(x), round(y), "obj_article1");
	}
}

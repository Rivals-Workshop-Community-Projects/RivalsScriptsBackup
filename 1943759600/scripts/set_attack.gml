///#args attack
if attack == AT_NSPECIAL && instance_exists(gem_ins) && !gem_dying && gem_ins.cooldown == -1 {
	if !in_field {
		attack = AT_NSPECIAL_2; //The outside field attack
	} else {
		attack = AT_NSPECIAL_AIR; //The inside field attack
	}
}


if move_cooldown[attack] <= 0 && gem_cancel == 2 {
		destroy_hitboxes();
		gem_cancel = 0;
		sound_play(asset_get("sfx_birdflap"));
		//outline_color = [255, 255, 255]
		
		var ins = instance_create(x,y,"obj_article2");
}

//G7 Taunt
if (attack == AT_TAUNT && get_player_color(player) == 15){
	attack = AT_TAUNT_2;
}
if (attack == AT_TAUNT && down_down) {
	window = 4;
}


gem_cancel = 0;

//==============================================================================
//                          Abyss Rune Code
//==============================================================================
if runesEnabled {
	if (attack == AT_TAUNT || AT_TAUNT_2) && runeK hit_em = false;
	
	if runeO {
		if can_command_input && !was_command_input {
			can_command_input = false;
			move_variation = 0;
			if ((latest_pattern == 2 && spr_dir == 1) || (latest_pattern == 3 && spr_dir == -1)) && current_success > 0 && attack_pressed {
				if move_cooldown[AT_FSPECIAL] <= 0 {
					clear_button_buffer(PC_ATTACK_PRESSED);
					clear_button_buffer(PC_SPECIAL_PRESSED);
					current_success = 0;
					//sound_play(asset_get("mfx_player_ready"));
					move_variation = 1;
					attack = AT_FSPECIAL;
					was_command_input = true;
					can_command_input = false;
				}
			}
			
			if (((latest_pattern == 0) && spr_dir == 1) || ((latest_pattern == 1) && spr_dir == -1)) && current_success > 0 && attack_pressed {
				if move_cooldown[AT_USPECIAL] <= 0 {
					clear_button_buffer(PC_ATTACK_PRESSED);
					clear_button_buffer(PC_SPECIAL_PRESSED);
					current_success = 0;
					//sound_play(asset_get("mfx_player_ready"));
					move_variation = 1;
					attack = AT_USPECIAL;
					was_command_input = true;
					can_command_input = false;
				}
			}
	
			if ((latest_pattern == 2 && spr_dir == -1) || (latest_pattern == 3 && spr_dir == 1)) && current_success > 0 && attack_pressed {
				attack_end();
				destroy_hitboxes();
				//sound_play(asset_get("mfx_player_ready"));
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
				can_command_input = false;
				was_command_input = true;
				move_variation = 1;
				attack = AT_DSPECIAL;
				window = 6;
				window_timer = 0;
				current_success = 0;
			}
		} else if was_command_input {
			can_command_input = false;
			was_command_input = false;
		}
	
	
		if attack == AT_FSPECIAL
		if move_variation == 1 {
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 54);
			set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
			window = 4;
			hsp = 2*spr_dir;
			old_hsp = hsp;
		} else {
			reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
		}
		if attack == AT_DSPECIAL if move_variation == 1 {
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
			set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, -8);
			set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
			set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED, 15);
			set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 0);
			set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 80);
			set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 70);
			set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 8);
		} else {
			reset_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED);
			reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH);
			reset_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED);
			reset_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER);
			reset_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH);
			reset_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT);
			reset_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE);
		}
		if attack == AT_USPECIAL if move_variation == 1 {
			set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 1);
			set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 10);
		} else {
			reset_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE);
		}
	}
}
//==============================================================================
if(attack <= 9 && get_num_hitboxes(attack) > 0){
	for(var k = 0; k < get_num_hitboxes(attack); k++){
		set_hitbox_value(attack, k + 1, HG_ANGLE, og_angle[attack][k] + wall * og_dir);
		if (wall / 90) % 2{
			set_hitbox_value(attack, k + 1, HG_WIDTH, og_size[attack][2*k + 1]);
			set_hitbox_value(attack, k + 1, HG_HEIGHT, og_size[attack][2*k]);
		}else{
			set_hitbox_value(attack, k + 1, HG_WIDTH, og_size[attack][2*k]);
			set_hitbox_value(attack, k + 1, HG_HEIGHT, og_size[attack][2*k + 1]);
		}
		switch(wall % 360){
			case 0:
			set_hitbox_value(attack, k + 1, HG_HITBOX_X, og_pos[attack][2*k]);
			set_hitbox_value(attack, k + 1, HG_HITBOX_Y, og_pos[attack][2*k + 1]);
			break;
			case 90:
			set_hitbox_value(attack, k + 1, HG_HITBOX_X, og_pos[attack][2*k + 1] * og_dir);
			set_hitbox_value(attack, k + 1, HG_HITBOX_Y, og_pos[attack][2*k] * -og_dir);
			break;
			case 180:
			set_hitbox_value(attack, k + 1, HG_HITBOX_X, og_pos[attack][2*k] * -1);
			set_hitbox_value(attack, k + 1, HG_HITBOX_Y, og_pos[attack][2*k + 1] * -1);
			break;
			case 270:
			set_hitbox_value(attack, k + 1, HG_HITBOX_X, og_pos[attack][2*k + 1] * -og_dir);
			set_hitbox_value(attack, k + 1, HG_HITBOX_Y, og_pos[attack][2*k] * og_dir);
			break;
		}
	}
}

switch(attack){
    case AT_NSPECIAL:
    if has_rune("E"){
    	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 200);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 120);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 80);
		set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 130);
		set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 110);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 120);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 80);
    }
    hold = 0;
    grabp = noone;
    timingp = 0;
    timingo = 0;
    timingt = 0;
    grab_angle = 0;
    flash = noone;
    if(free && !move_cooldown[AT_NSPECIAL]){
        attack = AT_NSPECIAL_AIR;
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, random_func_2(floor(abs(x % 200)), 60, 1) + 1);
        set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -7);
        set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 7);
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 7);
    }else{
        set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("stab2"));
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, random_func_2(floor(abs(x % 200)), 60, 1) + 1);
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
    }
    break;
    case AT_DSPECIAL:
    if has_rune("K") orb_lv = 3;
    if orb_lv{
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb" + string(orb_lv)));
        set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, variable_instance_get(self, "orb" + string(orb_lv)));
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, variable_instance_get(self, "orb" + string(orb_lv)));
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, (6 - orb_lv)/10);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, (orb_lv > 1? -42: -38));
        set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, (3 + orb_lv) * 10);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, (3 + orb_lv) * 10);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2 + orb_lv);
    }
    if(free && !move_cooldown[AT_DSPECIAL]){
        attack = AT_DSPECIAL_AIR;
    }
    break;
    case AT_FSPECIAL:
    if(free && !move_cooldown[AT_FSPECIAL]){
        attack = AT_FSPECIAL_AIR;
    }
    break;
    case AT_TAUNT:
    radar_x = radar_pos[13][0][0];
	radar_y = radar_pos[13][0][1];
	radar_angle = radar_pos[13][0][2];
	break;
	case AT_JAB:
	set_window_value(AT_JAB, 4, AG_WINDOW_GOTO, 5 + plate);
	break;
	case AT_USPECIAL:
	if has_rune("F") set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
	set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get(string(plate) + "18a"));
	usp_dir = 0;
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
	sprite_change_offset("usp_box", 1, 2);
	if usp_ch{
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 8);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
	}else{
		set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
	}
	break;
	case AT_TAUNT:
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get(string(plate) + "PS_CROUCH"));
	if(up_down && get_match_setting(SET_PRACTICE) && get_player_hud_color(player) != c_gray && !menu_open && !move_cooldown[AT_TAUNT_2] && !menu_timer){
		guide_open = 1;
		guide_alpha = 0;
		intro_played = 0;
		attack = AT_TAUNT_2;
		window = 1;
		window_timer = 0;
		menu_open = 1;
		shut_light = 1;
		soft_armor = 99999999999;
		intro_timer = 0;
		page_alpha = 0;
		page_lockout = 0;
		sound_play(sound_get("page_open"))
	}
	break;
}

set_attack_value(attack, AG_SPRITE, sprite_get(string(plate) + string(attack)));
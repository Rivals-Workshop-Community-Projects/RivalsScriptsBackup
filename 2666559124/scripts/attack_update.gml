// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
}

if (attack == AT_DATTACK) {
	if (window == 2) {
		can_jump = true;
	}
}

if (attack == AT_DAIR) {
	if (window == 2){
		move_cooldown[AT_DAIR] = 9999;
        	can_shield = true;
        	can_jump = true;
		can_wall_jump = true;
		can_fast_fall = false;
		if (has_hit){
			window = 3;
			window_timer = 0;
		}
	        if(window_timer == 8 && free){
        		window = 2;
        		window_timer = 0;
        	}
	}
}

if (attack == AT_NSPECIAL) {
	if (window == 1) {
		if (up_down) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
		} else if (left_down && spr_dir == -1) || (right_down && spr_dir == 1) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -9);
		} else if (left_down && spr_dir == 1) || (right_down && spr_dir == -1) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 3);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -9);
		} else if (down_down) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -7);
		} else {
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -11);
		}
	}
	move_cooldown[AT_NSPECIAL] = 35;
}

if (attack == AT_FSPECIAL) {
	super_armor = true;
	if (window == 1) {
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 13);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
		set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 253);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("mafia_punch_strong"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
	}
	if (window <= 2 && window_timer < 42) {
		can_jump = true;
		can_shield = true;
	}
	if (window == 2 && window_timer < 42) {
		if (attack_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed || special_pressed) {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 305);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("mafia_punch_weak"));
			set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 0);
			window_timer = 42;
		}
	}
	//Fun Voices :)
	if(get_player_color(player) == 4) {
		if (window == 2 && window_timer == 42) {
			sound_play(sound_get("wario_vc"));
		}
	}
	/*if(get_player_color(player) == 10) {
		if (window == 1 && window_timer == 4) {
			var charge_vc = random_func(0, 6, true);
			if(charge_vc == 0){
				sound_play(sound_get("mafia_charge_vc1"));
			}else if(charge_vc == 1){
				sound_play(sound_get("mafia_charge_vc2"));
			}else if(charge_vc == 2){
				sound_play(sound_get("mafia_charge_vc3"));
			}else if(charge_vc == 3){
				sound_play(sound_get("mafia_charge_vc4"));
			}else if(charge_vc == 4){
				sound_play(sound_get("mafia_charge_vc5"));
			}else if(charge_vc == 5){
				sound_play(sound_get("mafia_charge_vc6"));
			}
		}
		if (window == 2 && window_timer == 42) {
			var impact_vc = random_func(0, 8, true);
			if(impact_vc == 0){
				sound_play(sound_get("mafia_impact_vc1"));
			}else if(impact_vc == 1){
				sound_play(sound_get("mafia_impact_vc2"));
			}else if(impact_vc == 2){
				sound_play(sound_get("mafia_impact_vc3"));
			}else if(impact_vc == 3){
				sound_play(sound_get("mafia_impact_vc4"));
			}else if(impact_vc == 4){
				sound_play(sound_get("mafia_impact_vc5"));
			}else if(impact_vc == 5){
				sound_play(sound_get("mafia_impact_vc6"));
			}else if(impact_vc == 6){
				sound_play(sound_get("mafia_impact_vc7"));
			}else if(impact_vc == 7){
				sound_play(sound_get("mafia_impact_vc8"));
			}
		}
	}*/
}

if (attack == AT_DSPECIAL) {
	if (window == 2 && window_timer == 1) {
		instance_create( round(x), round(y) - 50, "obj_article1" );
	}
}

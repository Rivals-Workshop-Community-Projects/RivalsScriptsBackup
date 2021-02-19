///#args attack

if (attack == AT_JAB) {
	jab_finishable = false;
}

if (!balanced_fox) {
    if (attack == AT_NAIR) {
    	set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
    }

    if (attack == AT_BAIR) {
    	set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
    }

    if (attack == AT_UAIR) {
    	set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
    }

    if (attack == AT_DAIR) {
    	set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
    }

    if (attack == AT_FAIR) {
    	set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
    }
}

if (attack == AT_USPECIAL) {
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
}

if (attack == AT_FTILT && (!joy_pad_idle || up_stick_pressed || down_stick_pressed)) {
        // left
        if ((joy_dir < 170 && joy_dir > 10) || up_stick_pressed) {
            attack = AT_EXTRA_2;
        } else if ((joy_dir > 190 && joy_dir < 350)|| down_stick_pressed) {
            attack = AT_EXTRA_3;
        }
}

if (balanced_fox) {
    if (attack == AT_FAIR) {
        new_scaling = 0.3;
        fair_speed = 0;
    }
}

if (runeB && !runeC && attack == AT_NSPECIAL) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1); 
	set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1); 
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1); 
	set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1); 
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99);
}
if (runeC && !runeB && attack == AT_NSPECIAL) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5); 
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 188);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
}

if (attack == AT_JAB) {
    second_punch = false;
    multihit_time = false;
}

if (attack == AT_NSPECIAL) {
    hit_laser_air = false;
}

if (attack == AT_DSPECIAL) {
	if (runeG) {
		shine_hold_timer = 0;
	}
    shine_broke = false;
}

if (attack == AT_USPECIAL) {
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
    no_more_aiming = false;
    moved_up = false;
}

if (attack == AT_FSPECIAL) {
	already_landed = false;
	hit_fspecial = false;
	if (balanced_fox) {
		if ((((get_stage_data(SD_X_POS) - x) > 0) || (room_width - get_stage_data(SD_X_POS) - x) < 0) && (free)) {
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
		} else {
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0);
		}
	}
    set_num_hitboxes(AT_FSPECIAL, 4);
	set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 29);
    lag_repeats = 0;
    moved_up = false;
    illusion_autocancel = false;
    illusion_air = false;
    illusion_grounded = false;
    set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
    shortened = false;
}
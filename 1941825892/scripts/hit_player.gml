//hit_player - called when one of your hitboxes hits a player

// Fair connecting
if (balanced_fox) {
	if (my_hitboxID.attack == AT_FAIR) {
		faired = my_hitboxID.hbox_num;
		enemy_damage = hit_player_obj.player;
	}
	if (my_hitboxID.attack == AT_FSPECIAL) {
		hit_fspecial = true;
		reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH);
	}
	if (my_hitboxID.attack == AT_DAIR) {
		if (just_daired < 20) {
			just_daired += 1;
		}
	}
	if (my_hitboxID.attack == AT_DSPECIAL) {
		if (just_shined < 20) {
			just_shined += 1;
		}
	}
} else {
	if (my_hitboxID.attack == AT_FSPECIAL) {
		set_num_hitboxes(AT_FSPECIAL, 0);
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
	hit_laser_air = true;
	set_num_hitboxes(AT_NSPECIAL, 1);
}

if (my_hitboxID.attack == AT_USTRONG) {
	hit_ustrong = true;
}

// Stale move calculation
if (!balanced_fox) {
	if (falco) {
		if previous_move == AT_DAIR && my_hitboxID.hbox_num <= 4 {
			set_hitbox_value(AT_DAIR, my_hitboxID.hbox_num, HG_DAMAGE, 12);
		} else if previous_move == AT_DAIR && my_hitboxID.hbox_num >= 5 {
			set_hitbox_value(AT_DAIR, my_hitboxID.hbox_num, HG_DAMAGE, 9);
		} else if previous_move == AT_DATTACK && my_hitboxID.hbox_num == 1 {
			set_hitbox_value(AT_DATTACK, my_hitboxID.hbox_num, HG_DAMAGE, 9);
		} else if previous_move == AT_DATTACK && my_hitboxID.hbox_num == 2 {
			set_hitbox_value(AT_DATTACK, my_hitboxID.hbox_num, HG_DAMAGE, 6);
		} else if previous_move == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
			set_hitbox_value(AT_DATTACK, my_hitboxID.hbox_num, HG_DAMAGE, 8);
		} else if previous_move == AT_DSTRONG && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 8) {
			set_hitbox_value(AT_DATTACK, my_hitboxID.hbox_num, HG_DAMAGE, 13);
		} else if previous_move == AT_DSTRONG && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7) {
			set_hitbox_value(AT_DATTACK, my_hitboxID.hbox_num, HG_DAMAGE, 16);
		} else if previous_move == AT_DTILT {
			set_hitbox_value(AT_DTILT, my_hitboxID.hbox_num, HG_DAMAGE, 13);
		} else if previous_move == AT_FAIR && my_hitboxID.hbox_num == 1 {
			set_hitbox_value(AT_FAIR, my_hitboxID.hbox_num, HG_DAMAGE, 9);
		} else if previous_move == AT_FAIR && my_hitboxID.hbox_num == 2 {
			set_hitbox_value(AT_FAIR, my_hitboxID.hbox_num, HG_DAMAGE, 8);
		} else if previous_move == AT_FAIR && my_hitboxID.hbox_num == 3 {
			set_hitbox_value(AT_FAIR, my_hitboxID.hbox_num, HG_DAMAGE, 7);
		} else if previous_move == AT_FAIR && my_hitboxID.hbox_num == 4 {
			set_hitbox_value(AT_FAIR, my_hitboxID.hbox_num, HG_DAMAGE, 5);
		} else if previous_move == AT_FAIR && my_hitboxID.hbox_num == 5 {
			set_hitbox_value(AT_FAIR, my_hitboxID.hbox_num, HG_DAMAGE, 3);
		} else if previous_move == AT_FSTRONG && my_hitboxID.hbox_num <= 7 {
			set_hitbox_value(AT_FSTRONG, my_hitboxID.hbox_num, HG_DAMAGE, 17);
		} else if previous_move == AT_FSTRONG && my_hitboxID.hbox_num >= 8 {
			set_hitbox_value(AT_FSTRONG, my_hitboxID.hbox_num, HG_DAMAGE, 14);
		} else if previous_move == AT_USPECIAL {
			set_hitbox_value(AT_DTILT, my_hitboxID.hbox_num, HG_DAMAGE, 16);
		} else {
			reset_hitbox_value(previous_move, my_hitboxID.hbox_num, HG_DAMAGE);
		}
	} else {
	reset_hitbox_value(previous_move, my_hitboxID.hbox_num, HG_DAMAGE);
	}
	move_queue9 = move_queue8;
	move_queue8 = move_queue7;
	move_queue7 = move_queue6;
	move_queue6 = move_queue5;
	move_queue5 = move_queue4;
	move_queue4 = move_queue3;
	move_queue3 = move_queue2;
	move_queue2 = move_queue1;
	move_queue1 = my_hitboxID.attack;
	previous_move = my_hitboxID.attack;

	// Tilted Ftilt's stale regular Ftilt
	if (my_hitboxID.attack == AT_EXTRA_2 || my_hitboxID.attack == AT_EXTRA_3) {
		move_queue1 = AT_FTILT;
		previous_move = AT_FTILT;
	}

	var how_much_to_reduce = 1;
	var current_attack = my_hitboxID.attack;
	if (my_hitboxID.attack == my_hitboxID.attack == AT_EXTRA_2 || my_hitboxID.attack == AT_EXTRA_3) {
		current_attack = AT_FTILT
	}

	if (current_attack == move_queue1) {
		how_much_to_reduce -= 0.09;
	}

	if (current_attack == move_queue2) {
		how_much_to_reduce -= 0.08;
	}

	if (current_attack == move_queue3) {
		how_much_to_reduce -= 0.07;
	}

	if (current_attack == move_queue4) {
		how_much_to_reduce -= 0.06;
	}

	if (current_attack == move_queue5) {
		how_much_to_reduce -= 0.05;
	}

	if (current_attack == move_queue6) {
		how_much_to_reduce -= 0.04;
	}

	if (current_attack == move_queue7) {
		how_much_to_reduce -= 0.03;
	}

	if (current_attack == move_queue8) {
		how_much_to_reduce -= 0.02;
	}

	if (current_attack == move_queue9) {
		how_much_to_reduce -= 0.01;
	}


	// Have to manually set all of the original attack damges because they're not assigned in the actual attack files.
	// Tried to find a way around it but I can't. Oh well.
	var orig_damage = 0;
	if (falco) {
		if (my_hitboxID.attack == AT_DAIR) {
			if (my_hitboxID.hbox_num <= 4) {
				orig_damage = 12;
			} else if (my_hitboxID.hbox_num >= 5) {
				orig_damage = 9;
			}
		} else if (my_hitboxID.attack == AT_DATTACK) {
			if (my_hitboxID.hbox_num == 1) {
				orig_damage = 9;
			} else if (my_hitboxID.hbox_num == 2) {
				orig_damage = 6;
			}
		} else if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
			orig_damage = 8;
		} else if (my_hitboxID.attack == AT_DSTRONG) {
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 8) {
				orig_damage = 13;
			} else if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7) {
				orig_damage = 16;
			}
		} else if (my_hitboxID.attack == AT_DTILT) {
			orig_damage = 13;
		} else if (my_hitboxID.attack == AT_FAIR) {
			if (my_hitboxID.hbox_num == 1) {
				orig_damage = 9;
			} else if (my_hitboxID.hbox_num == 2) {
				orig_damage = 8;
			} else if (my_hitboxID.hbox_num == 3) {
				orig_damage = 7;
			} else if (my_hitboxID.hbox_num == 4) {
				orig_damage = 5;
			} else if (my_hitboxID.hbox_num == 5) {
				orig_damage = 3;
			}
		} else if (my_hitboxID.attack == AT_FSTRONG) {
			if (my_hitboxID.hbox_num >= 7) {
				orig_damage = 17;
			} else if (my_hitboxID.hbox_num <= 8) {
				orig_damage = 14;
			}
		} else if (my_hitboxID.attack == AT_UAIR) {
			if (my_hitboxID.hbox_num <= 5 || my_hitboxID.hbox_num >= 10) {
				orig_damage = 6;
			} else if (my_hitboxID.hbox_num <= 9) {
				orig_damage = 10;
			}
		} else if (my_hitboxID.attack == AT_USPECIAL) {
			orig_damage = 16;
		}
	} 
	if (!falco || (my_hitboxID.attack != AT_DAIR && my_hitboxID.attack != AT_DATTACK && my_hitboxID.attack != AT_DSPECIAL && my_hitboxID.attack != AT_DTILT && my_hitboxID.attack != AT_FAIR && my_hitboxID.attack != AT_FSTRONG && my_hitboxID.attack != AT_UAIR && my_hitboxID.attack != AT_USPECIAL)) {
		if (my_hitboxID.attack == AT_BAIR) {
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 9) {
				orig_damage = 9;
			} else {
				orig_damage = 15;
			}
		} else if (my_hitboxID.attack == AT_DAIR) {
			if (my_hitboxID.hbox_num % 2 == 1) {
				orig_damage = 3;
			} else {
				orig_damage = 2;
			}
		} else if (my_hitboxID.attack == AT_DATTACK) {
			if (my_hitboxID.hbox_num == 1) {
				orig_damage = 7;
			} else {
				orig_damage = 5;
			}
		} else if (my_hitboxID.attack == AT_DSPECIAL) {
			orig_damage = 5;
		} else if (my_hitboxID.attack == AT_DSTRONG) {
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 8) {
				orig_damage = 12;
			} else {
				orig_damage = 15;
			}
		} else if (my_hitboxID.attack == AT_DTILT) {
			orig_damage = 10;
		} else if (my_hitboxID.attack == AT_FAIR) {
			if (my_hitboxID.hbox_num == 1) {
				orig_damage = 7;
			} else if (my_hitboxID.hbox_num == 2) {
				orig_damage = 5;
			} else if (my_hitboxID.hbox_num == 3) {
				orig_damage = 6;
			} else if (my_hitboxID.hbox_num == 4) {
				orig_damage = 4;
			} else if (my_hitboxID.hbox_num == 5) {
				orig_damage = 3;
			}
		} else if (my_hitboxID.attack == AT_FSPECIAL) {
			orig_damage = 7;
		} else if (my_hitboxID.attack == AT_FSTRONG) {
			if (my_hitboxID.hbox_num < 8) {
				orig_damage = 15;
			} else {
				orig_damage = 12;
			}
		} else if (my_hitboxID.attack == AT_NAIR) {
			if (my_hitboxID.hbox_num < 6) {
				orig_damage = 12;
			} else {
				orig_damage = 9;
			}
		} else if (my_hitboxID.attack == AT_NSPECIAL) {
			orig_damage = 3;
		} else if (my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_EXTRA_2 || my_hitboxID.attack == AT_EXTRA_3) {
			orig_damage = 9;
		} else if (my_hitboxID.attack == AT_JAB) {
			if (my_hitboxID.hbox_num < 4) {
				orig_damage = 4;
			} else {
				orig_damage = 1;
			}
		} else if (my_hitboxID.attack == AT_UAIR) {
			if (my_hitboxID.hbox_num < 6) {
				orig_damage = 5;
			} else {
				orig_damage = 13;
			}
		} else if (my_hitboxID.attack == AT_USPECIAL) {
			if (my_hitboxID.hbox_num < 8) {
				orig_damage = 2;
			} else {
				orig_damage = 14;
			}
		} else if (my_hitboxID.attack == AT_USTRONG) {
			if (my_hitboxID.hbox_num < 7) {
				orig_damage = 18;
			} else {
				orig_damage = 13;
			}
		} else if (my_hitboxID.attack == AT_UTILT) {
			if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10 || my_hitboxID.hbox_num == 12 || my_hitboxID.hbox_num == 13 || my_hitboxID.hbox_num == 15 || my_hitboxID.hbox_num == 16) {
				orig_damage = 9;
			} else {
				orig_damage = 12;
			}
		}
	}
	var new_damage = orig_damage * how_much_to_reduce;
	if (new_damage <= 1) {
		new_damage = 1;
	}
	if (!my_hitboxID.orig_player_id.shovel_knight_exists && (!my_hitboxID.orig_player_id.falco && my_hitboxID.attack == AT_NSPECIAL)) {
		set_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE, new_damage);
	} else {
		if (my_hitboxID.attack != AT_NSPECIAL) {
			set_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE, new_damage);
		}
	}
}

if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_AIR) {
	sound_play(asset_get("sfx_blow_weak2"));
}

// Shine SFX
if (attack == AT_DSPECIAL) {
	sound_play(asset_get("sfx_absa_harderhit"));
}
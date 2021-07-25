//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NAIR){
	if (has_hit){
		if (window == 3 or window == 2 && window_timer > 6){
			can_attack = true;
			can_jump = true;
			move_cooldown[AT_NAIR] = 2;
		}
	}
}

if (attack == AT_NSPECIAL){
	if (window == 1){
		quicktimer = 0;
	}
	if (window == 3){
		move_cooldown[AT_NSPECIAL] = 5;
		can_shield = true;
		if free == true{
			quicktimer ++;
			if (quicktimer == 86){
				set_state(PS_PRATFALL);
			}
		}
		if (attack_pressed && last_choice != 1){
			last_choice_timer = 0;
			last_choice_timer += 300;
			last_choice = 1;
			setWindow(4);
		}
		if (special_pressed && last_choice != 2){
			last_choice_timer = 0;
			last_choice_timer += 300;
			last_choice = 2;
			setWindow(6);
		}
		if (taunt_pressed && last_choice != 3){
			last_choice_timer = 0;
			last_choice_timer += 360;
			last_choice = 3;
			setWindow(8);
		}
	}
	if (window == 5 && window_timer == 17){
		move_cooldown[AT_NSPECIAL] = 100;
		set_state(PS_IDLE);
	}
	if (window == 7 && window_timer == 5){
		move_cooldown[AT_NSPECIAL] = 100;
		set_state(PS_IDLE);
	}
	if (window == 10 && window_timer == 47){
	if (instance_exists(diamond)){
		x = diamond.x;
		y = diamond.y;
	} else{
	x = random_func( 0, room_width - 200, true);
	y = random_func( 0, room_height, true);
	}
	}
	if (window == 11){
		sound_stop(sound_get("sfx_teleporter_active"));
			move_cooldown[AT_NSPECIAL] = 100;
	}
}

if (attack == AT_TAUNT){
	suppress_stage_music( 0, 100 );
	move_cooldown[AT_TAUNT] = 2;
	can_move = true;
	can_attack = true;
	can_strong = true;
	can_ustrong = true;
	can_special = true;
	can_jump = true;
}

if (attack == AT_FSPECIAL){
	if (window > 1 && window < 9){
		soft_armor = 7;
		if (scooter_sfx_timer > 0){
			scooter_sfx_timer --;
		}
		if (scooter_sfx_timer == 0){
			sound_play(sound_get("sfx_scooter"));
			scooter_sfx_timer += 70;
		}
	} else{ sound_stop(sound_get("sfx_scooter"));
	soft_armor = false;
	}
	if (window == 1){
		scooter_sfx_timer = 0;
	}
    if (window == 2){
    	if (free == true){
    	can_jump = true;
    	can_wall_jump = true;
    	can_shield = true;
    	}
    	times_through = 0;
        if (special_pressed){
        	setWindow(3);
        }
        if (attack_pressed or spr_dir == 1 && left_pressed or spr_dir == -1 && right_pressed or hsp == 0 && free == false){
        	setWindow(8);
        }
        if (shield_pressed && free == false){
        	setWindow(10);
        }
    }
        if (window == 5){
        	if (window_timer == 5){
        		times_through += 1;
        		if (times_through >= 3){
        			sound_play(asset_get("sfx_ell_drill_stab"));
        			setWindow(6);
        			times_through = 0;
        		}
        	}
        }
        if (window == 6 && window_timer == 3){
        	setWindow(10);
        }
        if (window == 9 && window_timer > 12 or window == 10){
        	if (has_hit){
        	can_attack = true;
        	can_jump = true;
        	}
        }
}

var movement_cooldown = 0;
if (attack == AT_USPECIAL){
	if (window == 2){
		if (movement_cooldown > 0){
			movement_cooldown --;
		}
		if (left_pressed && movement_cooldown == 0){
			hsp -= 2;
			movement_cooldown += 15;
		}
		if (right_pressed && movement_cooldown == 0){
			hsp += 2;
			movement_cooldown += 15;
		}
	}
	if (window == 3){
		move_cooldown[AT_USPECIAL] = 99999;
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 17){
        if (!instance_exists(diamond)){
        	diamond = instance_create(x + 24*spr_dir, y, "obj_article1");
        }
    }
    can_fast_fall = false;
    can_move = false
}
#define setWindow(new_window)

window = new_window;
window_timer = 0;
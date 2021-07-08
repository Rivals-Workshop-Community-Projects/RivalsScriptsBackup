//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 1) {
		neutralBCharge = 0;
	}
	
    if ((window != 1 || window_timer > 7 ) && window < 6 && !special_down && ai == 0){
        if (window < 3) {
			window = 6;
			window_timer = 0;
		} else {
			window = 9;
			window_timer = 0;
		}
    }
	
    if (window == 1 && window_timer > 9 && !special_down){
		window = 6;
		window_timer = 0;
    }
	
	if (window == 1 && window_timer == 1 && neutralBStored == 1) {
		window = 9;
		window_timer = 0;
		neutralBStored = 0;
	}
    
    if (window == 5 && window_timer == 8) {
		if (shield_down) {
			neutralBStored = 1;
			clear_button_buffer(PC_SHIELD_PRESSED);
			set_state( PS_IDLE );
		} else {
			window = 9;
			window_timer = 0;
		}
    }
    
    if (window == 8 && window_timer == 8) {
		window = 11;
		window_timer = 10;
    }
    
    if (window_timer == 1 && window < 6 && window > 2) {
		neutralBCharge = neutralBCharge + 1;
    }
}

if (attack == AT_FSPECIAL){
	if (window == 1 && window_timer == 1) {
		move_cooldown[AT_FSPECIAL] = 65;
		isTethering = 0;
		sideBHold = 0;
		if (move_cooldown[AT_USPECIAL] != 0) {
			move_cooldown[AT_USPECIAL] = 99999;
		}
	}

    if (window == 1 && window_timer == 10) {
		if (up_down) {
			window = 2;
			window_timer = 0;
		} else if (down_down) {
			window = 6;
			window_timer = 0;
		} else {
			window = 4;
			window_timer = 0;
		}
	}
	
	if (window == 3 && window_timer == 15) {
		window = 8;
		window_timer = 0;
	}
	if (window == 5 && window_timer == 15) {
		window = 8;
		window_timer = 0;
	}
	
	if (window == 8) {
		//hi
	}
	
	if (window == 1 || window == 2 || window == 4 || window == 6) {
		hsp = hsp * 0.8;
		vsp = vsp * 0.7;
	} else if (window_timer > 6 && has_hit) {
		can_attack = true;
		can_jump = true;
		can_strong = true;
		can_ustrong = true;
	}
	
	can_fast_fall = false;
	
	//ledge tether stuff hell yeah
    if (window == 2 && window_timer > 8 && special_down) {
        if (x < get_stage_data( SD_X_POS ) - 50 && x > get_stage_data( SD_X_POS ) - 140 && y > get_stage_data( SD_Y_POS ) + 50 && (y < get_stage_data( SD_Y_POS ) + 240 || get_stage_data( SD_SIDE_BLASTZONE ) != 396) && spr_dir == 1 && isTethering == 0) {
            isTethering = 1;
            vsp = -2;
            hsp = 0;
            destroy_hitboxes();
            sound_play( asset_get ("sfx_blow_weak1") );
        }
        if (x > room_width - get_stage_data( SD_X_POS ) + 50 && x < room_width - get_stage_data( SD_X_POS ) + 140 && y > get_stage_data( SD_Y_POS ) + 50 && (y < get_stage_data( SD_Y_POS ) + 240 || get_stage_data( SD_SIDE_BLASTZONE ) != 386) && spr_dir == -1 && isTethering == 0) {
            isTethering = 1;
            vsp = -2;
            hsp = 0;
            destroy_hitboxes();
            sound_play( asset_get ("sfx_blow_weak1") );
        }
    }
    if (window == 2 && window_timer == 12 && isTethering) {
        window = 1;
        window_timer = 0;
        set_attack(AT_EXTRA_1);
    }
	
	if ((window == 2 || window == 4 || window == 6) && window_timer == 7 && isTethering == false && special_down && sideBHold < 0) {
		sideBHold = sideBHold + 1;
		window_timer = 5;
		attack_end();
	}
}

if (attack == AT_USPECIAL){
    if (window == 5 && window_timer == 1) {
		take_damage( player, player, 1 );
		uSpecialLag += 6;
	}
	if (window > 5) {
		can_attack = true;
		can_special = true;
		can_jump = true;
		can_shield = true;
		can_wall_jump = true;
	}
	
	if (window == 3 && window_timer == 8) {
		upBX = x;
		upBY = y;
		pratfallMode = 1;
		framesUntilPratfall = 35;
	}
	
	if (window == 1 && window_timer == 7) {
		uSpecialLag = 0;
		move_cooldown[AT_USPECIAL] = 99999;
		if (spr_dir == 1) {
			if (left_down) {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -3);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, -4);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -9);
			} else if (right_down) {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 4);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -9);
			} else {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -11);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -13);
			}
		} else {
			if (left_down) {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 4);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -9);
			} else if (right_down) {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -3);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, -4);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -9);
			} else {
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -11);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -13);
			}
		}
	}
	
	if (!free && window > 2 && (window_timer < 38 || window < 4)) {
		window = 4;
		window_timer = 38;
	}
	
	if (window == 3 && !special_down && !ai) {
		window = 7;
		window_timer = 11;
	}
}

if (attack == AT_DSPECIAL){
	if (move_cooldown[AT_USPECIAL] != 0) {
		move_cooldown[AT_USPECIAL] = 99999;
	}
	can_fast_fall = false;
    if (window == 1) {
		downBStart = get_player_damage(player);
        super_armor = false;
	}
    if (window == 2) {
        super_armor = true;
		if (hitpause) {	
		
			set_player_damage( player, downBStart )
			
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			
			if (curr_dist > 150) {
				currentCombo+= 1;
				baseCombo+= 1;
				set_state(PS_IDLE);
			}

			if (shortest_id.x < x) {
				spr_dir = -1;
			} else {
				spr_dir = 1;
			}
			
			
			
			window = 4;
			window_timer = 0;
		}
	}
    if (window == 3) {
        super_armor = false;
		if (window_timer == 20) {
			set_state( PS_IDLE );
		}
	}
	if (window == 4 && window_timer == 42) {
		x = x + (120 * spr_dir);
		set_state( PS_IDLE );
	}
}

if (attack == AT_TAUNT && get_player_color( player ) == 2){
	attack = AT_TAUNT_2;
}

if (attack == AT_TAUNT) {		
	if (get_player_color( player ) == 3) {
		if (window < 7) {
			window = 7;
		}
		if (window == 8 && window_timer == 36 && taunt_down) {
			window_timer = 18;
		}
	} else if (get_player_color( player ) != 2) {
		if (window == 3 && window_timer == 18 && taunt_down) {
			window = 1;
			window_timer = 0;
		}
	
		if (!taunt_down && window_timer == 18) {
			set_state( PS_IDLE );
		}
	}
}

if (attack == AT_JAB && ai) {
	if (window == 3 && window_timer == 5 && aiplaceholder > 0) {
		window = 4;
		window_timer = 0;
	}
	if (window == 6 && window_timer == 7 && aiplaceholder > 1) {
		window = 7;
		window_timer = 0;
	}
}

if (attack == AT_UTILT) {
	if (has_hit && !hitpause) {
		window_timer += 0.5;
	}
}

if (attack == AT_DATTACK) {
	if (window == 3) {
		if (has_hit) {
		
		} else {
			window_timer -= 0.4;
		}
	}
}

if (attack == AT_USTRONG || attack == AT_FSTRONG || attack == AT_DSTRONG) {
	if (currentCombo >= 4 && window == 2) {
		window_timer += 1;
	}
	if (window == 1 && false) {
		if (strong_charge == 0) {
			canCancel = true;
			if (shield_down) {
				canCancel = false;
			}
		} else if (shield_down && canCancel == true) {
			set_state( PS_IDLE );
			clear_button_buffer( PC_SHIELD_PRESSED );
		}
	}
}

if (currentCombo >= 4) {
	if (attack == AT_USTRONG && window == 3 && window_timer == 1) {
		spawn_hit_fx( x + (3 * spr_dir), y - 117, 256 );
	}
	if (attack == AT_FSTRONG && window == 3 && window_timer == 11) {
		spawn_hit_fx( x + (101 * spr_dir), y - 36, 256 );
	}
	if (attack == AT_DSTRONG && window == 3 && window_timer == 4) {
		spawn_hit_fx( x - (25 * spr_dir), y - 15, 256 );
	}
}

if (attack == AT_USTRONG && has_hit && !hitpause && target != noone){
    if (window < 3){
        target.x = ease_linear(target.x, x, window_timer - 7, 4);
        target.y = ease_linear(target.y, y - 70, 1, 3);
	}
}
if (attack == AT_FSTRONG && has_hit && !hitpause && target != noone){
    if (window_timer < 12){
		target.x = ease_linear(target.x, x + (90 * spr_dir), window_timer, 12);
        target.y = ease_linear(target.y, y - 30, window_timer, 12);
	}
}
if (attack == AT_DSTRONG && has_hit && !hitpause && target != noone){
    if (window_timer < 5){
		target.x = ease_linear(target.x, x - (20 * spr_dir), 1, 3);
        target.y = ease_linear(target.y, y - 25, 1, 3);
	}
}

if (attack == AT_FSPECIAL && has_hit && !hitpause && target != noone){
	if (window == 2) {
		target.x = ease_linear(target.x, x + (115 * spr_dir), window_timer, 12);
		target.y = ease_linear(target.y, y - 85, window_timer, 12);
	} else if (window == 4) {
		target.x = ease_linear(target.x, x + (115 * spr_dir), window_timer, 12);
		target.y = ease_linear(target.y, y - 45, window_timer, 12);
	} else if (window == 6) {
		target.x = ease_linear(target.x, x + (130 * spr_dir), window_timer, 12);
		target.y = ease_linear(target.y, y - 20, window_timer, 12);
	} else if (window == 8) {
		target = noone;
	} else {
		var myFrame = window_timer;
		if (myFrame > 6) {
			myFrame = 6;
		}
		with (target) {
			var intensity;
			if (left_down + right_down != 0 && up_down + down_down != 0) {
				intensity = 1;
			} else {
				intensity = 1.5;
			}
			if (left_down) {
				x -= (intensity * (6-myFrame));
			} else if (right_down) {
				x += (intensity * (6-myFrame));
			}
			if (up_down) {
				y -= (intensity * (6-myFrame));
			} else if (down_down) {
				y += (intensity * (6-myFrame));
			}
		}
	}
}

if (attack == AT_EXTRA_1) {
	can_wall_jump = true;
}

if (attack == AT_JAB) {
	move_cooldown[AT_JAB] = 15;
}

if (window == 1 && window_timer == 1 && framesUntilPratfall < 0) {
	set_state(PS_PRATFALL);
}

if (attack == AT_TAUNT_2){
	if (window == 1) {
		if (window_timer == 1) {
			sprDirStored = spr_dir;
		}
		if (window_timer == 18) {
			spr_dir = 1;
		}
	} else {
		if (window_timer == 33) {
			spr_dir = sprDirStored;
		}
	}
}
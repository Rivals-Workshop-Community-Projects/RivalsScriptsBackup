//ai_update - called every frame for this character as a CPU

h_range = abs(ai_target.x - x);
v_range = abs(y - ai_target.y);
x_dist = (ai_target.x - x);
y_dist = (y - ai_target.y);
stage_x = get_stage_data( SD_X_POS );
stage_y = get_stage_data( SD_Y_POS );
blastzone = get_stage_data(SD_SIDE_BLASTZONE);

/*
if (!practice) {
    var di = random_func(11, 5, true);
    
    if (state_cat == SC_HITSTUN) {
		if (hitpause) {
			
			if (di == 1) {
				if (x > ai_target.x) {
					left_down = false;
					right_down = true;
				} else {
					left_down = true;
					right_down = false;
				}
			}
			
			if (di == 2) {
				if (x > ai_target.x) {
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
			}
			
			if (di == 3) {
				down_down = true;
			}
			
			if (di == 4) {
				up_down = true;
			}
		}
    }
}
*/

if (ai_recovering) {
    
    if (place_meeting(x+spr_dir,y,asset_get("par_block")) && has_walljump) {
        jump_pressed = true;
    }

}

if (!ai_recovering) {
    
    //EX Shots
    
    if (current_shot == 1) { //Mega Blast
        if (card_count >= 20 && v_range <= 50) {
            if (x_dist <= 2000 && x_dist > 0) {
            	joy_pad_idle = true;
                left_down = false;
                right_hard_pressed = true;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            } else if (x_dist >= -2000 && x_dist < 0) {
            	joy_pad_idle = true;
                left_hard_pressed = true;
                right_down = false;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            }
        }
    }
    
    if (current_shot == 4) { //Kablooey
        if (card_count >= 20) {
            if (x_dist <= 150 && x_dist > 0) {
            	joy_pad_idle = true;
                left_down = false;
                right_hard_pressed = true;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            } else if (x_dist >= -150 && x_dist < 0) {
            	joy_pad_idle = true;
                left_hard_pressed = true;
                right_down = false;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            }
        }
    }
    
    if (current_shot == 2 || current_shot == 3 || current_shot == 5) { //Eight Way, Chaos Orbit, & Radical Barrage
        if (card_count >= 20) {
            if (x_dist <= 200 && x_dist > 0) {
            	joy_pad_idle = true;
                left_down = false;
                right_hard_pressed = true;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            } else if (x_dist >= -200 && x_dist < 0) {
            	joy_pad_idle = true;
                left_hard_pressed = true;
                right_down = false;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            }
        }
    }
    
    if (current_shot == 6) { //Roundabout
        if (card_count >= 20) {
            if (x_dist <= 300 && x_dist > 0) {
            	joy_pad_idle = true;
                left_down = false;
                right_hard_pressed = true;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            } else if (x_dist >= -300 && x_dist < 0) {
            	joy_pad_idle = true;
                left_hard_pressed = true;
                right_down = false;
            	down_down = false;
                special_pressed = true;
                attack_pressed = false;
            }
        }
    }
    
    //Super Art
    if (h_range <= 200 && card_count == 100) {
        if (spr_dir == -1) {
            left_hard_pressed = true;
            special_pressed = true;
        } else if (spr_dir == 1) {
            right_hard_pressed = true;
            special_pressed = true;
        }
    }
    
    //Shot Selection
    
    if (ai_selected_timer != 100) {
        ai_selected_timer++;
    }
    
    if (h_range >= 400 && ai_selected_timer == 100) {
        down_pressed = true;
        special_pressed = true;
    } 
    
    if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || attack != AT_DSPECIAL) {
        ai_shot = true;
    }
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (!ai_recovering)) {
    
    //Shooting
    if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2) {
        if (h_range >= 100) {
            special_down = true;
        }
        if (x_dist >= 300) {
            right_hard_pressed = true;
        } else if (x_dist <= -300) {
            left_hard_pressed = true;
        }
        
        if (ai_target.y < y && h_range <= 100) {
            up_hard_pressed = true;
        }
    }
    
    if (attack == AT_EXTRA_1 || attack == AT_EXTRA_2) {
        if (h_range >= 100 && chargeshot_charge < 90) {
            special_down = true;
        }
        if (x_dist >= 300) {
            right_hard_pressed = true;
        } else if (x_dist <= -300) {
            left_hard_pressed = true;
        }
        if (ai_target.y < y && h_range <= 100) {
            up_hard_pressed = true;
        }
    }
    
    //Super Art
    
    if (attack == AT_EXTRA_3) {
        if (window == 5 && window_timer == 29) {
		    invincible_super = true;
		    invincibility_timer = superart_time;
	    }
    }
    
    //Shot Selection
    if (attack == AT_DSPECIAL) {
        if (window == 2 && shot_can_cancel) {
            random_shot = random_func_2(1, 7, true);
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
            ai_selected_timer = 0;
        }
        if (window == 3) {
            if (random_shot == 1) {
                current_shot = 1;
            }
            if (random_shot == 2) {
                current_shot = 2;
            }
            if (random_shot == 3) {
                current_shot = 3;
            }
            if (random_shot == 4) {
                current_shot = 4;
            }
            if (random_shot == 5) {
                current_shot = 5;
            }
            if (random_shot == 6) {
                current_shot = 6;
            }
        }
    }
} else {
    shot_timer = 100;
}

if (state_cat == SC_HITSTUN) {
    ai_shot = true;
	uspecial_used = false;
	shot_menu = -1;
	shot_cursor = -1;
	menu_open = false;
	chargeshot_charge_reset = false;
	shot_cancel_timer = 0;
	shot_can_cancel = false;
	chargeshot_charge = 0;
}
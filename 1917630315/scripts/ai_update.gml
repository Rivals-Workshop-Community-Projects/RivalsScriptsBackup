
if (get_training_cpu_action() == CPU_FIGHT) {
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
		    //Shoot more than one missile based on CPU difficulty.
		    if (attack == AT_NSPECIAL) {
		        if (window == 2) {
		            if (window_timer >= 15) {
		                if (temp_level >= 3) {
		                    special_pressed = true;
		                }
		            }
		        }
		        
		        if (window == 4) {
		            if (window_timer >= 15) {
		                if (temp_level >= 7) {
		                    special_pressed = true;
		                }
		            }
		        }
		    }
		}
	
	range_timer --;
	ice_timer --;
	var xdist = abs(ai_target.x - x);
	var ydist = abs(ai_target.y - y);
	var target_damage = get_player_damage(ai_target.player);
	var facing = false;
	var can_ice = true;
	var difficulty_chance = (11 - temp_level)
	
	if (xdist < 90 && ydist < 90)
	    AI_wait --;
	    
	
	if ((x > ai_target.x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1)) {
	    facing = true;
	}
	
	with (asset_get("obj_article_solid")) {
	    if (player_id == other.id)
	        can_ice = false;
	}
	
	if (range_timer < 0 && (state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL) && xdist > 100) {
	    if (ai_target.x > x) {
	        right_hard_pressed = false;
	        if (state == PS_DASH) {
	            left_down = false;
	            right_down = true;
	        }
	    }
	    if (ai_target.x < x) {
	        left_hard_pressed = false;
	        if (state == PS_DASH) {
	            left_down = true;
	            right_down = false;
	        }
	    }
	}
	
	if (!ai_recovering && range_timer > 0 && ai_target.state != SC_HITSTUN) {
	    if (!free && xdist > 200 && target_damage > 90)
	        jump_pressed = true;
	        
	    if (free && target_damage > 90) {
	        if (ai_target.x < x) {
	            left_down = false;
	            right_down = true;
	        }
	        if (ai_target.x > x) {
	            left_down = true;
	            right_down = false;
	        }
	    }
	    
	    if (can_special && ice_timer < 0 && xdist > 350) {
	        ice_timer = 200;
	        joy_pad_idle = true;
	        if x > ai_target.x{
	                left_down = true;
	                right_down = false;
	        } else {
	                left_down = false;
	                right_down = true;
	            }
	    	up_down = false;
	        special_pressed = true;
	        attack_pressed = false;
	    }
	}
	
	if ((state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL) && state != PS_DOUBLE_JUMP && ydist > 70 && ai_target.y < y) {
	    if (target_damage > 85 && ydist < 100 && xdist < 50) {
	        joy_pad_idle = true;
			left_down = false;
			right_down = false;
			special_pressed = false;
			attack_pressed = false;
			up_strong_pressed = true;
	    }
	    else {
	        jump_pressed = true;
	    }
	}
	
	if (free && ai_target.y - 120 > y) {
	    if (x < room_width - get_stage_data(SD_X_POS) &&  x > get_stage_data(SD_X_POS))
	        down_hard_pressed = true;
	}
	if (!free && ai_target.y - 70 > y and !ai_target.free) {
	    if (x < room_width - get_stage_data(SD_X_POS) && x > get_stage_data(SD_X_POS))
	        down_hard_pressed = true;
	}
	    
	if (free && has_hit_player && hitpause && can_fast_fall && get_stage_data(SD_Y_POS) - y > 60 && get_stage_data(SD_Y_POS) - y < 1) {
	    if (x < room_width - get_stage_data(SD_X_POS) && x > get_stage_data(SD_X_POS))
	        down_hard_pressed = true;
	}
	if (state_cat != SC_HITSTUN) {
	    if (x > room_width - get_stage_data(SD_X_POS))
	        left_down = true;
	    else {
	        if (x < get_stage_data(SD_X_POS))
	            right_down = true;
	    }
	}
	else {
	    if (hitpause) {
	        if (hitstop > 3) {
	            AI_wait = range_timer mod 10;
	        }
	    }
	}
	
	//Strong attacks
	if ((get_gameplay_time() mod difficulty_chance == 0 || ai_target.state_cat == SC_HITSTUN) && can_strong && !free && xdist < 100 && target_damage > 90 && ydist < 60 && xdist > 40 && ai_target.y > y - 1 && facing) {
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    special_pressed = false;
	    attack_pressed = false;
	    if (x > ai_target.x) {
	        left_strong_pressed = true;
	    } else {
	        right_strong_pressed = true;
	    }
	}
	
	if ((get_gameplay_time() mod difficulty_chance == 0 || ai_target.state_cat == SC_HITSTUN) && can_strong && !free && xdist < 25 && target_damage > 90 && ydist < 100 && ai_target.y > y - 1) {
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    special_pressed = false;
	    attack_pressed = false;
	    up_strong_pressed = true;
	}
	
	if (get_gameplay_time() mod difficulty_chance == 0 && ai_target.state_cat == SC_HITSTUN && can_strong && !free && xdist < 80 && target_damage > 90 && ydist < 60 && ai_target.y > y - 1) {
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    special_pressed = false;
	    attack_pressed = false;
	    down_strong_pressed = true;
	}
	
	//Fspecial
	if (!ai_recovering && get_gameplay_time() mod difficulty_chance == 0 && get_stage_data(SD_Y_POS) > y && can_special && xdist < 450 && ydist < 240 && xdist > 32 && ydist > 32 && ice_timer < 0 && can_ice) {
	    if (x < room_width - get_stage_data(SD_X_POS) - 80 && x > get_stage_data(SD_X_POS) + 80) {
	        ice_timer = 200;
	        joy_pad_idle = true;
	        if x > ai_target.x{
	                left_down = true;
	                right_down = false;
	        } else {
	                left_down = false;
	                right_down = true;
	            }
	    	up_down = false;
	        special_pressed = true;
	        attack_pressed = false;
	    }
	}
	
	//Dspecial
	if (!ai_recovering && get_gameplay_time() mod difficulty_chance == 0 && can_special && !can_ice && ice_timer < 150 && get_stage_data(SD_Y_POS) > y && xdist < 450 && ydist < 240 && xdist > 70 && ydist > 70) {
	    ice_timer = 200;
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
		down_down = true;
	    special_pressed = true;
	    attack_pressed = false;
	}
	
	if (attack == AT_DSPECIAL && window == 2) {
	    if (ice_timer > 0 && ice_timer < 150 && !can_ice && (ydist < 240 && xdist < 450))
	        special_down = true;
	    else
	        special_down = false;
	}
	
	if (!free && can_attack and AI_wait < 0) {
	    if (xdist < 50 && ydist < 60 ) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        if x > ai_target.x{
	            left_down = true;
	            right_down = false;
	        } else {
	            left_down = false;
	            right_down = true;
	        }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    if (get_gameplay_time() mod (difficulty_chance) == 0 && xdist < 200 && xdist > 120 && ydist < 40 ) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
			if ai_target.x > x{
				right_hard_pressed = true;
			} 
			else {
				left_hard_pressed = true;
				}
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    if (ydist < 50 && xdist < 20) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = true;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
			rangedtimer = 300;
	    }
	    if (xdist < 50 && ydist < 50 && facing) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
			rangedtimer = 300;
	    }
	    if (ydist < 40 && xdist < 90 && facing) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = true;
	        special_pressed = false;
	        attack_pressed = true;
			rangedtimer = 300;
	    }
	}
	
	//Aerials
	if (free && can_attack && get_stage_data(SD_Y_POS) > y + 24 && AI_wait < 0) {
	    if (y > ai_target.y - 180 && y < ai_target.y && xdist < 40) {
	        if (x > room_width - get_stage_data(SD_X_POS) && x < get_stage_data(SD_X_POS)) {
	            clear_button_buffer( PC_ATTACK_PRESSED );
	            joy_pad_idle = true;
	            left_down = false;
	            right_down = false;
	            up_down = false;
	            down_down = true;
	            special_pressed = false;
	            attack_pressed = true;
	        }
	    }
	    
	    if (ai_target.y < y && ai_target.y > y - 70 && xdist < 60) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = true;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    
	    if (xdist < 60 && ydist < 80) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    
	    if (xdist < 60 && ydist < 60 && facing) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        if ai_target.x < x{
	            left_down = true;
	            right_down = false;
	        } else {
	            left_down = false;
	            right_down = true;
	        }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    
	    if (xdist < 60 && ydist < 70 && !facing) {
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        if ai_target.x < x{
	            left_down = true;
	            right_down = false;
	        } else {
	            left_down = false;
	            right_down = true;
	        }
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	}
}
	
//Always aim towards the ledge when recovering.
if (ai_recovering) {
    if (attack == AT_USPECIAL) {
        joy_pad_idle = false;
        if (spr_dir == -1)
            joy_dir = 180;
        if (spr_dir == 1)
            joy_dir = 0;
    }   
}
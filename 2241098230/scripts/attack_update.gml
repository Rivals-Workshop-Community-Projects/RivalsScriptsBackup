//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
//Dspecial Cancel
// Dash Cancel (callie code from fungi, make sure we ask permission for this one when we can)
// 	if (attack = AT_DSPECIAL && window == 2){// && window_timer >= 5
// 		if (shield_pressed || shield_down){
// 			if (spr_dir == 1){
// 				if (left_pressed || left_down){
// 					move_cooldown[AT_DSPECIAL] = 15
// 					window = 7;
// 					window_timer = 0;
// 					hsp = -6;
// 					vsp = 2;
// 					spr_dir = -1;
// 					//create_smoke(x, y - 32, 8, 45, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 6), 0.18);
// 				}
// 				else {
// 					move_cooldown[AT_DSPECIAL] = 15
// 					window = 7;
// 					window_timer = 0;
// 					hsp = 6;
// 					vsp = 2;
// 					spr_dir = 1;
// 					//create_smoke(x, y - 32, 8, 45, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 6), 0.18);
// 				}
// 			}
// 			else {
// 				if (right_pressed || right_down){
// 					move_cooldown[AT_DSPECIAL] = 15
// 					window = 7;
// 					window_timer = 0;
// 					hsp = 6;
// 					vsp = 2;
// 					spr_dir = 1;
// 					//create_smoke(x, y - 32, 8, 45, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 6), 0.18);
// 				}
// 				else {
// 					move_cooldown[AT_DSPECIAL] = 15
// 					window = 7;
// 					window_timer = 0;
// 					hsp = -6;
// 					vsp = 2;
// 					spr_dir = -1;
// 					//create_smoke(x, y - 32, 8, 45, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 6), 0.18);
// 				}		
// 			}
// 		}
// }

//Fspecial2
if (attack == AT_FSPECIAL && window == 1 && window_timer == 12 && special_down) {
   set_attack(AT_FSPECIAL_2);
}
//glockenburn
if (attack == AT_NSPECIAL && attack_down && (window_timer < 5 && window == 1) || ((attack_pressed || special_pressed) && rounds_left > 0 && attack == AT_NSPECIAL_2 && window == 3) && has_rune("N")) {
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
	set_attack(AT_NSPECIAL_2);
	rounds_left --;
}
//Fspecial2 qol
if (attack = AT_FSPECIAL_2 && window == 2 || window == 3 || window == 4){
	can_wall_jump = true;
	can_fast_fall = false;}
//Fspecial2 spawn smoke
//if (attack = AT_FSPECIAL_2 && window == 1 && window_timer == 3){
//	create_smoke(x + -65 * spr_dir, y - 24, 3, 15, 0, 359, 4, 8, 0.18)}
//Fspecial2 hirty
if (attack = AT_FSPECIAL_2) {
	hurtboxID.sprite_index = get_attack_value(attack,AG_HURTBOX_SPRITE);
    }


//Apply smoke consume
for (var i = 0; i < array_length(hbox_apply_smoke_consume); i++) {
    var hbox_atk = hbox_apply_smoke_consume[i]
    //Just some checks...
    if (!is_array(hbox_atk))
        continue;
    if (array_length(hbox_atk) <= 1)
        continue;
    if (attack == hbox_atk[0]) {
    	if (grabbedid != noone) {
	        if (grabbedid.smoked) {
	            smoke_consumed = grabbedid;
	        }
    	}
    }
}

//Tilts
if (attack == AT_JAB) {
    was_parried = false;
}

if (attack == AT_DATTACK) {
	if (window >= 3) {
		can_ustrong = true;
	}
}

//Strongs
if (attack = AT_FSTRONG) {
    if (window == 4 && window_timer == 1 && hitstop == 0) {
    	create_smoke(x + 48 * spr_dir, y - 24, 12, 45, 0, 60, lerp(0, 4, strong_charge/60) + (has_rune("H") * 6), lerp(8, 14, strong_charge/60) + (has_rune("H") * 6), 0.18)
    }
}

if (attack = AT_USTRONG) {
    if (window == 4 && window_timer == 1 && hitstop == 0) {
    	create_smoke(x, y - 88, 12, 45, 60, 120, lerp(0, 4, strong_charge/60) + (has_rune("H") * 6), lerp(8, 12, strong_charge/60) + (has_rune("H") * 6), 0.18)
    }
}

if (attack = AT_DSTRONG) {
    if (window == 4 && window_timer == 2 && hitstop == 0) {
       create_smoke(x, y + 24, 12, 45, 135, 180, lerp(0, 4, strong_charge/60) + (has_rune("H") * 6), lerp(8, 12, strong_charge/60) + (has_rune("H") * 6), 0.18)
       create_smoke(x, y + 24, 12, 45, 0, 45, lerp(0, 4, strong_charge/60) + (has_rune("H") * 6), lerp(8, 12, strong_charge/60) + (has_rune("H") * 6), 0.18)
	
    }
}

//Aerials
if (attack == AT_UAIR){
    if (window == 3 && grabbedid == noone) {
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (window == 4 && grabbedid != noone){
	    grabbedid.ungrab = 0;
        grabbedid.x = x + spr_dir * 4
        grabbedid.y = y - 80;
        grabbedid.spr_dir = -spr_dir;
        
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
            window = 5;
	    	grabbedid.ungrab = 0;
            window_timer = 0;
        }
            
    }
    
    if ((window == 5 || window == 7) && grabbedid != noone) {
	    grabbedid.ungrab = 0;
        if (window_timer < 1) {
	        grabbedid.ungrab = 0;
            grabbedid.x = x + spr_dir * 4
            grabbedid.y = y - 80;
        }
	        else if (window_timer >= 2 && window_timer < 4) {
	        grabbedid.ungrab = 0;
            grabbedid.x = x + spr_dir * 12
            grabbedid.y = y - 76;
        }
        else if (window_timer >= 4 && window_timer < 6) {
	        grabbedid.ungrab = 0;
            grabbedid.x = x + spr_dir * 4
            grabbedid.y = y - 32;
        }
        else {
            grabbedid.x = x - spr_dir * 12;
            grabbedid.y = y - 24;
		    grabbedid = noone;
			grab_timer = 0;
        }
    }
    
    if (window == 1 && window_timer == 1) {
    		smoke_consumed = noone;
	}
	
	if (window == 5) {
		if (smoke_consumed != noone) {
			window = 7;
			window_timer = 0;
			smoke_consumed = noone;
		}
	}
	
	if (window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
		window = 8;
    	window_timer = 0;
	}
	
	can_fast_fall = window <= 3;
}

//NSpecial
if (attack == AT_NSPECIAL) {
	if (window == 1 && window_timer == 1) {
		grab_timer = 0;
	}
    if (window == 3 && grabbedid == noone) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (window <= 4) {
    	can_fast_fall = false;
    }
    if (grabbedid != noone) {
    	djumps = max_djumps;
	    grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.depth = depth + 1;
        
        if (window > 4) {
        	
        	//Grab timer
        	grab_timer ++;
        	
        	var grab_damage = 0;
        	with (grabbedid) {
        		var mashed_this_frame = false;
        		grab_damage = get_player_damage(player);
        		
        		/*
        		if (!mashed_this_frame) {
        			if (attack_pressed || special_pressed || jump_pressed 
        			|| shield_pressed || up_pressed || down_pressed || left_pressed || right_pressed
        			|| up_strong_pressed || down_strong_pressed || left_strong_pressed || right_strong_pressed) {
        				mashed_this_frame = true;
        				other.grab_timer += 6;
        			}
        		
	        		//CPU Mashing 
	        		if (variable_instance_exists(id, "ai_target")) {
	        			if (get_training_cpu_action() == CPU_FIGHT)
	        			if (other.grab_timer % (10 - temp_level) == 0) {
	        				mashed_this_frame = true;
	        				other.grab_timer += 6;
	        			}
	        		}
        		}
        		*/
        	}
        	
        	//Throwing
        	if (special_pressed || attack_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed) {
        		if (up_down || up_strong_pressed) {
        			set_attack(AT_UTHROW);
        			hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
        			grab_timer = 0;
    				djumps = 0;
        		}
        		else {
        			set_attack(AT_FTHROW);
        			hurtboxID.sprite_index = get_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE);
        			grab_timer = 0;
    				djumps = 0;
    				
    				if (left_down || left_strong_pressed) spr_dir = -1;
    				if (right_down || right_strong_pressed) spr_dir = 1;
        		}
        	}
        	
        	if (grab_timer > (grab_time_max + ease_linear(0, 90, grab_damage, 100) + (has_rune("M") * 180)) / (1 + (0.5 * grabbedid.smoked))) {
        		window = 11;
        		window_timer = 0;
        		grab_timer = 0;
        		
		        grabbedid.x = x + spr_dir * 48
		        grabbedid.y = y + 2;
        		
		        grabbedid.hitstun = 30;
		        grabbedid.hitpause = true;
		        grabbedid.state = PS_HITSTUN;
		        grabbedid.hsp = 8 * spr_dir;
		        grabbedid.vsp = 0;
				grabbedid.ungrab = 0;
				grabbedid = noone;
        	}
        }
    	
    	if (window == 4	) {
	        var window_mult = 6 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	        if (window_frames == 0) {
		        grabbedid.x = x + spr_dir * 24
		        grabbedid.y = y;
	        }
	        if (window_frames == 1) {
		        grabbedid.x = x + spr_dir * 22
		        grabbedid.y = y - 4;
	        }
	        if (window_frames == 2) {
		        grabbedid.x = x + spr_dir * 4
		        grabbedid.y = y - 64;
	        }
	        if (window_frames == 3) {
		        grabbedid.x = x + spr_dir
		        grabbedid.y = y - 66;
	        }
	        if (window_frames == 4) {
		        grabbedid.x = x + spr_dir * 8
		        grabbedid.y = y - 54;
	        }
	        if (window_frames == 5) {
		        grabbedid.x = x + spr_dir * 10
		        grabbedid.y = y - 56;
	        }
	        
	        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
	            window = 5;
	            window_timer = 0;
	        }
    	}
    	
    	//Idling
    	if (window == 5) {
	        var window_mult = 4 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	    	if (window_frames == 0 || window_frames == 1) {
		        grabbedid.x = x + spr_dir * 10
		        grabbedid.y = y - 56;
	        }
	        
	    	if (window_frames == 2 || window_frames == 3) {
		        grabbedid.x = x + spr_dir * 10
		        grabbedid.y = y - 54;
	        }
	        
	        if (left_down || right_down) {
	        	window = 6;
	        	window_timer = 0;
	        }
	        
	        if (free) {
	        	window = 9;
	        	window_timer = 0;
	        }
	        
	        if (jump_down || (up_down && can_tap_jump())) {
	        	window = 7;
	        	window_timer = 0;
	        }
    	}
    	
    	//Walking
    	if (window == 6) {
    		var carry_spd = walk_speed + (has_rune("D") * 4)
            hsp = clamp(hsp -walk_accel*left_down + walk_accel*right_down, -carry_spd, carry_spd);
            
            if (hsp > 0)
            	spr_dir = 1;
            if (hsp < 0)
            	spr_dir = -1;
            
	        var window_mult = 8 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	    	if (window_frames == 0 || window_frames == 4) {
		        grabbedid.x = x + spr_dir * 12
		        grabbedid.y = y - 56;
	        }
	        
	    	if (window_frames == 1 || window_frames == 5) {
		        grabbedid.x = x + spr_dir * 14
		        grabbedid.y = y - 56;
	        }	
	        
	        if (window_frames == 2 || window_frames == 6) {
		        grabbedid.x = x + spr_dir * 14
		        grabbedid.y = y - 54;
	        }
	        
	    	if (window_frames == 3 || window_frames == 7) {
		        grabbedid.x = x + spr_dir * 12
		        grabbedid.y = y - 54;
	        }
	        
	        if !(left_down || right_down) {
	        	window = 5;
	        	window_timer = 0;
	        }
	        
	        if (free) {
	        	window = 9;
	        	window_timer = 0;
	        }
	        
	        if (jump_down || (up_down && can_tap_jump())) {
	        	window = 7;
	        	window_timer = 0;
	        }
    	}
    	
    	//Jumpsquat 
    	if (window == 7) {
	        grabbedid.x = x + spr_dir * 14
	        grabbedid.y = y - 52;
	        
	        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
	            window = 8;
	            window_timer = 0;
	            if (jump_down || (up_down && can_tap_jump())) vsp = -jump_speed;
                else vsp = -short_hop_speed;
	        }
	        
	        if (free) {
	        	window = 9;
	        	window_timer = 0;
	        }
    	}
    	
    	//Jumping
    	if (window == 8) {
	        var window_mult = 4 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	    	if (window_frames == 0) {
		        grabbedid.x = x + spr_dir * 14
		        grabbedid.y = y - 58;
	        }
	        
	    	if (window_frames == 1) {
		        grabbedid.x = x + spr_dir * 14
		        grabbedid.y = y - 56;
	        }	
	        
	        if (window_frames == 2) {
		        grabbedid.x = x + spr_dir * 14
		        grabbedid.y = y - 54;
	        }
	        
	    	if (window_frames == 3) {
		        grabbedid.x = x + spr_dir * 12
		        grabbedid.y = y - 54;
	        }
	        
	        if (vsp > 0) {
	        	window = 9;
	        	window_timer = 0;
	        }
	        
	        if (!free) {
	        	window = 10;
	        	window_timer = 0;
	        }
    	}
    	//Falling
    	if (window == 9) {
	        grabbedid.x = x + spr_dir * 12
	        grabbedid.y = y - 54;
	        
	        if (!free) {
	        	window = 10;
	        	window_timer = 0;
	        }
    	}
    	//Landing 
    	if (window == 10) {
	        grabbedid.x = x + spr_dir * 14
	        grabbedid.y = y - 52;
	        
	        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
	            window = 5;
	            window_timer = 0;
	        }
	        
	        if (free) {
	        	window = 9;
	        	window_timer = 0;
	        }
    	}
    }
	//Landing 
	if (window == 11) {
		if (window_timer == 1) {
			hsp = -8 * spr_dir;
		}
	}
}

//Nspecial Throws
if (attack == AT_FTHROW) {
	move_cooldown[AT_NSPECIAL] = 30
	can_fast_fall = false;
    if (window == 3 || window == 5) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (grabbedid != noone) {
	    grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.depth = depth + 1;
        
		if (window == 1) {
	        var window_mult = 4 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	    	if (window_frames == 0) {
		        grabbedid.x = x + spr_dir * 8
		        grabbedid.y = y - 58;
	        }
	        
	    	if (window_frames == 1) {
		        grabbedid.x = x + spr_dir * 4
		        grabbedid.y = y - 56;
	        }	
	        
	        if (window_frames == 2) {
		        grabbedid.x = x + spr_dir * -12
		        grabbedid.y = y - 50;
	        }
	        
	    	if (window_frames == 3) {
		        grabbedid.x = x + spr_dir * -8
		        grabbedid.y = y - 52;
	        }
    	}
    	
    	if (window == 1 && window_timer == 1) {
    		smoke_consumed = noone;
    	}
    	
    	if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		if (smoke_consumed != noone) {
    			window = 4;
    			window_timer = 0;
    			smoke_consumed = noone;
    		}
    	}
    	
    	if (window == 4 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		window = 5;
        	window_timer = 0;
    	}
    	
    	if (window == 2 || window == 4) {
    		if (window_timer == 1) {
		        grabbedid.x = x + spr_dir * 48
		        grabbedid.y = y - 16;
				grab_timer = 0;
				grabbedid = noone
    		}
    	}
    }
}

if (attack == AT_UTHROW) {
	move_cooldown[AT_NSPECIAL] = 30
	can_fast_fall = false;
    if (window == 3 || window == 5) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (grabbedid != noone) {
	    grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.depth = depth - 0.1;
        
		if (window == 1) {
	        var window_mult = 4 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        
	    	if (window_frames == 0) {
		        grabbedid.x = x - spr_dir * 8
		        grabbedid.y = y - 4;
	        }
	        
	    	if (window_frames == 1) {
		        grabbedid.x = x - spr_dir * 16
		        grabbedid.y = y - 8;
	        }	
	        
	        if (window_frames == 2) {
		        grabbedid.x = x - spr_dir * 18
		        grabbedid.y = y - 10;
	        }
	        
	    	if (window_frames == 3) {
		        grabbedid.x = x - spr_dir * 8
		        grabbedid.y = y - 4;
	        }
    	}
    	
    	if (window == 1 && window_timer == 1) {
    		smoke_consumed = noone;
    	}
    	
    	if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		if (smoke_consumed != noone) {
    			window = 4;
    			window_timer = 0;
    			smoke_consumed = noone;
    		}
    	}
    	
    	if (window == 4 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		window = 5;
        	window_timer = 0;
    	}
    	
    	if (window == 2 || window == 4) {
    		if (window_timer == 1) {
		        grabbedid.x = x + spr_dir * 12
		        grabbedid.y = y - 48;
				grab_timer = 0;
				grabbedid = noone;
    		}
    	}
    }
}

if (attack == AT_FSPECIAL){
	if (window == 3) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
	if (window == 7 || window == 9) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	window = 25
        	window_timer = 0;
        }
    }
        
	if (window == 4 && window_timer == 1) {
		hsp = 3 * spr_dir;
		vsp = -13;
	}
    
    if (grabbedid != noone) {
    	off_edge = false;
	    grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.depth = depth - 0.1;
    	
    	if (window == 5 && !free) {
    		max_fall = 99;
    		if (smoke_consumed != noone) {
    			window = 8;
    			window_timer = 0;
    			smoke_consumed = noone;
    			max_fall = max_fall_def;
    		}
    		else {
    			window = 6;
    			window_timer = 0;
    			smoke_consumed = noone;
    			max_fall = max_fall_def;
    		}
    	}
    	
        
		if (window == 4) {
	        var window_mult = 6 / get_window_value(attack, window, AG_WINDOW_LENGTH);
	        var window_frames = floor((window_timer - 1) * window_mult) 
	        var grabbed_center = (grabbedid.bbox_bottom - grabbedid.bbox_top)
	        
	    	if (window_frames == 0) {
		        grabbedid.x = x + spr_dir * 38
		        grabbedid.y = y - 6;
	        }
	        
	    	if (window_frames == 1) {
		        grabbedid.x = x + spr_dir * 40
		        grabbedid.y = y - 8;
	        }	
	        
	        if (window_frames == 2) {
		        grabbedid.x = x + spr_dir * 44
		        grabbedid.y = y - 6;
	        }
	        
	    	if (window_frames == 3) {
		        grabbedid.x = x + spr_dir * 44
		        grabbedid.y = y - 4;
	        }
	        
	    	if (window_frames == 4) {
		        grabbedid.x = x + spr_dir * 46
		        grabbedid.y = y;
	        }
    	}
		if (window == 5) {
	        grabbedid.x = x + spr_dir * 48
	        grabbedid.y = y + 2;
	        if (y >= room_height - abs(vsp) && (has_rune("K") || grabbedid.smoked)) {
		        grabbedid.x = x;
		        grabbedid.y = room_height + 256;
	        }
		}
    	
    	if (window == 1 && window_timer == 1) {
    		smoke_consumed = noone;
    	}
    	
    	if (window == 7 || window == 9) {
    		if (window_timer == 1) {
		        grabbedid.x = x + spr_dir * 26
		        grabbedid.y = y;
				grab_timer = 0;
				grabbedid = noone;
    		}
    	}
    	
		if (window == 6 || window == 8) {
	        grabbedid.x = x + spr_dir * 26
	        grabbedid.y = y;
    	}
    	
    	if (shield_pressed && window <= 5 && vsp > 0.5) {
			move_cooldown[AT_FSPECIAL] = 15;
            window = 25;
            window_timer = 0;
			grab_timer = 0;
            vsp -= 8;
            hsp /= 2.5;
			grabbedid.hsp = hsp;
			grabbedid.vsp = vsp * 2;
			grabbedid = noone;
            attack_end();
            djumps = 0;
            clear_button_buffer(PC_SHIELD_PRESSED);
    	}
    } 
    else {
    	can_wall_jump = true;
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
   can_fast_fall = false;
   can_move = false;
   can_wall_jump = true;
    if (window == 4) {
		grab_timer = 0;
		can_move = true;
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	set_state(PS_PRATFALL);
        }
    }
    
    if (window == 8 || window == 11) {
		can_move = true;
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (grabbedid != noone) {
	    grabbedid.ungrab = 0;
        grabbedid.spr_dir = -spr_dir;
        grabbedid.depth = depth + 1;
        
		if (window == 5 || window == 6) {
	        grabbedid.x = x + spr_dir * 44
	        grabbedid.y = y - 40;
    	}
    	
    	if (window == 6 && window_timer == 1) {
    		smoke_consumed = noone;
    	}
    	
    	if (window == 5 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {	
    			grab_timer ++;
	    		window_timer = 0;
	    		djumps = 0;
        		if (grab_timer >= 3) {
        			if (smoke_consumed != noone) {
		    			window = 9;
		    			smoke_consumed = noone;
		    		}
		    		else
	    				window = 6;
	        	}
    		
    	}
    	
    	if (window == 6 || window == 9) {
    		if (window_timer == 3) {
		        grabbedid.x = x + spr_dir * 44
		        grabbedid.y = y - 40;
				grab_timer = 0;
				grabbedid = noone
    		}
    	}
    }
}

if (attack == AT_DSPECIAL){
	if (window == 1) {
		dspecial_charge = 0;
	}
    if (window == 2){
    	dspecial_charge = ease_linear(100, 200, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH)) / 100;
    	if (!special_down) {
    		window = 3;
    		window_timer = 0
    	}
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		window = 5;
    		window_timer = 0
    	}
    }
    
	if (window == 4) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)){
        	window = 25
        	window_timer = 0;
        }
    }
    
    if (window == 3 || window == 5) {
    	vsp = 0;
    }
    
    if (window == 3 && window_timer == 2 && !hitpause) {
       create_smoke(x, y - 32, 18, 45, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 6), 0.18)
    }
    
    if (window == 5 && window_timer == 2  && !hitpause) {
       create_smoke(x, y - 32, 24, 55, 0, 359, 4, 8 * dspecial_charge + (has_rune("L") * 14), 0.18)
    }
    
    if (window == 5 && has_hit_player) {
        if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
    		window = 4;
    		window_timer = 0;
    	}
    }
    
    if (window == 4 || window == 6) && window_timer >= 5 && has_hit_player{
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

#define create_smoke(_x, _y, _amount, _length, _dir_min, _dir_max, _spd_min, _spd_max, _frict)
var smoke = instance_create(_x, _y, "obj_article1");
smoke.smoke_length = _length;
smoke.smoke_particle_amount = _amount;
smoke.spr_dir = spr_dir;
smoke.smoke_spread_dir_min = _dir_min;
smoke.smoke_spread_dir_max = _dir_max;
smoke.smoke_speed_min = _spd_min;
smoke.smoke_speed_max = _spd_max;
smoke.smoke_friction = _frict;

return smoke;


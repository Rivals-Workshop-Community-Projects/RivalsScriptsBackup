//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){ //Shots

	if (window == 1 && window_timer == 1) {
		nspecial_proj_spawned = false;
	}

	if (jump_pressed && !free) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -10;
		sound_play(asset_get("sfx_jumpground"));
	}

	if (jump_pressed && free && has_rune("G") && !n_double_jumped) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -9;
		sound_play(asset_get("sfx_jumpground"));
		n_double_jumped = true;
	}
	
	if (current_shot == 3) {
		if (hsp > 4) {
			hsp = 4;
		}
			
		if (hsp < -4) {
			hsp = -4;
		}
	} else {
	
		if (hsp > 5) {
			hsp = 5;
		}
		
		if (hsp < -5) {
			hsp = -5;
		}
	
	}
	
	fall_through = down_down;
	
	if (down_pressed && !free) {
		y += 8;
    }

	if (left_down) {
		spr_dir = -1;
	}
	
	if (left_down && !free && special_down) {
		if (current_shot == 3 && !has_rune("E")) {
			if (hsp > -3.5) {
				hsp += -0.9;
			}
		} else { 
			if (hsp > -4.5) {
				hsp += -0.8;
			}
		}
	}
	
	if (right_down && !free && special_down) {
		if (current_shot == 3 && !has_rune("E")) {
			if (hsp < 3.5) {
				hsp += 0.9;
			}
		} else { 
			if (hsp < 4.5) {
				hsp += 0.8;
			}
		}
	}
	
	if (right_down) {
		spr_dir = 1;
	}
	if (up_down) {
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		attack = AT_NSPECIAL_2;
	}
	
	if (window == 3 && window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) && special_down) {
		window = 1;
		window_timer = 0;
	}
	
	if (window == 2 && window_timer == 1 && !nspecial_proj_spawned) {
		switch(current_shot) {
			case 1: // Peashooter (Default)
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
				create_hitbox(AT_NSPECIAL, 1, x+ 28*spr_dir, y- 32);
				nspecial_proj_spawned = true;
			break;
			
			case 2: // Spread
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 5);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
				create_hitbox(AT_NSPECIAL, 2, x+ 28*spr_dir, y- 32);
				create_hitbox(AT_NSPECIAL, 3, x+ 28*spr_dir, y- 32);
				create_hitbox(AT_NSPECIAL, 4, x+ 28*spr_dir, y- 32);
				nspecial_spread = false;
				nspecial_proj_spawned = true;
			break;
			
			case 3: // Chaser
				chase_id = noone;
				range = 10000;
				with (asset_get("oPlayer")) {
					if (player != other.player) && (state != PS_DEAD) && (get_player_team(player) != get_player_team(other.player)) {
						var distance = point_distance(x,y,other.x, other.y);
							if (distance < other.range) {
								other.chase_id = id;
								other.range = distance;
						}
					}
				}
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
				create_hitbox(AT_NSPECIAL, 7, x+ 28*spr_dir, y- 32);
				nspecial_proj_spawned = true;				
			break;
			
			case 4: // Lobber
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 32);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 32);
				create_hitbox(AT_NSPECIAL, 6, x+ 28*spr_dir, y- 32);
				nspecial_proj_spawned = true;
			break;
				
			case 6: // Roundabout
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 30);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
				create_hitbox(AT_NSPECIAL, 5, x+ 28*spr_dir, y- 32); //Roundabout
				nspecial_proj_spawned = true;
			break;
		}
	} 

    if (window == 2 && window_timer == 2 && current_shot == 2 && !nspecial_spread) {
    	create_hitbox(AT_NSPECIAL, 8, x, y);
    	nspecial_spread = true;
    }
}

if (attack == AT_NSPECIAL_2){ //Shots (Upward)

	if (window == 1 && window_timer == 1) {
		nspecial_proj_spawned = false;
	}

	if (jump_pressed && !free) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -10;
		sound_play(asset_get("sfx_jumpground"));
	}
	
	if (jump_pressed && free && has_rune("G") && !n_double_jumped) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -9;
		sound_play(asset_get("sfx_jumpground"));
		n_double_jumped = true;
	}
	
	if (current_shot == 3) {
		if (hsp > 4) {
			hsp = 4;
		}
			
		if (hsp < -4) {
			hsp = -4;
		}
	} else {
	
		if (hsp > 6) {
			hsp = 6;
		}
		
		if (hsp < -6) {
			hsp = -6;
		}
	
	}
	
	fall_through = down_down;
	
	if (down_pressed && !free) {
		y += 8;
    }

	if (left_down) {
		spr_dir = -1;
		attack = AT_NSPECIAL;
	}
	if (right_down) {
		spr_dir = 1;
		attack = AT_NSPECIAL;
	}
	if (up_down) {
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		attack = AT_NSPECIAL_2;
	}
	if (window == 3 && window_timer == get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH) && special_down) {
		window = 1;
		window_timer = 0;
	}
	
	if (window == 2 && window_timer == 1 && !nspecial_proj_spawned) {
		switch(current_shot) {
			case 1: // Peashooter (Default)
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
				create_hitbox(AT_NSPECIAL_2, 1, x, y- 60);
				nspecial_proj_spawned = true;
			break;
			
			case 2: // Spread
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 5);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
				create_hitbox(AT_NSPECIAL_2, 2, x, y- 60);
				create_hitbox(AT_NSPECIAL_2, 3, x, y- 60);
				create_hitbox(AT_NSPECIAL_2, 4, x, y- 60);
				nspecial_spread = false;
				nspecial_proj_spawned = true;
			break;
			
			case 3: // Chaser
				chase_id = noone;
				range = 10000;
				with (asset_get("oPlayer")) {
					if (player != other.player) && (state != PS_DEAD) && (get_player_team(player) != get_player_team(other.player)) {
						var distance = point_distance(x,y,other.x, other.y);
							if (distance < other.range) {
								other.chase_id = id;
								other.range = distance;
						}
					}
				}
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 15);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
				create_hitbox(AT_NSPECIAL_2, 7, x, y- 60);
				nspecial_proj_spawned = true;				
			break;
			
			case 4: // Lobber
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 32);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 32);
				create_hitbox(AT_NSPECIAL_2, 6, x, y- 60);
				nspecial_proj_spawned = true;
			break;
				
			case 6: // Roundabout
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 30);
				set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
				create_hitbox(AT_NSPECIAL_2, 5, x, y- 60); //Roundabout
				nspecial_proj_spawned = true;
			break;
		}
	}
	
    if (window == 2 && window_timer == 2 && current_shot == 2 && !nspecial_spread) {
    	create_hitbox(AT_NSPECIAL_2, 8, x, y);
    	nspecial_spread = true;
    }
}

if (attack == AT_EXTRA_1 || attack == AT_EXTRA_2) { // Charge Shot
	
	if (window == 1 && window_timer == 1) {
		nspecial_proj_spawned = false;
	}
	
	if (attack == AT_EXTRA_1 && window == 1) {
		if (left_down && !free) {
			if (hsp > -5) {
				hsp += -0.8;
			}
		}
		
		if (right_down && !free) {
			if (hsp < 5) {
				hsp += 0.8;
			}
		}
	}

	if (jump_pressed && !free) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -10;
		sound_play(asset_get("sfx_jumpground"));
	}
	
	if (jump_pressed && free && has_rune("G") && !n_double_jumped) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -9;
		sound_play(asset_get("sfx_jumpground"));
		n_double_jumped = true;
	}
	
	if (hsp > 6) {
		hsp = 6;
	}
	
	if (hsp < -6) {
		hsp = -6;
	}
	
	fall_through = down_down;
	
	if (down_pressed && !free) {
		y += 8;
    }

	if (left_down) {
		attack = AT_EXTRA_1;
		spr_dir = -1;
	}
	if (right_down) {
		attack = AT_EXTRA_1;
		spr_dir = 1;
	}
	if (up_down) {
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		attack = AT_EXTRA_2;
	}
	if (!shot_can_cancel) {
		shot_cancel_timer++;
	}
	if (shot_cancel_timer >= 30) {
		shot_can_cancel = true;
	}
    can_fast_fall = false;
    if (window == 1) {
    	if (chargeshot_cancelled && chargeshot_charge >= chargeshot_time) {
    		window = 2;
    		window_timer = 0;
    	}
    	if (chargeshot_cancelled && chargeshot_charge < chargeshot_time) {
			chargeshot_cancelled = false;
    	}
        if (chargeshot_charge_reset == false) {
            sound_play(sound_get("charge_start"));
            chargeshot_charge_reset = true;
        }
        if (chargeshot_charge == chargeshot_time) {
            sound_play(sound_get("charge_ready"));
        }
        chargeshot_charge++;
		if (special_down) and (window_timer > 2) {
		    window = 1;
		    window_timer = 0;
		}
        if (attack_pressed && shot_can_cancel) {
            window = 3;
            window_timer = 15;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
            chargeshot_cancelled = true;
        }
        if (shield_pressed && shot_can_cancel) {
            window = 3;
            window_timer = 15;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
            chargeshot_cancelled = true;
        }
    }
    if (window == 2 && window_timer == 1 && !nspecial_proj_spawned) {
        if (chargeshot_charge >= chargeshot_time) {
            sound_play(sound_get("charge_large"));
            if (attack == AT_EXTRA_1) {
	            create_hitbox(AT_EXTRA_1, 2, x+ 28*spr_dir, y- 32);
            }
            if (attack == AT_EXTRA_2) {
	            create_hitbox(AT_EXTRA_2, 2, x, y- 60);
            }
        }
        if (chargeshot_charge < chargeshot_time) {
            sound_play(sound_get("charge_small"));
            if (attack == AT_EXTRA_1) {
            	create_hitbox(AT_EXTRA_1, 1, x+ 28*spr_dir, y- 32);
            }
            if (attack == AT_EXTRA_2) {
            	create_hitbox(AT_EXTRA_2, 1, x, y- 60);
            }
        }
        chargeshot_charge = 0;
        chargeshot_charge_reset = false;
		shot_cancel_timer = 0;
		shot_can_cancel = false;
		chargeshot_cancelled = false;
		nspecial_proj_spawned = true;
    }
}

if (attack == AT_EXTRA_3) { //Super Art
	can_move = false;
	vsp = 0;
	hsp = 0;
	if (window == 5 && window_timer == 29) {
		invincible_super = true;
		invincibility_timer = superart_time;
	}
}

if (attack == AT_FSPECIAL){ //EX Shot
	if (has_rune("N")) {
		super_armor = true;	
	}
	can_move = false;
    vsp = 0;
    if (window == 1) {
    	if (current_shot == 3) {
    		orbit_hit = 8;
    	}
    	ex_spawned = false;
        hsp = hsp*10/12;
    }
    if (window == 2 && window_timer == 4) {
    	if (current_shot == 5) {
    		spawn_hit_fx(x+ 40*spr_dir, y- 30,radical_barrage);
    	}
    	if (current_shot == 3 && !ex_spawned) {
    		
    		var orbit = instance_create(x, y, "obj_article1");
    		orbit.sprite_index = orbit_sprite;
    		orbit_hit = 0;
    		
    		ex_spawned = true;
    	}
    }
    if (window == 2 && window_timer == 5) {
    	if (current_shot == 1 && !ex_spawned) { // Mega Blast
	    	create_hitbox(AT_FSPECIAL, 1, x+34*spr_dir, y-32);
	    	ex_spawned = true;
    	}
    	if (current_shot == 2 && !ex_spawned) { // Eight Way
	    	create_hitbox(AT_FSPECIAL, 2, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 3, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 4, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 5, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 6, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 7, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 8, x, y-32);
	    	create_hitbox(AT_FSPECIAL, 9, x, y-32);
	    	ex_spawned = true;
    	}
    	if (current_shot == 3 && !ex_spawned) { // Chaos Orbit
    	/*
    		var orbit = instance_create(x, y, "obj_article1");
    		orbit.sprite_index = orbit_sprite;
    		orbit_hit = 0;
    		ex_spawned = true;
    	*/
    	}
    	if (current_shot == 4 && !ex_spawned) { // lobber whatever
	    	create_hitbox(AT_FSPECIAL, 12, x+34*spr_dir, y-32);
	    	ex_spawned = true;
    	}
    	if (current_shot == 5 && !ex_spawned) { // Radical Barrage
    		create_hitbox(AT_FSPECIAL, 10, x+ 56*spr_dir, y-34);
    		create_hitbox(AT_FSPECIAL, 15, x+ 56*spr_dir, y-34);
    		ex_spawned = true;
    	}
    	if (current_shot == 6 && !ex_spawned) { // Jumbo Rebound
	    	create_hitbox(AT_FSPECIAL, 13, x+34*spr_dir, y-32);
	    	ex_spawned = true;
    	}
    }
    if (window == 2){
        if (window_timer == 1) {
            if (card_count >= 20*ex_cost_multiplier) {
                card_count += -20*ex_cost_multiplier;
            }
        }
        if (window_timer >= 6 && current_shot == 1) {
            hsp = -2*spr_dir;
        }
    }
    if (window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) && current_shot == 4) {
    	move_cooldown[AT_FSPECIAL] = 30;
    	move_cooldown[AT_NSPECIAL] = 30;
    }
}

if (attack == AT_UAIR) {
	if (window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) && has_rune("C")) {
		vsp = -7;
	}
}

if (attack == AT_FAIR) {
	if (window != 1 && window != 5) {
		if (!has_rune("D") && !hitpause) {
			hsp /= 1.075;	
		}
		if (has_rune("D") && !hitpause) {
			hsp -= 0.4*spr_dir;	
		}
		vsp /= 1.05;
	}
}

if (attack == AT_BAIR) {
	if (window == 1) {
		hsp = hsp*11/12;
		if (window_timer < (get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) / 2)) {
			can_move = false;
		}
	}
	if (window == 2) {
		if (window_timer == 1) {
			vsp = 0;
		}
	}
}

if (attack == AT_TAUNT) {
	if (window == 4 && window_timer == get_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH) && taunt_down) {
		window = 3;
		window_timer = 0;
	}
}

if (attack == AT_DATTACK){ //Dash
    vsp = 0;
    can_fast_fall = false;
    

	if (window == 1 && window_timer < 4) { //DACUS
	    can_ustrong = true;
	}
	
    if (has_hit && has_rune("A")) {
    	can_jump = true;
    }
    
    if (window == 3) {
        hsp = hsp*7/8;
        can_move = true;
    }
}

if (attack == AT_TAUNT_2){ //Dash (Air Version)
	if (has_rune("H")) {
		invincible = true;
	}
    vsp = 0;
    can_fast_fall = false;
    
    if (window != 1) {
    	can_wall_jump = true;
    }
    
    if (window == 1 && window_timer == 1) {
    	spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
    }
    if (window == 3) {
	    if (window_timer == 10 && has_rune("H")) {
	    	spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
	    }
        hsp = hsp*8/9;
        can_move = true;
    }
    air_dashed = true;
}

if (attack == AT_DTILT) {
	clear_button_buffer(PC_ATTACK_PRESSED);
}

if (attack == AT_USPECIAL) {
	can_fast_fall = false;
	if (window == 1) {
		uspecial_left = false;
		uspecial_right = false;
	}
	if (!free) {
		vsp += -6;
	}
	if (window == 2) {
		if (window_timer == 1) {
			uspecial_used = true;
		}
		if (has_hit_player) {
			uspecial_used = false;
		}
		hsp = 0;
		if (window_timer < 6) {
			if (left_down && !right_down) {
				uspecial_left = true;
			} else if (right_down && !left_down) {
				uspecial_right = true;
			} else {
				uspecial_left = false;
				uspecial_right = false;
			}
			vsp = 0;
		}
		if (window_timer == 3) {
			spawn_hit_fx(x, y, 301);
		}
		if (window_timer >= 6) {
			if (uspecial_left && !uspecial_right) {
				hsp = -6;
				vsp = -16;
			}
			if (uspecial_right && !uspecial_left) {
				hsp = 6;
				vsp = -16;
			}
			if (!uspecial_right && !uspecial_left || uspecial_right && uspecial_left) {
				vsp = -18;
			}
		}
	}
	if (window == 3) {
		vsp += 0.5;
	}
}

/*
if (attack == AT_NAIR) {
	if (window == 1 && window_timer == 1) {
		nair_timer = 0;
	}
	if (!hitpause && has_hit) {
		nair_timer++;
		if (nair_timer <= 2) {
			vsp = -8;
		}
	}
}
*/

if (attack == AT_DAIR) {
	can_move = false;
	if (window == 1) {
		hsp = hsp*10/12;
	}
	
	fall_through = down_down;
	
}

if (attack == AT_DSTRONG) {
	if (window == 2 && window_timer == 4) {
		spawn_hit_fx(x-(50*spr_dir), y, 193);
	}
}

// dear fellow mod creators: please make your own fucking menu. do not
// blatantly copy + paste the entirety of the code here. only 2 months and 
// already two characters have outright taken it. i get that workshop is open 
// source anyway, but c'mon man.

// i spent 3-4 months on this cuphead's sprites and graphics only to have the
// menu taken from some mod that was probably made in far less and get far more
// youtube attention in the process. and not just that, that same mod got me
// accused of taking my own code.

// it's getting really annoying.

// anywho, the actual code.

if (attack == AT_DSPECIAL){ //Shot Selection
	if (window == 1) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	if (!shot_can_cancel) {
		shot_cancel_timer++;
	}
	if (shot_cancel_timer >= 30) {
		shot_can_cancel = true;
	}
    if (window == 3){
        can_jump = true;
        shot_menu = -1;
        shot_cursor = -1;
        menu_open = false;
    }
    can_fast_fall = false;
    can_move = false;
    if (window == 2) {
        if (window_timer == 1 && menu_open == false) {
            sound_play(sound_get("super_beam_full"));
            menu_open = true;
        }
        
		shot_menu = sprite_get("shot_select");
		shot_cursor = sprite_get("select_cursor");
	
        if (get_player_color(player) != 10 && get_player_color(player) != 7){
	        shot_menu = sprite_get("shot_select");
	        shot_cursor = sprite_get("select_cursor");
        }
        if (get_player_color(player) == 10){
	        shot_menu = sprite_get("shot_select_ea");
	        shot_cursor = sprite_get("select_cursor_ea");
        }
        if (get_player_color(player) == 7){
	        shot_menu = sprite_get("shot_select_bendy");
	        shot_cursor = sprite_get("select_cursor_bendy");
        }

        if (left_pressed) {
            sound_play(sound_get("cup_menu_move"));
            current_shot += -1;
            if (current_shot <= 0) {
                current_shot = 6;
            }
        }
        if (right_pressed) {
            sound_play(sound_get("cup_menu_move"));
            current_shot += 1;
            if (current_shot >= 7) {
                current_shot = 1;
            }
        }
        if (down_pressed && current_shot < 4) {
            sound_play(sound_get("cup_menu_move"));
            current_shot += 3;
        }
        if (up_pressed && current_shot >= 4) {
            sound_play(sound_get("cup_menu_move"));
            current_shot += -3;
        }
        
        //Quick Select/"Quick Buy" but for Cuphead
        
        if (taunt_pressed) {
        	current_shot = 1;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        
        if (up_stick_pressed) {
        	current_shot = 2;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (right_stick_pressed) {
        	current_shot = 3;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (left_stick_pressed) {
        	current_shot = 4;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (down_stick_pressed) {
        	current_shot = 5;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (shield_pressed) {
        	current_shot = 6;
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        
        //now onto manual selection
        
        if (special_pressed && shot_can_cancel) {
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (attack_pressed && shot_can_cancel) {
        	sound_play(sound_get("cup_menu_equip"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        /*
        if (shield_pressed && shot_can_cancel) {
        	shot_menu = -1;
	        shot_cursor = -1;
	        menu_open = false;
            window = 4;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        */
    }
}

// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
    
    case AT_JAB:
    
    switch (window) {
        case 1:
        
        SpamNeoJabSoundTimer = 0;
        
        //sound_play(sound_get("jab_start"));
        
        break;
        
        case 2:
        
        if (SpamNeoJabSoundTimer == 75) {
            sound_play(sound_get("jab_hold"), true);
        }
        SpamNeoJabSoundTimer += 1;
        
        if (attack_down == false && window_timer == 16) {
            window = 3;
            window_timer = 0;
        }
        
        break;
        
        case 3:
        
        sound_stop(sound_get("jab_start"));
        sound_stop(sound_get("jab_hold"));
        
        break;
    }
    
    was_parried = false;
    
    break;
    
	case AT_DATTACK:
	
	switch (window) {
		case 1:
		
		SpamNeoDAttackSoundPlayed = false;
		SpamNeoGrabbedId = 0;
		SpamNeoGrabStartX = 0;
		SpamNeoGrabStartY = 0;
		SpamNeoGrabEasingTimer = 0;
		
		break;
		
		case 2:
		
		if (state != SC_HITSTUN && hitpause == false) {
			if (free == false) {
				hsp = 9 * spr_dir;
			} else {
				hsp = 6 * spr_dir;
			}
		}
		
		if (SpamNeoGrabbedId != 0) {
			if (hitpause == false) {
	    		if (SpamNeoGrabEasingTimer < 15) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (110 * spr_dir)), SpamNeoGrabEasingTimer, 15 );
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 40), SpamNeoGrabEasingTimer, 15 );
	    			SpamNeoGrabEasingTimer += 1;
	    		} else {
	    			SpamNeoGrabbedId.x = x + (110 * spr_dir);
	    			SpamNeoGrabbedId.y = y - 40;
	    		}
			}
    		SpamNeoGrabbedId.hsp = 0;
    		SpamNeoGrabbedId.vsp = 0;
    	}
    	
    	if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died or teched during the attack
	    		if (SpamNeoGrabEasingTimer < 15) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (110 * spr_dir)), SpamNeoGrabEasingTimer, 15 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 40), SpamNeoGrabEasingTimer, 15 ); // Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (110 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 40; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
		
		break;
		
		case 3: 
		
		if (state != SC_HITSTUN && hitpause == false) {
			if (free == false) {
				hsp = 3.5 * spr_dir;
			} else {
				hsp = 1.75 * spr_dir;
			}
		}
		
		if (free == false && SpamNeoDAttackSoundPlayed == false) {
			sound_play(asset_get("sfx_ori_stomp_hit"));
			SpamNeoDAttackSoundPlayed = true;
		}
		
		if (window_timer == 4) {
			x += 100 * spr_dir;
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
		
		break;
		
		case 4:
		
		if (free == false && SpamNeoDAttackSoundPlayed == false) {
			sound_play(asset_get("sfx_ori_stomp_hit"));
			SpamNeoDAttackSoundPlayed = true;
		}
		
		if (window_timer > 1 && has_hit == true) {
			move_cooldown[AT_DATTACK] = 20;
			can_jump = true;
		}
		
		break;
	}
	
	can_fast_fall = false;
	grav = 0.1;
	
	break;
    
    case AT_FAIR:
    
    switch (window) {
		case 1:
		
		SpamNeoGrabbedId = 0;
		SpamNeoGrabEasingTimer = 0;
		SpamNeoGrabStartX = 0;
		SpamNeoGrabStartY = 0;
		
		break;
		
		case 2:
    	
    	if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died or teched during the attack
	    		if (SpamNeoGrabEasingTimer < 10) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (50 * spr_dir)), SpamNeoGrabEasingTimer, 10 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 35), SpamNeoGrabEasingTimer, 10 ); // Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (50 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 35; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
		
		if (free == false) {
			
			//create_hitbox(AT_FAIR, 4, x + 20 * spr_dir, y - 50);
			
			window = 3;
			window_timer = 0;
			
		}
		
		break;
		
		case 3: 
		
		if (window_timer == 2) {
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
		
		break;
		
		case 4:
		if (SpamNeoUSpcPrat == true && window_timer >= 14) {
    		set_state(PS_PRATFALL);
    		SpamNeoUSpcPrat = false;
    	}
		break;
	}
    
    break;
    
    case AT_DAIR:
    
	switch (window) {
		case 1:
		
		SpamNeoGrabbedId = 0;
		SpamNeoGrabEasingTimer = 0;
		SpamNeoGrabStartX = 0;
		SpamNeoGrabStartY = 0;
		
		break;
		
		case 2:
    	
    	if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died or teched during the attack
	    		if (SpamNeoGrabEasingTimer < 16) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (5 * spr_dir)), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 10), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (5 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 10; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
		
		break;
		
		case 3: 
		
		if (window_timer == 2) {
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
		
		break;
		
		case 4:
		if (SpamNeoUSpcPrat == true && window_timer >= 14) {
    		set_state(PS_PRATFALL);
    		SpamNeoUSpcPrat = false;
    	}
		break;
	}
    
    if ( vsp > -1) {
        grav = 0.2
    }
    break;
    
    case AT_UAIR:
    
    switch (window) {
		case 1:
		set_attack_value(AT_UAIR, AG_CATEGORY, 1);
		set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
		
		SpamNeoGrabbedId = 0;
		SpamNeoGrabEasingTimer = 0;
		SpamNeoGrabStartX = 0;
		SpamNeoGrabStartY = 0;
		
		if (SpamNeoFastVsp > max_fall * 0.6) {
			vsp = ease_cubeOut( round(SpamNeoFastVsp * 10), max_fall * 6, window_timer, 6 ) / 10;
		}
		
		break;
		
		case 2:
		
		if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD || SpamNeoGrabbedId.state != PS_RESPAWN || SpamNeoGrabbedId.state != PS_TECH_GROUND || SpamNeoGrabbedId.state != PS_TECH_FORWARD || SpamNeoGrabbedId.state != PS_TECH_BACKWARD || SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died during the attack
	    		if (SpamNeoGrabEasingTimer < 16) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (10 * spr_dir)), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 130), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (10 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 130; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
		
		break;
		
		case 3: 
		
		if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD || SpamNeoGrabbedId.state != PS_RESPAWN || SpamNeoGrabbedId.state != PS_TECH_GROUND || SpamNeoGrabbedId.state != PS_TECH_FORWARD || SpamNeoGrabbedId.state != PS_TECH_BACKWARD || SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died during the attack
	    		if (SpamNeoGrabEasingTimer < 16) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x + (10 * spr_dir)), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 130), SpamNeoGrabEasingTimer, 16 ); // Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (10 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 130; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
		
		if (window_timer == 6) {
			if (has_hit_player == false) {
				window = 5;
				window_timer = 8;
			}
		}
		break;
		
		case 4:
		
		if (window_timer == 2) {
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
		
		break;
		
		case 5:
		
		if (window_timer == 2) {
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
		
		if (SpamNeoUSpcPrat == true && window_timer >= 29) {
    		set_state(PS_PRATFALL);
    		SpamNeoUSpcPrat = false;
    	}
		
		break;
	}
	
	if (window > 1 && has_hit_player == true) {
		set_attack_value(AT_UAIR, AG_CATEGORY, 2);
		set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 0);
	}
	
	if (window > 1 && SpamNeoFastVsp > max_fall * 0.6) {
		vsp = max_fall * 0.6;
    }
	
	can_fast_fall = false;
	if ( vsp > -1) {
        grav = 0.2
    }
    
    break;
    
    case AT_NAIR:
    
    switch (window) {
        
        case 1:
        
        SpamNeoNairTimer = 0;
        
        break;
        
        case 2:
        
        soft_armor = 12;
        
        if ( vsp > -1) {
    	    grav = 0.07;
    	}
    	
    	if (hsp > 3) {
    		hsp = 3;
    	} else if (hsp < -3) {
    		hsp = -3;
    	}
        
        if (attack_down == false && SpamNeoNairTimer <= 60) {
        	window = 3;
        	window_timer = 0;
        }
        
        if (SpamNeoNairTimer > 60) {
        	
        	move_cooldown[AT_NAIR] = 30;
        	
        	if (SpamNeoUSpcPrat == true) {
		    	set_state(PS_PRATFALL);
		    	SpamNeoUSpcPrat = false;
		    } else {
		    	
		    	set_state(PS_IDLE_AIR);
		    	
		    }
        	
        }
        
        SpamNeoNairTimer += 1;
        
        break;
        
    }
    
    if (SpamNeoUSpcPrat == true && window_timer >= 8 && window == 5) {
    	set_state(PS_PRATFALL);
    	SpamNeoUSpcPrat = false;
    }
    
    break;
    
    case AT_BAIR:
    
    if (SpamNeoUSpcPrat == true && window_timer >= 14 && window == 3) {
    	set_state(PS_PRATFALL);
    	SpamNeoUSpcPrat = false;
    }
    
    break;
    
    case AT_USTRONG:
    
    switch (window) {
        
        case 1:
        
        SpamNeoGrabbedId = 0;
		SpamNeoGrabEasingTimer = 0;
		SpamNeoGrabStartX = 0;
		SpamNeoGrabStartY = 0;
        
        break;
        
        case 3:
        
        if (window == 3) {
            sound_stop(sound_get("jab_start"));
        }
        
        case 4:
        
        if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died during the attack
	    		if (SpamNeoGrabEasingTimer < 20) {
	    			SpamNeoGrabbedId.x = ease_cubeOut( round(SpamNeoGrabStartX), round(x - (10 * spr_dir)), SpamNeoGrabEasingTimer, 14 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_cubeOut( round(SpamNeoGrabStartY), round(y - 120), SpamNeoGrabEasingTimer, 14 );// Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x - (10 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y - 120; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
        
        break;
        
        case 6:
        
        if (window_timer == 2) {
			SpamNeoGrabbedId = 0;
			SpamNeoGrabEasingTimer = 0;
		}
        
        break;
    }
    
    break;
    
    case AT_FSTRONG:
    
    switch (window) {
    	case 3:
    	
    	if (SpamNeoGrabbedId != 0) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died during the attack
	    		SpamNeoGrabbedId.x = x + (60 * spr_dir); // Makes sure they stay at the desired x position
	    		SpamNeoGrabbedId.y = y - 35; // Makes sure they stay at the desired y position
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabEasingTimer = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
    	
    	break;
    	
    	case 4:
    	
    	if (has_hit_player == false) {
    		window = 6;
    		window_timer = 0;
    	}
    	
    	if (SpamNeoGrabbedId != 0 && hitpause == false) { // Checks for a hit and that the hit player isn't in hitpause
        	if (SpamNeoGrabbedId.state != PS_DEAD && SpamNeoGrabbedId.state != PS_RESPAWN && SpamNeoGrabbedId.state != PS_TECH_GROUND && SpamNeoGrabbedId.state != PS_TECH_FORWARD && SpamNeoGrabbedId.state != PS_TECH_BACKWARD && SpamNeoGrabbedId.state != PS_WALL_TECH) { // Checks to see if the player hit died during the attack
	    		if (SpamNeoGrabEasingTimer < 18) {
	    			SpamNeoGrabbedId.x = ease_sineIn( x + (60 * spr_dir), round(x + (20 * spr_dir)), SpamNeoGrabEasingTimer, 18 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_sineIn( y - 35, round(y - 120), SpamNeoGrabEasingTimer, 18 );// Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else if (SpamNeoGrabEasingTimer < 20 && SpamNeoGrabEasingTimer >= 18) {
	    			SpamNeoGrabbedId.x = ease_sineIn( x + (20 * spr_dir), round(x + (60 * spr_dir)), SpamNeoGrabEasingTimer - 18, 2 ); // Changes the hit player's x location over time
	    			SpamNeoGrabbedId.y = ease_sineIn( y - 120, round(y), SpamNeoGrabEasingTimer - 18, 2 );// Changes the hit player's y location over time
	    			SpamNeoGrabEasingTimer += 1; // Timer
	    		} else {
	    			SpamNeoGrabbedId.x = x + (60 * spr_dir); // Makes sure they stay at the desired x position
	    			SpamNeoGrabbedId.y = y; // Makes sure they stay at the desired y position
	    		}
	    		// No movement so that the changes in position don't become jank
	    		SpamNeoGrabbedId.hsp = 0; 
	    		SpamNeoGrabbedId.vsp = 0;
	    		SpamNeoGrabbedId.state = PS_HITSTUN;
        	} else {
        		// If they die remove them from the attack
        		SpamNeoGrabbedId = 0;
        	}
    	}
    	
    	
    	
    	break;
    	
    	case 5:
    	
    	SpamNeoGrabbedId = 0;
    	move_cooldown[AT_FSTRONG] = 90;
    	move_cooldown[AT_DSTRONG] = 15;
    	move_cooldown[AT_USTRONG] = 15;
    	
    	break;
    	
    }
    
    break;
    
    /*case AT_DSTRONG:
    
    switch (window) {
    	
    	case 5:
    	
    	if (has_hit == true) {
    		can_jump = true;
    		can_attack = true;
    		can_special = true;
    	}
    	move_cooldown[AT_DSTRONG] = 20;
    	
    	break;
    }
    
    break;*/
    
    case AT_NSPECIAL:
    
    switch (window) {
    	case 2:
    	
    	if (window_timer == 5) {
    		SpamNeoPipisActive = true;
    		instance_create(x + 46 * spr_dir, y - 52, "obj_article2");
    	}
    	
    	break;
    	
    	case 3:
    	
    	move_cooldown[AT_NSPECIAL] = 45;
    	
    	if (SpamNeoUSpcPrat == true && window_timer >= 14) {
    		set_state(PS_PRATFALL);
    		SpamNeoUSpcPrat = false;
    	}
    	
    	break;
    }
    
    break;
    
    case AT_USPECIAL:
    
    switch (window) {

    	case 1:
    	
    	if (window == 1 && window_timer == 1 && vsp > 0) {
	    	vsp = 0;
	    }
    	
    	break;
    	
    	case 2:
    	vsp = ease_cubeOut( -15, -8, window_timer, 25 );
    	
    	if (window_timer > 1) {
    		can_attack = true;
    		can_special = true;
    		move_cooldown[AT_USPECIAL] = 6;
    		move_cooldown[AT_DSPECIAL] = 6;
    		SpamNeoUSpcUsed = true;
    		SpamNeoUSpcPrat = true;
    	}
    	
    	break;
    	
    	case 3:
    	
    	can_attack = true;
    	can_special = true;
    	move_cooldown[AT_USPECIAL] = 6;
    	move_cooldown[AT_DSPECIAL] = 6;
    	SpamNeoUSpcUsed = true;
    	
    	if (SpamNeoUSpcPrat == true && window_timer >= 11) {
    		set_state(PS_PRATFALL);
    		SpamNeoUSpcPrat = false;
    	}
    	
    	break;
    }
    
    //grav = 0.2;
    
    break;
    
    case AT_FSPECIAL:
    
    move_cooldown[AT_FSPECIAL] = 10;
    
    if ( vsp > -1) {
        grav = 0.05;
    }
    
    if (window == 1 && window_timer == 1 && vsp > 0) {
    	vsp = 0;
    }
    
    if (SpamNeoUSpcPrat == true && window_timer >= 17 && window == 3) {
    	set_state(PS_PRATFALL);
    	SpamNeoUSpcPrat = false;
    }
    
    break;
    
    case AT_DSPECIAL:
    
    if (window == 2 && window_timer == 1) {
    	sound_play(asset_get("sfx_ell_utilt_retract"));
		
    	with (oPlayer) {
    		if (id != other.id) {
	    		if (SpamNeoString == true) {
	    			//if (state_cat != SC_HITSTUN) { // Disabled >:)
	    				// Cut String
	    				
	    				/*SpamNeoSnap = true;
						SpamNeoSnapAnim = true;
						SpamNeoSnapTimer = 30;
						
						SpamNeoSnapPratTime = SpamNeoStringCharge;
						SpamNeoPointerTimer = 0;
						
						other.SpamNeoPullX = x;
		    			other.SpamNeoPullY = y - char_height / 2;
						other.SpamNeoDSpcVisual = true;
						
						// String
						SpamNeoStringCharge = 0;
						SpamNeoString = false;
						SpamNeoStringStartTimer = 0;*/
	    			//} else {
	    				// Pull the String
	    				
	    				other.SpamNeoPullON = true;
	    				other.SpamNeoPullPower = SpamNeoStringCharge;
	    				other.SpamNeoPullX = x;
	    				other.SpamNeoPullY = y - char_height / 2;
	    				hsp = 0;
	    				vsp = 0;
	    				
	    				// String
		                SpamNeoStringStop = true;
		                SpamNeoStringStopTimer = 0;
		                SpamNeoStringCharge = 0;
		                SpamNeoString = false;
		                SpamNeoStringStartTimer = 0;
	    			//}
	    		}
	    	}
    	}
    	
    	if (SpamNeoDSpcVisual == true) {
    		spawn_hit_fx(SpamNeoPullX, SpamNeoPullY, stringhfx);
    		SpamNeoDSpcVisual = false;
    	}
    	
    	if (SpamNeoPullON == true) {
    		if (SpamNeoPullPower > 0) {
    			create_hitbox(AT_DSPECIAL, SpamNeoPullPower, round(SpamNeoPullX), round(SpamNeoPullY));
    		} else {
    			create_hitbox(AT_DSPECIAL, 1, round(SpamNeoPullX), round(SpamNeoPullY));
    		}
	    	
    		SpamNeoPullON = false;
    	}
    }
    
    if ( vsp > -1) {
        grav = 0.05;
    }
    
    move_cooldown[AT_DSPECIAL] = 20;
    
    break;
    
    case AT_TAUNT:
    
    switch (window) {
    	case 1:
    	if (window_timer == 10) {
    		sound_play(sound_get("laughing"));
    	}
    	SpamNeoTauntTime = 0;
    	/*switch (SpamNeoColor) {
    		
    		case 3:
    		SpamNeoTauntRand = random_func( 4, 4, true);
    		break;
    		
    		case 6:
    		SpamNeoTauntRand = random_func( 4, 3, true);
    		break;
    		
    		case 19:
    		SpamNeoTauntRand = random_func( 4, 3, true);
    		break;
    		
    		default:
    		SpamNeoTauntRand = random_func( 4, 5, true);
    		break;
    	}*/
    	
    	break;
    	
    	case 2:
    	if (SpamNeoTauntTime < 115) {
    		SpamNeoTauntTime += 1;
    		SpamNeoTauntActive = true;
    		
    		if (SpamNeoTauntTime == 105) {
    			
    			sound_play(asset_get("sfx_forsburn_cape_swipe"));
    			
    		}
    		
    	} else {
    		SpamNeoTauntActive = false;
    		window = 3;
    		window_timer = 0;
    		
    		
    		
    		if (special_down == false || attack_down == false) {
    			sound_stop(sound_get("bigshit"));
    			SpamNeoTauntSound = false;
    		}
    	}
    	break;
    	
    	case 3:
    	move_cooldown[AT_TAUNT] = 30;
    	break;
    }
    
    break;
    
}
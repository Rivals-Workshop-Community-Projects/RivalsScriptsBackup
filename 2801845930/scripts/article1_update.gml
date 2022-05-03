//article1_update

// Detect if article state matches with player state
if (state != player_id.state) {
		
	if ((state == 22 || state == 23 || state == 27) && (player_id.state == 22 || player_id.state == 23 || player_id.state == 27)) {
		state = player_id.state;
		state_timer = 0;
	} else {
		// Change state to match + fix timer
		state = player_id.state;
		state_timer = 0;
		String_MoveTimer = -1;
		    
		    
		// Recalculate Movements if state changes
		String_PriorStateX = round(x);
		String_PriorStateHsp = hsp * 100;
	}
}

if (String_IsDebuffer == false) {
	switch (state) {
		
		case 24: // Idle
		
		// Timer
		if (String_MoveTimer > 25 || hsp == 0) {
			String_MoveTimer += 1;
		}
		
		// Set the position to move to
		if (String_MoveTimer == 0 || hsp = 0) {
			String_MovePosX = player_id.x - 125 * player_id.spr_dir;
		}
		
		// Move if in wrong position
		if (String_MoveTimer > 0 && String_MoveTimer <= 90) {
			x = ease_quadOut(round(String_PriorStateX), round(String_MovePosX), String_MoveTimer, 90 );
		}
		
		break;
	    
	    case 32: // Crouch
	    case 19: // Landing Lag
	    case 21: // Wavedash
	    
	    // Timer
	    if (String_MoveTimer > 25 || hsp == 0) {
	    	String_MoveTimer += 1;
	    }
	    
	    // Set the position to move to
	    if (String_MoveTimer == 0 || hsp == 0) {
	        String_MovePosX = player_id.x - 50 * player_id.spr_dir;
	    }
	    
	    // Move if in wrong position
	    if (String_MoveTimer > 0 && String_MoveTimer <= 70) {
	        x = ease_quadOut(round(String_PriorStateX), round(String_MovePosX), String_MoveTimer, 70 );
	    }
	    
	    break;
	    
	    /*case 5:
	    case 6:
	    
	    if (player_id.attack == AT_DATTACK) {
	    	if (player_id.window == 2) {
		    	if (player_id.right_down == true) {
		    		x += 2;
		    	} else if (player_id.left_down == true) {
		    		x -= 2;
		    	}
	    	}
	    } else {
	    	// Timer + max for easing
		    if (String_MoveTimer < 60) {
		        String_MoveTimer += 1;
		    }
			
		    // Set the position to move to
		    if (String_MoveTimer > 0) {
		        String_MovePosX = player_id.x - 125 * player_id.spr_dir;
		    }
		    
		    
		    // Move if in wrong position
		    if (String_MoveTimer > 00) {
		        x = ease_expoOut(String_PriorStateX, String_MovePosX, String_MoveTimer, 90 );
		    }
	    }*/
	    
	    
	    break;
	    
	    default:
	    
	    // Timer + max for easing
	    if (String_MoveTimer < 60) {
	        String_MoveTimer += 1;
	    }
		
	    // Set the position to move to
	    if (String_MoveTimer > 0) {
	        String_MovePosX = player_id.x - 125 * player_id.spr_dir;
	    }
	    
	    
	    // Move if in wrong position
	    if (String_MoveTimer > 00) {
	        x = ease_expoOut(round(String_PriorStateX), round(String_MovePosX), String_MoveTimer, 90 );
	    }
	    
	    break;
	    
	}
		
	// Set y position
	y = get_instance_y(asset_get("camera_obj")) - 400;
	
	// Swing back and forth value stuff
	if (StringSwingForward1 == true) {
		if (StringSwingPos1 >= 5) {
			StringSwingForward1 = false;
		} else {
			StringSwingPos1 += 0.25;
		}
	} else {
		if (StringSwingPos1 <= -5) {
			StringSwingForward1 = true;
		} else {
			StringSwingPos1 -= 0.25;
		}
	}
	if (StringSwingForward2 == true) {
		if (StringSwingPos2 >= 6) {
			StringSwingForward2 = false;
		} else {
			StringSwingPos2 += 0.25;
		}
	} else {
		if (StringSwingPos2 <= -3) {
			StringSwingForward2 = true;
		} else {
			StringSwingPos2 -= 0.25;
		}
	}
	if (StringSwingForward3 == true) {
		if (StringSwingPos3 >= 3) {
			StringSwingForward3 = false;
		} else {
			StringSwingPos3 += 0.25;
		}
	} else {
		if (StringSwingPos3 <= -6) {
			StringSwingForward3 = true;
		} else {
			StringSwingPos3 -= 0.25;
		}
	}
	
	// Do Projectile Motion Setup Stuff
	player_id.SpamNeoStringLineVsp = (y - (player_id.y - player_id.char_height * 0.7) + 0.5 * 0.3 * 900 ) / 30; // Initial Vertical Speed to go from player to chain top
	player_id.SpamNeoStringLineHsp1 = (x + StringSwingPos1 - player_id.x) / 30; // Initial Horizontal Speed to go from player to chain top
	player_id.SpamNeoStringLineHsp2 = (x - 20 + StringSwingPos2 - player_id.x) / 30; // Initial Horizontal Speed to go from player to chain top
	player_id.SpamNeoStringLineHsp3 = (x - 40 + StringSwingPos3 - player_id.x) / 30; // Initial Horizontal Speed to go from player to chain top
	
	// Get the position of the chain top for player
	player_id.SpamNeoStringTopX = x;
	player_id.SpamNeoStringTopY = y;
	
} else {
	
	switch (state) {
		
		case 24: // Idle
		
		// Timer
		if (String_MoveTimer > 25 || hsp == 0) {
			String_MoveTimer += 1;
		}
		
		// Set the position to move to
		if (String_MoveTimer == 0 || hsp = 0) {
			with (oPlayer) {
				if (player == other.String_DebuffPlayerNum) {
					other.String_MovePosX = x - 125 * spr_dir;
				}
			}
		}
		
		// Move if in wrong position
		if (String_MoveTimer > 0 && String_MoveTimer <= 90) {
			x = ease_quadOut(String_PriorStateX, String_MovePosX, String_MoveTimer, 90 );
		}
		
		break;
	    
	    case 32: // Crouch
	    
		// Timer
		if (String_MoveTimer > 25 || hsp == 0) {
			String_MoveTimer += 1;
		}
		
		// Set the position to move to
		if (String_MoveTimer == 0 || hsp == 0) {
			with (oPlayer) {
				if (player == other.String_DebuffPlayerNum) {
					other.String_MovePosX = x - 50 * spr_dir;
				}
	    	}
	    }
	    
	    // Move if in wrong position
	    if (String_MoveTimer > 0 && String_MoveTimer <= 70) {
	        x = ease_quadOut(String_PriorStateX, String_MovePosX, String_MoveTimer, 70 );
	    }
	    
	    break;
	    
	    default:
	    
	    // Timer + max for easing
	    if (String_MoveTimer < 60) {
	        String_MoveTimer += 1;
	    }
		
	    // Set the position to move to
	    if (String_MoveTimer > 0) {
	    	with (oPlayer) {
				if (player == other.String_DebuffPlayerNum) {
					other.String_MovePosX = x - 125 * spr_dir;
				}
	    	}
	    }
	    
	    
	    // Move if in wrong position
	    if (String_MoveTimer > 00) {
	        x = ease_expoOut(round(String_PriorStateX), round(String_MovePosX), String_MoveTimer, 90 );
	    }
	    
	    break;
	    
	}
	
	// Set y position
	y = get_instance_y(asset_get("camera_obj")) - 400;
	
	// Swing back and forth value stuff
	if (StringSwingForward1 == true) {
		if (StringSwingPos1 >= 5) {
			StringSwingForward1 = false;
		} else {
			StringSwingPos1 += 0.25;
		}
	} else {
		if (StringSwingPos1 <= -5) {
			StringSwingForward1 = true;
		} else {
			StringSwingPos1 -= 0.25;
		}
	}
	
	// Do Projectile Motion Setup Stuff
	with (oPlayer) {
		if (player == other.String_DebuffPlayerNum) {
			SpamNeoStringOppLineVsp = (other.y - y + 0.5 * 0.3 * 900 ) / 30; // Initial Vertical Speed to go from player to chain top
			SpamNeoStringOppLineHsp1 = (other.x + other.StringSwingPos1 - x) / 30; // Initial Horizontal Speed to go from player to chain top
		}
	}
	
}



state_timer++;

// Amnimating

if (anim_timer == 5 && anim_type == 0) { // Normal
	image_index++;
	anim_timer = 0;
}

if (sprite_index != new_sprite) {
    sprite_index = new_sprite;
    
    image_index = 0;

}

player_id.CannBallState = state;

anim_timer++;
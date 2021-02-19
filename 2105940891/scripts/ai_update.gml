//ai_update - called every frame for this character as a CPU

// Wave Dashing
if (willWavedashL){
	joy_pad_idle = false;
	joy_dir = 180;
	state = PS_AIR_DODGE;
	hsp = -8;
	willWavedashL = false;
}	

if (willWavedashR){
	joy_pad_idle = false;
	joy_dir = 0;
	state = PS_AIR_DODGE;
	hsp = 8;
	willWavedashR = false;
}	

if (didWavedash){
	counterWavedash = counterWavedash + 1;
}

if (counterWavedash >= 25){
	counterWavedash = 0;
	didWavedash = false;
}

var didDash = false;
if (state == PS_DASH){
	didDash = true;
}

var tilt_randomizer = random_func(0,5,true);
var random_dspecial = random_func(0,1000,true);
var GeneralRandom = random_func(0,10,true);

var xDistanceTot = abs(ai_target.x - x);
var yDistanceTot = abs(y - ai_target.y);

var xDistance = ai_target.x - x;
var yDistance = y - ai_target.y;

var damage = get_player_damage(ai_target.player);

var DI_outwards = false;
var DI_inwards = false;
var DI_upwards = false;
var DI_downwards = false;
var DI_neutral = false;

// DI Away
if ((ai_target.spr_dir == -1 && ai_target.right_down) || (ai_target.spr_dir == 1 && ai_target.left_down)){
	DI_outwards = true;
}

// DI In 
if ((ai_target.spr_dir == 1 && ai_target.right_down) || (ai_target.spr_dir == -1 && ai_target.left_down)){
	DI_inwards = true;
}

// DI Up
if (ai_target.up_down){
	DI_upwards = true;
}

// DI Down
if (ai_target.down_down){
	DI_downwards = true;
}

// DI Neutral 
if (!ai_target.right_down && !ai_target.left_down && !ai_target.up_down && !ai_target.down_down){
	DI_neutral = true;
}

// for testing purposes
if (state == PS_WALK){
	state = PS_DASH;
}

// Siren Difficulty

var enemy_strength = 0;
// Weak Form 1-4
if (temp_level > 1 && temp_level < 5){
	enemy_strength = 1;
}
// Regular Form
if (temp_level > 5 && temp_level < 9){
	enemy_strength = 2;
}
// Strong Form
if (temp_level == 9){
	enemy_strength = 3;
}
// Hell Form
if (temp_level == 1){
	enemy_strength = 4;
}

// Checks if Facing a target
var facing_target = false;
if (ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1){
    facing_target = true;
}

// Targets opponent
var targetlocked = true;
if (ai_target.state == PS_DEAD || ai_target.state == PS_RESPAWN || ai_target.invincible){
    targetlocked = false;
}

var xStage = get_stage_data(SD_X_POS);
var sideBlastzone = get_stage_data(SD_SIDE_BLASTZONE);

// Checks if Target Offstage
var targetoffstage = false;
if (ai_target.x < xStage - 50 || ai_target.x > (room_width - xStage) + 50){
	targetoffstage = true;
}

// Checks if Offstage
var offstage = false;
if (x < xStage - 50 || x > (room_width - xStage) + 50){
	offstage = true;
}


// Recovery
if (ai_recovering){
	if (offstage && attack != AT_FSPECIAL_AIR || offstage && can_jump){
		if (spr_dir == 1){
			up_down = false
			right_pressed = true;    
			special_pressed = true;
		} 
		else {
			up_down = false
			left_pressed = true;
			special_pressed = true;
		}
	}

	// Up Special if stuck on a wall during Forward Special or if offstage after a certain period of time
	if ((offstage && attack == AT_FSPECIAL_AIR && state_timer > 30) || (attack == AT_FSPECIAL_AIR && hsp == 0 && (x < xStage + 10 || x > (room_width - xStage) - 10) && !can_wall_jump)){
		up_down = true;
		left_pressed = false;
		right_pressed = false;
		special_pressed = true;
	}

	// Wall Jumps if stuck to a Wall (Advance Tech)
	if (can_wall_jump && (attack == AT_FSPECIAL_AIR || attack == AT_FSPECIAL_2) && hsp == 0){
		if (spr_dir == 1){
			up_down = true;
			right_pressed = true;    
		} 
		else {
			up_down = true;
			left_pressed = true;
		}
	}
}

// Chase The opponent
if  ((ai_target.state != PS_ATTACK_AIR || ai_target.state != PS_ATTACK_GROUND)  || (!ai_recovering) && targetlocked){
	
	if (xDistanceTot > 90 && GeneralRandom > 6 && !free){
		if (ai_target.x > x){
			right_hard_pressed = true;    
		} 
		else {
			left_hard_pressed  = true;	
		}
	}
	
	// Dash at Target
	if (xDistanceTot > 90 && !free && (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN)){
		if (ai_target.x > x){
			right_hard_pressed = true;    
		} 
		else {
			left_hard_pressed  = true;	
		}
	}
	
	// Flies at Target
	if (xDistanceTot > 60 && free && !offstage && attack != AT_FSPECIAL_AIR && facing_target){
		if (ai_target.x > x){
			right_pressed = true;
			joy_pad_idle = false;			
			special_pressed = true;
		} 
		else {
			left_pressed  = true;
			joy_pad_idle = false;
			special_pressed = true;
		}
	}
	
	// Wave Dashing Towards
//	if (enemy_strength == 1){
 		if (xDistanceTot > 100 && !free && (state != PS_DASH || state != PS_DASH_START || state != PS_DASH_TURN) && GeneralRandom > 8 && !didWavedash && !didDash){
			if (ai_target.x > x){
				right_hard_pressed = true;
				willWavedashR = true;
			} 
			else {
				left_hard_pressed = true;
				willWavedashL = true;
			}
			didWavedash = true;
		}
//	}
}

// Avoid Attacks When Chasing
//if (enemy_strength == 1){
	if (!free && xDistanceTot > 60 && (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN)){
		if	(ai_target.state == PS_ATTACK_AIR || ai_target.state == PS_ATTACK_GROUND){
			if (ai_target.x > x){
				right_down = true;
				shield_pressed = true;
			} 
			else {
				left_down  = true;	
				shield_pressed = true;
			}
		}
	}
//}

// Should Dash Attack
if (xDistanceTot < 135 && xDistanceTot > 90 && facing_target && !free && state == PS_DASH && yDistanceTot < 40){
	if (GeneralRandom < 7){
		attack_pressed = true;
	}
	
	if (ai_target.hsp != 0 && xDistanceTot > 115 && GeneralRandom < 9){
		attack_pressed = true;
	}
}

// Dash Attack Combos
if (attack == AT_DATTACK && has_hit_player){
	if (can_attack){
		// DI Away
		if (DI_outwards){
			// Nair		
			if (damage >= 0 && damage <= 60){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			if (damage >= 60 && damage <= 95 && xDistanceTot < 30){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			
			// Utilt
			if (damage < 40 && yDistanceTot < 100 && xDistanceTot < 40 && !free){
				up_down = true;
				attack_pressed = true;
				down_down = false;
				jump_pressed = false;
			}
			
			// Fair		
			if (damage >= 7 && damage <= 50 && xDistanceTot < 40){
				if (ai_target.x > x){
					jump_pressed = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_pressed = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
			if (damage >= 50 && damage <= 90 && xDistanceTot < 15){
				if (ai_target.x > x){
					jump_pressed = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_pressed = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
		}
		
		// DI Inwards
		if (DI_inwards){
			// Nair
			if (damage >= 30 && damage <= 80 && xDistanceTot < 10){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			
			// Utilt
			if (damage > 35 && damage < 90 && xDistanceTot < 30 && !free){
				up_down = true;
				attack_pressed = true;
				down_down = false;
				jump_pressed = false;
			}
			
			// Bair		
			if (damage >= 25 && damage <= 83){
				if (ai_target.x > x && xDistance < 10){
					jump_pressed = true;
					left_pressed = true;
					attack_pressed = true;
				} 
				if (ai_target.x < x && xDistance > 10) {
					jump_pressed = true;
					right_pressed  = true;
					attack_pressed = true;
				}
			}
			if (damage >= 83 && damage <= 120){
				if (ai_target.x > x){
					jump_down = true;
					left_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_down = true;
					right_pressed  = true;
					attack_pressed = true;
				}
			}
		}

		// DI Down
		if (DI_downwards){
			// Nair
			if (damage > 45 && damage <= 140 && yDistanceTot < 80){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			if (damage > 140 && damage <= 155){
				joy_pad_idle = true;
				jump_pressed = true;
				jump_down = true;
				attack_pressed = true;					
			}
			if (damage > 45 && damage <= 113 && yDistanceTot > 80){
				joy_pad_idle = true;
				jump_pressed = true;
				jump_down = true;
				attack_pressed = true;									
			}
			
			// Utilt
			if (damage < 75 && xDistanceTot < 15 && !free){
				up_down = true;
				attack_pressed = true;
				down_down = false;
				jump_pressed = false;
			}
			
			// Fair
			if (damage >= 25 && damage <= 100 && xDistanceTot > 20 && xDistanceTot < 50){
				if (ai_target.x > x){
					jump_pressed = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_pressed = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
			if (damage >= 100 && damage <= 130){
				if (ai_target.x > x){
					jump_down = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_down = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}

		}
		
		// DI Up
		if (DI_upwards){
			// Nair
			if ((damage < 20) || (damage < 70 && xDistanceTot < 20) || (damage < 110 && damage > 70 && xDistanceTot < 45)){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			if (damage > 90 && damage <= 140){
				joy_pad_idle = true;
				jump_pressed = true;
				jump_down = true;
				attack_pressed = true;									
			}

			// Fair		
			if (damage >= 25 && damage <= 100 && xDistanceTot > 20 && xDistanceTot < 50){
				if (ai_target.x > x){
					jump_pressed = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_pressed = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
			if (damage >= 100 && damage <= 135){
				if (ai_target.x > x){
					jump_down = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_down = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
			
			// Uair
			if (damage > 60 && damage < 90 && yDistanceTot < 80){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			if (damage > 90 && damage <= 141){
				joy_pad_idle = true;
				jump_pressed = true;
				jump_down = true;
				attack_pressed = true;									
			}
			
			// Utilt
			if (damage < 75 && xDistanceTot < 15 && !free){
				up_down = true;
				attack_pressed = true;
				down_down = false;
				jump_pressed = false;
			}
		}
		
		// DI Other
		if (DI_neutral){
			// Nair
			if ((damage < 20) || (damage < 70 && xDistanceTot < 20) || (damage < 110 && damage > 70 && xDistanceTot < 45)){
				joy_pad_idle = true;
				jump_pressed = true;
				attack_pressed = true;
			}
			if (damage < 129 && damage >= 110){
				joy_pad_idle = true;
				jump_pressed = true;
				jump_down = true;
				attack_pressed = true;					
			}
			
			// Utilt
			if (damage < 75 && xDistanceTot < 15 && !free){
				up_down = true;
				attack_pressed = true;
				down_down = false;
				jump_pressed = false;
			}
		
			// Fair		
			if (damage >= 25 && damage <= 100 && xDistanceTot > 20 && xDistanceTot < 50){
				if (ai_target.x > x){
					jump_pressed = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_pressed = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
			if (damage >= 100 && damage <= 150){
				if (ai_target.x > x){
					jump_down = true;
					right_pressed = true;
					attack_pressed = true;
				} 
				else {
					jump_down = true;
					left_pressed  = true;
					attack_pressed = true;
				}
			}
		}
	}
}

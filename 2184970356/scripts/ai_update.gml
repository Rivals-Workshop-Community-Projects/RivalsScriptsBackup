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

// Snom Difficulty

var enemy_strength = 0;
// Weak Form 2-4
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
var yStage = get_stage_data(SD_Y_POS);
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
	if (offstage && (y > (room_height - yStage + 150))){
		up_down = false;
//		right_down = false;
//		left_down = false;
		down_down = true;    
		attack_pressed = true;	
	}
	
	if (offstage && !down_down){
		if (spr_dir == 1){
			up_down = false;
			right_pressed = true;    
			attack_pressed = true;
		} 
		else {
			up_down = false;
			left_pressed = true;
			attack_pressed = true;
		}
	}

	// Up Special if stuck on a wall during Forward Special or if offstage after a certain period of time
	if ((offstage && state_timer > 30) || ((attack == AT_FAIR || attack == AT_BAIR) && hsp == 0 && (x < xStage + 10 || x > (room_width - xStage) - 10) && !can_wall_jump)){
		up_down = true;
		left_pressed = false;
		right_pressed = false;
		special_pressed = true;
	}

	// Wall Jumps if stuck to a Wall (Advance Tech)
	if (can_wall_jump && (attack == AT_BAIR || attack == AT_FAIR) && hsp == 0){
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
if (state != PS_SPAWN){
	if ((((ai_target.state != PS_ATTACK_AIR || ai_target.state != PS_ATTACK_GROUND) || (!ai_recovering) && targetlocked)) && get_training_cpu_action() == CPU_FIGHT){
		
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

if (enemy_strength == 4){
	dash_speed = 8;
}

// Should Dash Attack
if (xDistanceTot < 135 && xDistanceTot > 90 && facing_target && !free && state == PS_DASH && yDistanceTot < 40){
	if (GeneralRandom < 7){
		attack_pressed = true;
	}
	
	if (ai_target.hsp != 0 && xDistanceTot > 115 && GeneralRandom < 9){
		attack_pressed = true;
	}
}
// ai_update.gml
// called every frame for a CPU version of the character
// Use ai_target to reference the player object the CPU is currently targeting
// Use ai_recovering to check if the CPU is recovering or not
// Use temp_level to reference the CPU’s difficulty level (1-9)

if (get_training_cpu_action() == CPU_FIGHT) {
	// Wave Dashing
	if (willWavedashL && free){
		joy_pad_idle = false;
		joy_dir = 180;
		state = PS_AIR_DODGE;
		hsp = hsp * 1.35;
		willWavedashL = false;
	}	

	if (willWavedashR && free){
		joy_pad_idle = false;
		joy_dir = 0;
		state = PS_AIR_DODGE;
		hsp = hsp * 1.35;
		willWavedashR = false;
	}	

	if (didWavedash){
		counterWavedash = counterWavedash + 1;
	}

	if (counterWavedash >= 25){
		counterWavedash = 0;
		didWavedash = false;
	}

	// for testing purposes
	if (state == PS_WALK){
		state = PS_DASH;
	}

	var GeneralRandom = random_func(0,10,false);

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

	// Chase The opponent
	if (state != PS_SPAWN){
		if ((((ai_target.state != PS_ATTACK_AIR || ai_target.state != PS_ATTACK_GROUND) || (!ai_recovering) && targetlocked)) && get_training_cpu_action() == CPU_FIGHT){
		
		/*
			// Wave Dashing Towards
		//	if (enemy_strength == 1){
				if (xDistanceTot > 100 && !free && (state != PS_DASH || state != PS_DASH_START || state != PS_DASH_TURN) && GeneralRandom > 8.5 && !didWavedash){
					if (ai_target.x > x){
						right_hard_pressed = true;
						willWavedashR = true;
					} 
					else {
						left_hard_pressed = true;
						willWavedashL = true;
					}
					jump_pressed = true;
					didWavedash = true;
				}
		//	}
		*/
		}
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

	if (attack == AT_DATTACK && has_hit_player && state != PS_ATTACK_GROUND){
		
		/*
		// Dattack -> Dtilt
		if ((DI_inwards || DI_upwards || DI_downwards) && damage < 30){
			down_down = true;
			attack_pressed = true;
		}
		*/

		// Dattack -> Utilt
		if (DI_inwards && damage < 30 && ai_target.y - x < 20){
			up_down = true;
			left_down = false;
			right_down = false;
			attack_pressed = true;
		}

		//if (DI_outwards && damage < 40){
		//	forward_down = true;
		//	attack_pressed = true;
		//}
		
	}
}
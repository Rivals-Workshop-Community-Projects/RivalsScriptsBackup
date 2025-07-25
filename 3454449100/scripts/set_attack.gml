// set_attack.gml

// forcing a shell kick if shell is held
if (carryingShell){
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		
		// shell taunt
		if (attack == AT_TAUNT){
			attack = AT_TAUNT_2;
			window = 1;
			window_timer = 0;
		}
	
		if (canThrowShellDown && ((down_strong_pressed || down_strong_down || down_stick_pressed) || (down_down || down_pressed) && (attack_down || attack_pressed || special_down || special_pressed))){
			//print("throw shell down!")
			
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 12);
			
			//set_attack( AT_NSPECIAL );
			attack = AT_NSPECIAL;
			window = 10;
			window_timer = 0;
		} else if (canThrowShellUp && ((up_strong_pressed || up_strong_down || up_stick_pressed) || (up_down || up_pressed) && (attack_down || attack_pressed || special_down || special_pressed))){
			//print("throw shell up!")
			
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 9);
			
			//set_attack( AT_NSPECIAL );
			attack = AT_NSPECIAL;
			window = 7;
			window_timer = 0;
		} else if (attack_down || attack_pressed || special_down || special_pressed || (left_strong_pressed || left_strong_down || right_strong_pressed || right_strong_down || left_stick_pressed || right_stick_pressed)){
			//print("throw shell normally!")
			
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
			
			if ((left_down && !right_down && spr_dir == 1) || (!left_down && right_down && spr_dir == -1)
			|| ((left_stick_pressed && spr_dir == 1 && (attack_pressed || left_strong_pressed || special_pressed)))
			|| ((right_stick_pressed && spr_dir == -1 && (attack_pressed || right_strong_pressed || special_pressed)))){
				spr_dir *= -1;	// flip
			}
			
			// HELP
			if ((left_stick_pressed || left_stick_down) && spr_dir == 1){
				spr_dir = -1;
			}
			
			if ((right_stick_pressed || right_stick_down) && spr_dir == -1){
				spr_dir = 1;
			}
			
			//set_attack( AT_NSPECIAL );
			attack = AT_NSPECIAL;
			window = 4;
			window_timer = 0;
		}
	}
} else {
	if (instance_exists(currKoopaShell)){	// makes sure it Exists lol
		if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
			if (attack == AT_NSPECIAL){
				set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 15);
						
				//set_attack( AT_NSPECIAL );
				attack = AT_NSPECIAL;
				window = 13;
				window_timer = 0;
			}
		}
	}
}
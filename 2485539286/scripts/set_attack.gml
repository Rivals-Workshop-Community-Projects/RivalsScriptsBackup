




if hhh == 0 and move_cooldown[AT_EXTRA_1] > 40  {
	
	switch attack {
		
		case AT_FSTRONG :
		case AT_DSTRONG :
		case AT_USTRONG :
		

        

		
		sound_play(sound_get("taunt1"));
		move_cooldown[AT_TAUNT] = 0
		attack = AT_TAUNT
		window = 10
		window_timer = 1
		state_timer = 1
		
		
		if abs(famix - x) < 80 && abs(famiy - y) < 150 {
			state_timer = 58
		}
		
		break;
		
		
		
		
	}
	
	
	
	
	
}
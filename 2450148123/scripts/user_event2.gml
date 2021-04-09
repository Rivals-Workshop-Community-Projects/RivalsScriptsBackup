//voice lines code

if (rolling){
	
switch (attack){
	
	case AT_JAB:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
	sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_UTILT:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && attacksfxindex != 5 && !hitpause
	{
	user_event(0);
	sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_DTILT:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
	sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_FTILT:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 &&
	window_timer = 1 && 
	attacksfxindex != 3 &&
	!hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	if window = 3 && window_timer = 0 && attacksfxindex != 3 && !hitpause{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if (trueinput)
	{
	
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 3 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	else 
	{
	
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 3 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	
	break;
	break;
	
	case AT_USPECIAL:
	case AT_USPECIAL_2:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if (trueinput)
	{
	
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 5 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	else 
	{
	
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 5 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	
	break;
	break;
	
	case AT_NSPECIAL:
	case AT_NSPECIAL_AIR:
	case AT_NSPECIAL_2:
	case AT_EXTRA_3:
	
	if (trueinput)
	{
		if state_timer = 1
		attacksfxindex = random_func( 1, 2, true ) + 1;
		
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 5 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	else 
	{
		if state_timer = 1
		attacksfxindex = random_func( 1, 2, true ) + 1;
		
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 3 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
	
	}
	
	break;
	break;
	break;
	break;
	
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
		if state_timer = 1
		attacksfxindex = random_func( 1, 2, true ) + 1;
		
		if window = 1 &&
		window_timer = 1 && 
		attacksfxindex != 5 &&
		!hitpause
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
		
		else if window = 4 && window_timer = 11 &&
		reentry_pressed &&
		attacksfxindex != 5 &&
		!hitpause && reentry = 1
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
		}
		
		else if window = 4 && window_timer = 11 &&
		reentry_pressed &&
		attacksfxindex != 5 &&
		!hitpause && reentry = 2
		{
		user_event(0);
			sound_play(sound_get("rolling" + string(attacksfxindex)));
			
		
		}
			
	break;
	break;
	
		
	case AT_FSTRONG:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 2 &&
	window_timer = 1 && 
	attacksfxindex != 5 &&
	!hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	if window = 5 && window_timer = 1 && attacksfxindex != 5 && !hitpause{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_DSTRONG:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 2 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_USTRONG:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 2 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_NAIR:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 2 && window_timer = 1 && attacksfxindex != 5 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_FAIR:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 2 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_DAIR:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 10 && attacksfxindex != 5 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_UAIR:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && attacksfxindex != 3 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_TAUNT:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_EXTRA_1:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_EXTRA_2:
	
	if state_timer = 1
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 1 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break; 
	
	case 49:
	
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 3 && !hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
	case AT_DATTACK:
	
	attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if state_timer = 1
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	
	if window = 1 &&
	window_timer = 1 && 
	attacksfxindex != 3 &&
	!hitpause
	{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	if window = 2 && window_timer = 13 && attacksfxindex != 3 && !hitpause{
	user_event(0);
		sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
	
	break;
	
}

}

//set_attack

if attack == AT_TAUNT {
	if window == 1 {
		spawn_hit_fx(x+30,y+10,144);
		spawn_hit_fx(x+30,y-40,144);
		spawn_hit_fx(x-30,y+10,144);
		spawn_hit_fx(x-30,y-40,144);
	}
}

if attack == AT_USTRONG {
	set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
}

//Stance change: change attacks depending on whether Tape has the dispenser or not
if nodispenser {

	if attack == AT_NSPECIAL {
		attack = AT_NSPECIAL_2;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_USPECIAL {
		attack = AT_USPECIAL_2;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_FTILT {
		attack = AT_FTHROW;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_DTILT {
		attack = AT_DTHROW;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_DATTACK {
		attack = AT_EXTRA_3;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_DSPECIAL {
		if free {
			attack = AT_DSPECIAL_2;
			window = 1;
			window_timer = 0;
		}
	}
	if attack == AT_NAIR {
		attack = AT_NTHROW;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_DAIR {
		attack = AT_EXTRA_2;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_FSTRONG {
		attack = AT_FSTRONG_2;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_DSTRONG {
		attack = AT_DSTRONG_2;
		window = 1;
		window_timer = 0;
	}
	
	if attack == AT_BAIR {
		attack = AT_UTHROW;
		window = 1;
		window_timer = 0;
	}
}





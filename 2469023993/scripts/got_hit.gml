if free{
	used_fspecial = false;
}
if can_swift = true{
	if (attack == AT_DSPECIAL) {
		if (window == 2) {
			window = 4;
			window_timer = 0;
			take_damage(player, -1, -(enemy_hitboxID.damage));
			user_event(0);
		}
	}
}


if (state_cat == SC_HITSTUN && radio == 1){
	if (orig_knock > 17){
		if (random_func(0, 6, true) == 3){
			sound_play(sound_get("pain1"));
		}
	}
	else if (orig_knock > 9)
	{
		if (random_func(0, 6, true) == 3){
			sound_play(sound_get("pain2"));
		}
		else if (random_func(0, 6, true) == 2){
			sound_play(sound_get("pain6"));
		}	
	}
	else if (orig_knock > 5 && random_func(0, 6, true) == 1){
		sound_play(sound_get("pain3"));
	}
}
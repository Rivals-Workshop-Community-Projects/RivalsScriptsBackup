if (attack == AT_DSPECIAL) {
    if (window == 1) {
        window = 3;
        window_timer = 0;
    }
}
if (state_cat == SC_HITSTUN) 
{
	if (orig_knock > 17) { sound_play(sound_get("hurt1")); }
	else if (orig_knock > 9)
	{
		if (random_func(0, 4, true) == 3) { sound_play(sound_get("hurt2")); }
		else if (random_func(0, 4, true) == 2) { sound_play(sound_get("hurt3")); }	
	}
	else if (orig_knock > 5 && random_func(0, 3, true) == 1) { sound_play(sound_get("hurt4")); }
}
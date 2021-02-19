if (get_color_profile_slot_r(1, 0) == 72 ) {
	falconsfx = random_func( 0, 2, true );
	if falconsfx == 1{
		sound_play(sound_get("yes"));
        set_color_profile_slot(1, 0, 71, 71, 126);
	}
    else{
    	sound_play(sound_get("moves"));
        set_color_profile_slot(1, 0, 71, 71, 126);
    }
	}
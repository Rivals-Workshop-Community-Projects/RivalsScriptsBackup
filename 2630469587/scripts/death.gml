sound_play(sound_get("death"))

if (voice_mode && (get_player_stocks(player) > 1)) {
		voice_rng = random_func(0, 4, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_pain4"));
		else if (voice_rng == 1 )
		    sound_play(sound_get("v_pain5"));
		    else if (voice_rng == 2 )
		    sound_play(sound_get("v_pain3"));
		    else if (voice_rng == 3 )
		    sound_play(sound_get("v_pain6"));
}

has_fly = true;
has_usp1_stall = true;

// Code for handling phantom state for this is in article1_update.gml (state 2).
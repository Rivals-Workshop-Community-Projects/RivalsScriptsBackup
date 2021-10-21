if (voice_mode) {
		voice_rng = random_func(0, 3, true);
		if (voice_rng == 0)
			sound_play(sound_get("v_parry1"));
		else if (voice_rng = 1)
			sound_play(sound_get("v_parry2"));
}
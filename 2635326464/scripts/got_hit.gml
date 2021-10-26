//Reset taunt
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));	
	set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 300);
	set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);

//Nair speed boost
	has_tricked = 0;

//Uspecial double jump lock
	djump_lock_start = 0;

//Nspecial charge
	charge = 0;

//Resetting sounds

sound_stop(sound_get("Drift1"));
sound_stop(sound_get("Drift2"));
sound_stop(sound_get("Drift3"));
sound_stop(sound_get("GoldenDrift"));
sound_stop(sound_get("DriftSteer"));

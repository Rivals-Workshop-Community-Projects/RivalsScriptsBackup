sound_play (sound_get("CourseOut"));
lakitu_sfx_allowed = 1;

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

//Summoning Lakitu
	summon_lakitu = 1;

//Resetting sounds

	sound_stop(sound_get("Drift1"));
	sound_stop(sound_get("Drift2"));
	sound_stop(sound_get("Drift3"));
	sound_stop(sound_get("GoldenDrift"));
	sound_stop(sound_get("DriftSteer"));

//End final smash

	starman_timer = 0;
	starman_start = 0;
	sound_stop(sound_get("starman"));
	walk_speed = default_walk_speed;
	dash_speed = default_dash_speed;
	hurtboxID.sprite_index = sprite_get("hurtbox");

//Spiny Shell rune

if has_rune("K") {
	spiny_shell_death = 1;
	stop_checking = false;
}
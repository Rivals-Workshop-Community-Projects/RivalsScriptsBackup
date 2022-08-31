// on death

// resets ammo
rockets_clip = 4;
rockets_reserve = 20; // funny unused variable

// if buff was not active, divide buff meter by 2
// if buff was active, turn it off and set buff to 0
if (buff_active) {
	
	buff_active = false;
	buff_timer_started = false;
	buff_cur_timer = buff_timer;
}
else {
	
	if (buff_current > 0) {
		buff_current = round(buff_current / 2);
	}
}

// reset uspec on death (just in case)
// also disables parachute
move_cooldown[AT_USPECIAL] = 1;	
para_should_undeploy = true;

// reset blastjump state on death
blastjump_should_undeploy = true;

// returns value from 0 to 99
death_sound_chance_var = random_func( 0, 100, true );
// returns value from 0 to 4
death_sound_var = random_func( 1, 5, true );

// 10% chance to play 1 of 4 death sounds
if (death_sound_chance_var > 89) {
	if (death_sound_var == 0) {
		sound_play(sound_get("soldier_die1"), false, noone, 1, 1);
	}
	else if (death_sound_var == 1) {
		sound_play(sound_get("soldier_die2"), false, noone, 1, 1);
	}
	else if (death_sound_var == 2) {
		sound_play(sound_get("soldier_die3"), false, noone, 1, 1);
	}
	else if (death_sound_var == 3) {
		sound_play(sound_get("soldier_die4"), false, noone, 1, 1);
	}
}

//print_debug(death_sound_chance_var);
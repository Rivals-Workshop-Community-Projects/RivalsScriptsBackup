
slow_hit = true;

move_cooldown[AT_USPECIAL] = 0;
uspec_used = false;

if instance_exists(rewind_clone){
	if (rewind_clone.primed){
	move_cooldown[attack] = 10*60;
	rewind_travel_time = 0;
	instance_destroy(rewind_clone);

	sound_play(sound_get("ball_die"));
	}
}
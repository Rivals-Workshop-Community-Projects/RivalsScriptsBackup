//
sound_stop(sound_get("mirorb"));

if (instance_exists(clam_ball)) {
	clam_ball.should_break = true;
}

wall_tether = false;
can_wall_tether = true;
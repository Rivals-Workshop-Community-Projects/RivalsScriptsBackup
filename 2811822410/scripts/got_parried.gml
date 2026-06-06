//
if (custom_clone) {
	destroy_hitboxes();
	set_state(PS_IDLE_AIR);
	with (clone_owner) {
		was_parried = true;
		if (free) {
			set_state(PS_PRATFALL);
		} else {
			set_state(PS_PRATLAND);
		}
		parry_lag = 120;
	}
	//instance_destroy(clone_owner.miku_clone);
	//clone_die = true;
	clone_owner.miku_clone.state = 3;
	clone_owner.miku_clone.state_timer = 0;
} else {
	if (instance_exists(miku_clone)) {
		//instance_destroy(miku_clone);
		miku_clone.state = 3;
		miku_clone.state_timer = 0;
	}
}

if ("miku_leak" in my_hitboxID) {
	//my_hitboxID.leak_state = 3;
	//my_hitboxID.leak_state_timer = 0;
	//my_hitboxID.was_broken = true;
	my_hitboxID.was_parried = true;
	//player = player_id.player;
}

print("Parry Lag Full: " + string(parry_lag))
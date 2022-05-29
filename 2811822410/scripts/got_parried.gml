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
	}
	instance_destroy(clone_owner.miku_clone);
} else {
	if (instance_exists(miku_clone)) {
		instance_destroy(miku_clone);
	}
}
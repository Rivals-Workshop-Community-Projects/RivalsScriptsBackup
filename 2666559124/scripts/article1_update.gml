// Pedestal Update

// Gravity Control (Why isn't this a default var?)
if (free) {
	if (vsp < grav) {
		vsp += 1;
	} else if (vsp > grav) {
		vsp = grav;
	}
} else {
	vsp = 0;
}

// Prevent Spike from placing multiple bombs
with (player_id) {
	move_cooldown[AT_DSPECIAL] = 190;
}

if (y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y)) {
	destroy = true;
}

if (destroy) {
	instance_destroy();
}

if (in_flight) {
	in_flight = false;
	can_fly = false;
}


if (state_cat != SC_HITSTUN) {
	sound_play(sound_get("Block"));
}

item_mistake_rate = 0;
//update

if (state == PS_FIRST_JUMP) and (state_timer == 2) {
	sound_play( sound_get("sfx_jump"));
}

if (state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) and (state_timer == 2) {
	sound_play( sound_get("sfx_jump2"));
}

if (state == PS_LAND) and (state_timer == 1) {
	sound_play( sound_get("sfx_land"));
}

if risestopstupid == 1 && !free || (state == PS_RESPAWN) {
	risestopstupid = 0;
}
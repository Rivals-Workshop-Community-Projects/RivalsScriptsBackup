if (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
	groundswitch = 0
}
if !free or state == PS_WALL_JUMP or state_cat == SC_HITSTUN {
    move_cooldown[AT_DAIR] = 0
}
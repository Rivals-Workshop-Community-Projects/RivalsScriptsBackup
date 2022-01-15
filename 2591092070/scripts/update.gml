
//just kidding you can fast fall again
if (!free || state == PS_PRATFALL) {
	can_fast_fall = true;
}

if (!free || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED) {
	move_cooldown[AT_DSPECIAL] = 0;
}

// if (snooping_in_torus_code == true){
//	the_fuck_you_doing = 1;
//}

//got_parried.gml

if (my_hitboxID.attack != AT_JAB){
	hasfirebrand = false
}

if (my_hitboxID.attack == AT_FSPECIAL){
	window = 7
	window_timer = 15
	destroy_hitboxes();
	can_jump = false;
	can_shield = false
}

if (my_hitboxID.attack == AT_DSPECIAL){
	window = 5
	window_timer = 15
	destroy_hitboxes();
	vsp = -9
	hsp = 0
	move_cooldown[AT_DSPECIAL] = 46;
}
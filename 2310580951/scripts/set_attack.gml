//set_attack
if attack == AT_FSPECIAL && free {
	attack = AT_FSPECIAL_AIR;
}

if attack == AT_USPECIAL && free {
	vsp = clamp(vsp, -100, -10);
	window = 3;
	window_timer = 0;
}
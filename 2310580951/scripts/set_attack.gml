//set_attack
if attack == AT_FSPECIAL && free {
	attack = AT_FSPECIAL_AIR;
}

if attack == AT_TAUNT && down_down {
	attack = AT_TAUNT_2;
}

if attack == AT_USPECIAL && free && (move_cooldown[AT_USPECIAL] =! 0) {
	vsp = clamp(vsp, -100, -10);
	window = 3;
	window_timer = 0;
}
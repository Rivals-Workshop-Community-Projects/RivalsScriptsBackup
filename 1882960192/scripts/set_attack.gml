//set_attack

if attack == AT_DSPECIAL && free && !((spr_dir == 1 && right_down || spr_dir == -1 && left_down) && !down_down) {
	attack = AT_DSPECIAL_AIR;
}

if attack == AT_TAUNT {
	if down_down {
		attack = AT_EXTRA_1;
	}
}
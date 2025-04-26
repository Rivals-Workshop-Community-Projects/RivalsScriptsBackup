//set_attack

if (attack == AT_USPECIAL && hammerOut) {
	attack = AT_USPECIAL_2;
}


if attack == AT_TAUNT {
	if up_down {
		attack = AT_TAUNT_2;
	}
}

if attack == AT_DAIR {
	if right_down {
		spr_dir = 1;
	}
	if left_down {
		spr_dir = -1;
	}
}
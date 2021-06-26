//set_attack

if attack == AT_DSPECIAL && free {
	attack = AT_DSPECIAL_AIR;
}

if attack == AT_TAUNT {
	if down_down {
		attack = AT_EXTRA_1;
	}
}

user_event(13);
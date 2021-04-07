if (make_button_work){
	if ((state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) || attack != AT_EXTRA_1){
		y--;
		state = PS_ATTACK_AIR;
		attack = AT_EXTRA_2;
	}
}
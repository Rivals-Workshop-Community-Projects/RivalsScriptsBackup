//set_attack

if (attack == AT_TAUNT) {
	if (right_pressed || right_down || left_pressed || left_down) { // Old Taunt
		attack = AT_TAUNT_2;
	}
}

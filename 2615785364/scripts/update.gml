user_event(9);

if (state == PS_WALK && hsp >= 7 && right_down) {
	state = PS_DASH;
}

if (state == PS_WALK && hsp <= -7 && left_down) {
	state = PS_DASH;
}

if (attack == AT_DTILT && window == 1 || attack == AT_DAIR && window == 1){
	sonicSpinSpeed = 0;
}

if (jump_pressed && can_jump == true){
	sonicSpinSpeed = 0;
}

if (attack == AT_EXTRA_1 && window == 1){
	can_jump = false;
}

if (attack == AT_DTILT){
	can_move = false;
}

if (attack == AT_EXTRA_1){
	can_move = false;
	clear_button_buffer( PC_ATTACK_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
}
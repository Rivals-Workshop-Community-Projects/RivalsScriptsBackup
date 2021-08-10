if (state == PS_DOUBLE_JUMP && state_timer == 0) {
	if (spr_dir == 1 && (left_down || (left_pressed && !right_down))) {
		spr_dir = -1;
	} else if (right_down || (right_pressed && !left_down)) {
		spr_dir = 1;
	}
}






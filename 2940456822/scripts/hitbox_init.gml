//
switch(attack) {
	case AT_FSPECIAL:
		is_earl_mic = true;
		mic_grabbed_obj = -4;
	break;
	case AT_NSPECIAL:
		if (hbox_num == 1) {
			for (var i = 0;i <= 20; i++) {
				can_hit[i] = false;
			}
		} 
	break;
}



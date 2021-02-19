//
timer = player_id.state_timer;
/*
with oPlayer {
	if (attack_down) {
		other.widthExtra += 1;
	} else if (special_down) {
		other.widthExtra -= 1;
	}
}
*/

switch moveDir {
	case 0:
	vsp = 0;
	break;
	
	case 1:
	if (y < get_marker_y(2) + 8 - dimensionY) {
		vsp = 12;
	} else {
		vsp = 0;
		moveDir = 0;
		y = get_marker_y(2) + 8 - dimensionY;
	}
	break;
	
	case -1:
	if (y > get_marker_y(19)) {
		vsp = -12;
	} else {
		vsp = 0;
		moveDir = 0;
		y = get_marker_y(19);
	}
	break;
	
	case 9: //corridor
	
	break;
}
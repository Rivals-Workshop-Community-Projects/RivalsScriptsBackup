//
timer = player_id.state_timer;
/*
with (obj_stage_article_solid) {
    if (get_article_script(id) == 2) {
        widthExtra = other.widthExtra;
    }
}
*/

var xVar1 = get_marker_x(1) - 200 - dimensionX;
var xVar2 = get_marker_x(2) + 200 + dimensionX;

switch moveDir {
	case 0:
	hsp = 0;
	break;
	
	case 1:
	switch (spawn_variables[0]) {
		case 0:
		if (x < xVar1) {
			hsp = 12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = xVar1;
		}
		break;
		
		case 1:
		if (x > xVar2) {
			hsp = -12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = xVar2;
		}
		break;
	}
	break;
	
	case -1:
	switch (spawn_variables[0]) {
		case 0:
		if (x > get_marker_x(17)) {
			hsp = -12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = get_marker_x(17);
		}
		break;
		
		case 1:
		if (x < get_marker_x(18)) {
			hsp = 12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = get_marker_x(18);
		}
		break;
	}
	break;
	
	case 9: //corridor 1
	if (spawn_variables[0] == 1) {
		if (x < xVar2) {
			hsp = 18;
		} else {
			hsp = 0;
			moveDir = 0;
			x = xVar2;
		}
	} else {
		hsp = 0;
	}
	break;
	
	case 10: //corridor 2
	if (spawn_variables[0] == 0) {
		if (x > xVar1) {
			hsp = -12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = xVar1;
		}
	} else {
		hsp = 0;
	}
	break;
	
	case 11: //corridor end
	switch (spawn_variables[0]) {
		case 0:
		hsp = 0;
		break;
		
		case 1:
		if (x > xVar2) {
			hsp = -12;
		} else {
			hsp = 0;
			moveDir = 0;
			x = xVar2;
		}
		break;
	}
	break;
}

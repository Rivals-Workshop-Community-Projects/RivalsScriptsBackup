//Controller base
time--;
switch(mode) {
	case 0://above the stage
		if time <= 0 {
			mode = modechanger; 
			time = activetime;
		}
		desty += max((-500-y)*0.1, -1);
	break;
	case 1://center drop
		if time <= 0 {mode = 0; time = downtime; modechanger = 2}
		x = get_marker_x(11);
		desty += max((get_marker_y(11)-y)*0.1, -0.2);
	break;
	case 2://down left
		if time <= 0 {mode = 0; time = downtime; modechanger = 4}
		x = get_marker_x(12);
		desty += max((get_marker_y(12)-y)*0.1, -0.2);
	break;
	case 3://down right
		if time <= 0 {mode = 0; time = downtime; modechanger = 1}
		x = get_marker_x(13);
		desty += max((get_marker_y(13)-y)*0.1, -0.2);
	break;
	case 4://up right
		if time <= 0 {mode = 0; time = downtime; modechanger = 5}
		x = get_marker_x(14);
		desty += max((get_marker_y(14)-y)*0.1, -0.2);
	break;
	case 5://up left
		if time <= 0 {mode = 0; time = downtime; modechanger = 3}
		x = get_marker_x(15);
		desty += max((get_marker_y(15)-y)*0.1, -0.2);
	break;
}

vsp = floor(desty-y);

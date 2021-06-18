//
time--;
switch(mode) {
	case 2: case 3:
		if time <= 0 mode -= 2;
	break;
	case 0:
		if time <= 0 {mode = 1; time = 1200}
		dest += max((get_marker_y(1)-y)*0.4, -1);
		vsp = floor(dest-y);
	break;
	case 1:
		if time <= 0 {mode = 0; time = 1200}
		dest += min((get_marker_y(2)-y)*0.4, 1);
		
		vsp = floor(dest-y);
	break;
}
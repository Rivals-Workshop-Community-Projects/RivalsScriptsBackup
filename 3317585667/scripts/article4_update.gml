switch get_gameplay_time() % 7200 {
	case 0:
		target_x = get_marker_x(8);
		target_y = get_marker_y(8);
	break;
	case 600:
		target_x = get_marker_x(10) -1000;
		target_y = get_marker_y(10);
	break;
	case 3600:
		target_x = get_marker_x(9);
		target_y = get_marker_y(9);
	break;
	case 4200:
		target_x = get_marker_x(11) + 1000;
		target_y = get_marker_y(11);
	break;
}

tempsin1 = sin(get_gameplay_time() * 0.05);
tempsin2 = sin(get_gameplay_time() * 0.06);

tempangle = point_direction(x, y, target_x + -tempsin2, target_y);

hsp = lerp(hsp - tempsin1, lengthdir_x(2, tempangle), 0.08);
hsp += (x > target_x ? -0.2 : 0.2);
vsp = lerp(vsp, tempsin2 * 4 + lengthdir_y(2, tempangle), 0.1);
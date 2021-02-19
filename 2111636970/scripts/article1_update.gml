if (y == get_marker_y(1) && x == get_marker_x(1))
{
	hsp = 2;
	vsp = 0;
}
if (y == get_marker_y(2) && x == get_marker_x(2))
{
	hsp = 0;
	vsp = -2;
}
if (y == get_marker_y(3) && x == get_marker_x(3))
{
	hsp = -2;
	vsp = 0;
}
if (y == get_marker_y(4) && x == get_marker_x(4))
{
	hsp = 0;
	vsp = 2;
}

var anim_speed = 0.08;
image_index += anim_speed;
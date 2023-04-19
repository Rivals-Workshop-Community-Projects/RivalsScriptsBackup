// hitbox_update

if (attack == AT_DSPECIAL && hbox_num == 2)
{
	var kbAngle = 50;
	with (player_id) kbAngle = get_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE);
	kb_angle = FlipAngle(kbAngle);
}

#define FlipAngle(angle) // flip angle when ball is flying backwards
{
	if (sign(spr_dir) != sign(hsp)) return 180 - angle;
	return angle;
}
// hitbox_update

if (attack == AT_DSPECIAL && hbox_num == 2)
{
	kb_angle = cannonballangle(player_id.careeningmin, player_id.careeningmax);
	for (var i = 1; i <= 20; ++i)
	{
		can_hit[i] = true;
	}
}

// convert velocity direction to angle
// min v max w - returns v when velocity direction is -90 degrees, returns w when velocity direction is 90 degrees
// min -90, max 90 - angle is equal to velocity direction
#define cannonballangle(minangle, maxangle)
{
	return flipangle(lerp(minangle, maxangle, 1-((point_direction(0,0,-abs(hsp),vsp)-90)/180)), 90);
}

#define flipangle(angle, offset) // flip angle when ball is flying backwards
{
	if (sign(spr_dir) != sign(hsp))
		return 360 - angle - offset*2;
	return angle;
}
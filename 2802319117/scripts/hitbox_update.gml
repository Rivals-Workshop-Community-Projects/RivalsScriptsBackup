if (attack == AT_NSPECIAL) 
{
	player_id.attack_cooldown[AT_NSPECIAL] = 90;
}
else if (attack == AT_DSPECIAL) 
{
	if (hbox_num == 3)
	{
		if (player_id.phantom != noone)
		{
			tracker = player_id.phantom; //id for tracking the opponent
			var mask = point_direction(x, y, tracker.x, tracker.y); //variable for direction of opponent based on where phanto is
			hsp = lengthdir_x(6, mask); //horizontal speed of phanto, adjust number to change speed
			vsp = lengthdir_y(6, mask); //vertical speed of phanto, adjust number to change speed
		}
	}
}
if (attack == 40 && !free)
{
    destroyed = true;
}
//Makes Jump Disc multi hit
if (attack == AT_FSPECIAL && hbox_num == 1){
	for (var p = 0; p < array_length(can_hit); p++)
	{ 
		if (hitbox_timer % 10 == 0)
		{
	    	can_hit[p] = true;
		}
	}
	
	if (hsp == 0 && hitbox_timer >0)
	{
		player_id.Fspecial_positionX = x;
		player_id.Fspecial_positionY = y;
		destroyed = false;
	}
}

//This code governs the movement of the jump disc
if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 12)
{
	player_id.Fspecial_positionX = x;
	player_id.Fspecial_positionY = y;
	hsp = 0;
}

	if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 28 && player_id.moveDisc == true)
	{
		var disc_direction = point_direction(x, y, player_id.x, player_id.y);
		var disc_distance = point_distance(x, y, player_id.x, player_id.y);
	
		hsp = lengthdir_x(disc_distance, disc_direction) / 14;
		vsp = lengthdir_y(disc_distance, disc_direction) / 14;
	}


if (player_id.moveDisc == false)
{
	length = 70;
}

if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 64)
{
	
	var disc_direction2 = point_direction(x, y, player_id.x, player_id.y);
	var disc_distance2 = point_distance(x, y, player_id.x, player_id.y);
	
	hsp = lengthdir_x (disc_distance2, disc_direction2) /6;
	vsp = lengthdir_y(disc_distance2, disc_direction2) /6;
}

if (attack == 43 && hbox_num == 1){
	for (var p = 0; p < array_length(can_hit); p++)
	{ 
		if (hitbox_timer % 5 == 0)
		{
	    	can_hit[p] = true;
		}
	}
	
	if (hsp == 0 && hitbox_timer >0 && hitbox_timer <30)
	{
		destroyed = false;
	}
	if (player_id.state == PS_LANDING_LAG)
	{
		destroyed = true;
	}
}
if (attack == 43 && hbox_num == 1 && hitbox_timer == 2)
{
	hsp = 0;
}

if (attack == 43 && hbox_num == 1 && hitbox_timer == 28)
{
	hsp = player_id.x > x ? 10: -10;
	vsp = player_id.y = y? 0: player_id.vsp;
}
//Destroy Bike upon contact with ground
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
		destroyed = false;
	}
}

//This code governs the movement of the jump disc
if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 12)
{
	hsp = 0;
}
if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 28 && player_id.moveDisc == true)
{
	hsp = player_id.x > x ? 16: -16;
	vsp = player_id.y = y? 0: player_id.vsp;
}

if (player_id.moveDisc == false)
{
	length = 70;
}
	
if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer >= 54)
{
	if (player_id.x > x)
	{
		hsp = player_id.hsp + 3;
	}
	else if (player_id.x < x)
	{
		hsp = player_id.hsp - 3;
	}
	if (player_id.y < y)
	{
		vsp = player_id.vsp - 8;
	}
	else if (player_id.y > y)
	{
		vsp = player_id.vsp + 2;
	}
	
}

if (attack == 43 && hbox_num == 1){
	for (var p = 0; p < array_length(can_hit); p++)
	{ 
		if (hitbox_timer % 5 == 0)
		{
	    	can_hit[p] = true;
		}
	}
	
	if (hsp == 0 && hitbox_timer >0)
	{
		destroyed = false;
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



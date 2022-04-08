if (attack == 40 && !free)
{
    destroyed = true;
}
//Makes Jump Disc multi hit
if (attack == AT_FSPECIAL && hbox_num == 1){
	for (var p = 0; p < array_length(can_hit); p++)
	{ 
		if (hitbox_timer % 10 == 0 && hitbox_timer !=0)
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
	hit_flipper = 4;
	player_id.Fspecial_positionX = x;
	player_id.Fspecial_positionY = y;
	hsp = 0;
}

if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 33 && player_id.moveDisc == true)
{
	hit_flipper = 0;
	kb_angle = 135;
	var disc_direction = point_direction(x, y, player_id.x, player_id.y);
	var disc_distance = point_distance(x, y, player_id.x, player_id.y);

	hsp = lengthdir_x(disc_distance, disc_direction) / 14;
	vsp = lengthdir_y(disc_distance, disc_direction) / 14;
}


if (player_id.moveDisc == false)
{
	length = 70;
}

if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer >= 64)
{
	hit_flipper = 0;
	var predictPosY = player_id.y - 200;
	
	var disc_direction2 = point_direction(x, y, player_id.x, predictPosY);
	var disc_distance2 = point_distance(x, y, player_id.x, predictPosY);
	
	hsp = lengthdir_x (disc_distance2, disc_direction2) /6;
	vsp = lengthdir_y(disc_distance2, disc_direction2) /6;
}
if (attack == AT_FSPECIAL && hbox_num == 1 && hitbox_timer == 70)
{
	kb_angle = 45;
}

if (attack == 43 && hbox_num == 1){
	for (var p = 0; p < array_length(can_hit); p++)
	{ 
		if (hitbox_timer % 5 == 0 && hitbox_timer !=0)
		{
	    	can_hit[p] = true;
		}
	}
}
if (attack == 43 && hbox_num == 1 && hitbox_timer == 12)
{
	hit_flipper = 4;
	hsp = 0;
}

if (attack == 43 && hbox_num == 1 && hitbox_timer >= 33)
{
	hit_flipper = 0;
	kb_angle = 135;
	var predictPosX = player_id.x - (200 * spr_dir);
	var bike_direction = point_direction(x, y, predictPosX, player_id.y);
	var bike_distance = point_distance(x, y, predictPosX, player_id.y);

	hsp = lengthdir_x(bike_distance, bike_direction) / 14;
	vsp = lengthdir_y(bike_distance, bike_direction) / 14;
}

if (attack == 43 && hbox_num == 1 && hitbox_timer >= 46 && player_id.motorbike == false)
{
	kb_angle = 45;
	can_hit_self = true;
}


if (attack == 43 && hbox_num == 1 && hitbox_timer == 47)
{
	destroyed = true;
}
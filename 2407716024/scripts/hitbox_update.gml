if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

switch (attack)
{
	case AT_NSPECIAL:
	with (pHitBox)
	{
		if (player_id == other.player_id && type == 2 && 
			(attack == AT_FSPECIAL || attack == AT_FTILT) &&
			point_distance(x, y, other.x, other.y) < 40 && 
			other.player == other.player_id.player)
		{
			other.vsp = -10;
			if (other.spr_dir != other.player_id.spr_dir) other.hsp *= -1;
			other.spr_dir = other.player_id.spr_dir;
		}
		if (player_id != other.player_id && point_distance(x, y, other.x, other.y) < 30 && type == 1)
		{
			other.y = 1000;
		}
	}
	
	with (oPlayer)
	{
		if (point_distance(x, y - floor(char_height / 2), other.x, other.y) < char_half_width * 2 && id != other.player_id)
		{
			other.hit_priority = 1;
		}
	}
	break;
	

	case AT_FTILT:
	if (type == 1) break;
	with (pHitBox)
	{
		if (player_id != other.player_id && point_distance(x, y, other.x, other.y) < 30 && type == 1)
		{
			other.y = 1000;
		}
	}
/*	with (oPlayer)
	{
		if (point_distance(x, y - floor(char_height / 2), other.x, other.y) < char_half_width * 2 && id != other.player_id)
		{
			other.hit_priority = 1;
		}
	} */
	break;
}
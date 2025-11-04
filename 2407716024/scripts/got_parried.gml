//got parried 
with (pHitBox)
{
	if (attack == AT_NSPECIAL && player_id == other.id)
	{
		y = 1000;
	}
}

with (my_hitboxID) {
	
	if (attack == AT_FTILT) 
	{
		hitbox_timer = 0;
		hsp *= 1.5;
		draw_xscale *= -1;
	}
	else if (attack == AT_FSPECIAL)
	{
		hitbox_timer = 0;
		hsp *= 1.5;
		draw_xscale *= -1;
	}
}

with (pHitBox)
{
	if (player_id == other.id && attack == AT_NSPECIAL) 
	{
		y = 1000;
		destroyed = true;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.player_id == id)
{
	move_cooldown[@AT_NSPECIAL] = 300;
}
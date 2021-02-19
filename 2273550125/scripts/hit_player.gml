//hit_player
if (greaterdog_timer <= 1)
{
	if (attack == AT_NAIR && state == PS_ATTACK_AIR)
	{
		move_cooldown[AT_FSTRONG] += -20;	
		old_vsp += -1.0;	
	}
	else if (attack == AT_FAIR)
	{
		move_cooldown[AT_FSTRONG] += -40;
	}
	else if (attack == AT_NSPECIAL)
	{
			move_cooldown[AT_FSTRONG] += -150;
	}
	else
	{
		move_cooldown[AT_FSTRONG] += -100;
		move_cooldown[AT_DSPECIAL] += -5;
	}
}
else
{
	move_cooldown[AT_FSTRONG] = 1500;
}
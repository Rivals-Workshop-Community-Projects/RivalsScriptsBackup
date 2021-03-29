if (attack == AT_FSPECIAL)
{
	if (guitar.state == 0 && !move_cooldown[AT_FSPECIAL])
	{
		guitar.newState = 7;
		guitar.noHit = true;
	}
}
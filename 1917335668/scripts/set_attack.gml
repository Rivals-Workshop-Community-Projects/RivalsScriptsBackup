

if (attack == AT_NSPECIAL && lasermode)
{
	attack = AT_EXTRA_1;
}

if (attack == AT_NSPECIAL && !lasermode)
{
	if (laserstaling > 4)
	{
		attack = AT_NSPECIAL_2;
	}
}

if (attack == AT_EXTRA_1)
{
		if (laserstaling > 4)
	{
			attack = AT_EXTRA_2;
	}

}



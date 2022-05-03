if (phantom != noone)
{
	keymarked = 0;
    with(pHitBox)
	{
	    if (hbox_num == 3 and attack == AT_DSPECIAL)
	    {
			destroyed = true;// if wart is hit, phanto gets destroyed
		}
	}
	phantom = noone;
}
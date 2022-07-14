if (instance_exists(phantom)) //will reset values and destroy phanto when opponent dies
{
	if (phantom.state == PS_RESPAWN)
	{
		phantom = noone;
		keymarked = 0;
		with(pHitBox)
	    {
	    	if (hbox_num == 3 and attack == AT_DSPECIAL)
			{
				destroyed = true;
			}
	    }
	}
}
if (!free || state == PS_WALL_JUMP){
move_cooldown[AT_FSPECIAL] = 0;}

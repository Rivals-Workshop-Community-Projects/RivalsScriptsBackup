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

if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 16) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
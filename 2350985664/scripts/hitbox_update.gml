//hitbox_update

switch (attack)
{
	case AT_DTILT:
	    if (!free)
	    {
	    	if (player == orig_player)
	    	{
		       var inst = instance_create(x ,y,"obj_article3")
		       inst.spr_dir = spr_dir;
	    	}
	      
    	   instance_destroy(self);
	    }
	break;
	case AT_USPECIAL:
		//image_index = 2;
	case AT_DAIR:
		if (abs(hsp) < 3)
		{
			hsp += 0.05 * spr_dir
		}
	break;
	case AT_FSPECIAL:
		if (!free)
		{
			destroyed = true;
		}
		switch (hbox_num)
		{
			case 3:
				proj_angle = 90 * spr_dir;
				if (abs(vsp) > -3)
				{
					vsp -= 0.05 
				}
			break;
			case 4:
				proj_angle = -90 * spr_dir;
				if (abs(vsp) < 3)
				{
					vsp += 0.05 
				}
			break;
		}
	break;
}
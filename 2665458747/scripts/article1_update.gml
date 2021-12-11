//visual objects

image_alpha -= fadevariablething;

switch(object_type)
{
	case 1:
	{
		if sub_start >= 0
		{
			sprite_change_collision_mask( "sub_mask", true, 0, 0, 0, 0, 0, 0 );
			ignores_walls = false;
			can_be_grounded = true;
			sub_start--;
		}
		
		if free 
		{
			vsp += grav_speed;
		}
		
		if sub_bounce == 1
		{	
			if !free
			{
				vsp = -6;
				ignores_walls = true;
				can_be_grounded = false;
				hsp *= 2;
				image_angle+= 10*spr_dir;
				fadevariablething = .01;
				
				sound_play(sound_get("dp-djump"));
			}
		}
    	
    	if sub_timer >= 1
    	{
    		sub_timer--;
    		switch(sub_dir)
    		{
    			case 1:
    			{
    				image_angle+=sub_rotation;
    			}break;
    			
    			case -1:
    			{
    				image_angle-=sub_rotation;
    			}break;
    		}
    	}
    	else
    	{
    		if instance_exists(self)
    		{
    			instance_destroy();
    		}
    	}
	}break;
}
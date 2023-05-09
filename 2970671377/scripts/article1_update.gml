//	Falling Platform Update

var plat_reappear	= hit_fx_create(sprite_get("plat_aether_reappear"), 16);

//	Idle
if (is_aether_stage())
{
	if (state == 0)
	{ 
		with (oPlayer) 
		{
			if (y <= (other.y + 2) && !free && !freemd) 
			{
				if (place_meeting(x, y, other.id) || (y > (other.y - 10) && x >= (other.x - 20) && x <= (other.x + 20)))
				{
					other.timer += 1;
					
					if (other.timer >= 6)
					{
						other.state = 1;
						other.timer = 0;
					}
				}
			}
		}
	}

	//	About to fall
	if (state == 1)
	{ 
		timer += 1;
		
		if (timer >= 50)
		{
			state = 2;
			timer = 0;
		}
	}

	//	Falling
	if (state == 2)
	{ 
		vsp 	+= 0.25;
		vsp 	= min(vsp, 8);
		
		timer 	+= 1;
		
		if (timer >= 400)
		{
			state 	= 0;
			timer 	= 0;
			y 		= posY;
			vsp 	= 0;
			
			var pop 	= spawn_hit_fx(x, y, plat_reappear);
			pop.depth 	= depth+4;		
		}
	}

	if (spawn_variables[0] == 1)
	{
		with (oPlayer) 
		{
			if (state != PS_HITSTUN)
			{
				if (x < -10) 
				{
					x = (room_width)
				}
				
				if (x > (room_width+10))
				{
					x = 0;
				}
			}
		}
	}
}
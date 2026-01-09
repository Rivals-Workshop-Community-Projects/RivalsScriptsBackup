//	hitbox_update.gml
//=============================================================================

if (attack == AT_NSPECIAL && hbox_num == 1)
{	
	if (!was_parried)
	{	
		if (transcendent == true && hitbox_timer > 12)
		{
			transcendent = false;
		}
		
		if (hitbox_timer == length) 	// 79
		{
			spawn_hit_fx(x, y, 3);		
			sound_play(asset_get("sfx_burnend"), false, noone, 0.50);
		}
	}
	
	if (was_parried)
	{		
		transcendent = false;
		
		if (hsp > 0)
		{ 
			draw_xscale = 1;
		}

		if (hsp < 0)
		{ 
			draw_xscale = -1;
		} 
		
		if (hitbox_timer == 54)
		{		
			spawn_hit_fx(x, y, 3);		
			sound_play(asset_get("sfx_burnend"), false, noone, 0.50);	
		}
	}

	//	Crib Roster using Reflectors
	if (variable_instance_exists(self, "reflect_check"))
	{	
		if (hsp > 0)
		{ 
			draw_xscale = 1;
		}

		else if (hsp < 0)
		{ 
			draw_xscale = -1;
		} 	
	}
			
	//	Doctor Melee Mario
	if (variable_instance_exists(self, "hit_check"))
	{				
		if (hsp > 0)
		{ 
			draw_xscale = 1;
		}

		else if (hsp < 0)
		{ 
			draw_xscale = -1;
		}
	}
}
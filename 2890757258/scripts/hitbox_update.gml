//	hitbox_update.gml

if (attack == AT_NSPECIAL && hbox_num == 1)
{
    if (hitbox_timer == 79) 
	{
		spawn_hit_fx(x, y, 3);		
		sound_play(asset_get("sfx_burnend"), false, noone, 0.50);
    }
	
	if (was_parried == true)
	{		
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
}
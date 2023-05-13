//	Pod Object Update

var warp_ready 		= sound_get("sfx_warp_point_ready");
var warp_activate 	= sound_get("sfx_warp_point_activate");

if (is_aether_stage())
{
	timer++;

	//	Idle
	if (state == 0)
	{ 
		sprite_index = sprite_get("pod");
		
		if (get_gameplay_time() mod 5 == 0)
		{
			pod_anim 	+= 0.75;
			image_index = pod_anim;
		}
		
		if (timer >= 320)
		{
			ready 		= true;	
			
			sprite_index = sprite_get("pod_ready");
		
			pod_anim 	+= 0.25;
			image_index = pod_anim;
			
			if (get_gameplay_time() mod 101 == 0)
			{
				sound_play(warp_ready, false, noone, 0.15);	
			}	
		}
		
		if (ready == true)
		{
			with (oPlayer) 
			{
				if (place_meeting(x, y, other.id) && vsp >= 0)
				{
					sound_play(warp_activate);	
					sound_stop(warp_ready);					
							
					vsp 						= -16;
					djumps 						= 0;
					has_airdodge 				= true;
								
					has_walljump 				= true;
							
					move_cooldown[AT_USPECIAL] 	= 0;
						
					other.state 				= 1;
					other.timer 				= 0;
					other.pod_anim 				= 0;
								
					if (state == PS_PRATFALL)
					{
						state = PS_IDLE_AIR;
					}
				}
			}
		}
	}

	//	Animation Active
	if (state == 1)
	{ 	
		sprite_index 	= sprite_get("pod_beam");
		
		if (get_gameplay_time() mod 4 == 0)
		{
			pod_anim 		+= 1.054;
			image_index 	= pod_anim;
		}
		
		//	Reset
		if (timer >= 42)
		{
			state 		= 0;
			timer 		= 0;
			pod_anim 	= 0;
			
			ready 		= false;
		}
	}
}

else
{
	timer++;

	if (state == 0)
	{ 
		sprite_index = sprite_get("pod");
		
		if (get_gameplay_time() mod 5 == 0)
		{
			pod_anim 	+= 0.75;
			image_index = pod_anim;
		}
	}
}
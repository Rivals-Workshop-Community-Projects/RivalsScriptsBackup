//hit_player

//soaking mechanic - applies when hitbox color is hb_color[1]
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[1])
{
	sound_play(asset_get("sfx_waterhit_medium")); 
	hit_player_obj.pastelle_soaked = true;
    hit_player_obj.pastelle_soaked_id = id; 
	hit_player_obj.pastelle_soaked_time = 600;
}

switch (my_hitboxID.attack)
{
	/////////////////////////////////// SOUND LAYERING ///////////////////////////////////
	case AT_DAIR:
		switch(my_hitboxID.hbox_num)
		{
	    	case 1: case 2:
				sound_play(sound_get("fstrong"));
	     		break;
		}
		break;
	case AT_BAIR:
		switch(my_hitboxID.hbox_num)
		{
	     	case 1: sound_play(sound_get("fstrong")); break;
		}
		break;
	//////////////////////////////////////////////////////////////////////////////////////
	case AT_FAIR: //fair hit bounce
		if (window <= 2)
		{
			old_vsp = -5;
    		old_hsp = hsp * 0.25;
		}
		break;
	case AT_NSPECIAL: //funny sword throw + teleport
		if (my_hitboxID.hbox_num == 1 && my_hitboxID.hit_timer <= 0)
		{
			my_hitboxID.hit_timer = my_hitboxID.hit_timer_reset; //timer resets to 5 so it won't hit for 5 frames (also recommended to put in a var in hitbox_init)
			my_hitboxID.hit_times ++; //count up a hit
			my_hitboxID.hitbox_timer -= my_hitboxID.hit_timer; //sets hitbox off by the amount of the hit_timer frames

			//this forces the multihit hitbox to perish after the last hit
			if (my_hitboxID.hit_times == my_hitboxID.hit_limit) my_hitboxID.hitbox_timer = my_hitboxID.length;
			
			//teleport logic
			if (my_hitboxID.hit_times == 1 && hit_player_obj.pastelle_soaked)
			{
				//teleport
				spawn_hit_fx(x, y - char_height / 2, 302);
				x = hit_player_obj.x + (x < hit_player_obj.x ? -8 : 8);
				y = hit_player_obj.y - 8;
				spawn_hit_fx(x, y - char_height / 2, 194);
				vsp = -5;
				set_state(PS_IDLE_AIR);

				//trap enemy
				with (hit_player_obj)
				{
					set_state(PS_WRAPPED);
					pastelle_soaked_time = 0;
					pastelle_soaked = false;
				}
			}
		}
		break;
	case AT_FSPECIAL: //momentum halt on hit
		if (window == 3)
		{
			hsp = 0;
			window = 4;
			window_timer = 0;
		}
		break;
}
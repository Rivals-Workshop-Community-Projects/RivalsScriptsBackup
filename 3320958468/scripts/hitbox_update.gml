//	hitbox_update.gml

vfx_nspecial_trail			= hit_fx_create(sprite_get("vfx_nspecial_trail"), 12);
vfx_nspecial_trail_REAL		= hit_fx_create(sprite_get("vfx_nspecial_trail_REAL"), 12);

vfx_dspec_pguard_trail_1    = hit_fx_create(sprite_get("vfx_dspec_pguard_trail1"), 12);
vfx_dspec_pguard_trail_2    = hit_fx_create(sprite_get("vfx_dspec_pguard_trail2"), 16);

vfx_dspec_pguard_trail_1R   = hit_fx_create(sprite_get("vfx_dspec_pguard_trail1_REAL"), 12);
vfx_dspec_pguard_trail_2R   = hit_fx_create(sprite_get("vfx_dspec_pguard_trail2_REAL"), 16);

//-------------------------------------------------------------------

if (attack == AT_NSPECIAL)
{
    if (hbox_num == 2)
	{
		if (transcendent == true && hitbox_timer > 12)
		{
			transcendent = false;
		}

		//	Crib Roster using Reflectors
		if (variable_instance_exists(self, "reflect_check"))
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
		}
		
		//	Doctor Melee Mario
		if (variable_instance_exists(self, "hit_check"))
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
		}	
		
		if (!was_parried)
		{	
			if (hitbox_timer < length)
			{
				if (hsp > 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var trail_r 		= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail_REAL);
							trail_r.spr_dir 	= 1;
						}
						
						else
						{
							var trail 			= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail);
							trail.spr_dir 		= 1;
						}
					}
				}

				else if (hsp < 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var trail_r 		= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail_REAL);
							trail_r.spr_dir 	= -1;
						}
						
						else
						{
							var trail 			= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail);
							trail.spr_dir 		= -1;
						}
					}
				}
			}
			
			if (hitbox_timer == length)
			{
				spawn_hit_fx(x, y-2, 310);
				sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);	
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

			if (hitbox_timer < 50)
			{
				if (hsp > 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player_id.player ) == 0) 
						{
							var trail_r 		= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail_REAL);
							trail_r.spr_dir 	= 1;
						}
						
						else
						{
							var trail 			= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail);
							trail.spr_dir 		=-1;
						}
					}
				}

				else if (hsp < 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player_id.player ) == 0) 
						{
							var trail_r 		= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail_REAL);
							trail_r.spr_dir 	= -1;
						}
						
						else
						{
							var trail 			= spawn_hit_fx(x-2 * spr_dir, y, player_id.vfx_nspecial_trail);
							trail.spr_dir 		= -1;
						}
					}
				}
			}
			
			if (hitbox_timer == 50)
			{
				spawn_hit_fx(x, y-2, 310);
				sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);	
			}	
		}
	}
}


if (attack == AT_DSPECIAL)
{
    //	Regular Straight Blast
	if (hbox_num == 2)
	{
		if (transcendent == true && hitbox_timer > 12)
		{
			transcendent = false;
		}

		//	Crib Roster using Reflectors
		if (variable_instance_exists(self, "reflect_check"))
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
		}
		
		//	Doctor Melee Mario
		if (variable_instance_exists(self, "hit_check"))
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
		}	
		
		if (!was_parried)
		{	
			if (hitbox_timer < length)
			{
				if (hsp > 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, vfx_dspec_pguard_trail_1R);
							rg_trail.spr_dir 	= 1;
						}
						
						else
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, vfx_dspec_pguard_trail_1);
							rg_trail.spr_dir 	= 1;
						}						
					}
				}

				else if (hsp < 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, vfx_dspec_pguard_trail_1R);
							rg_trail.spr_dir 	= -1;
						}
						
						else
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, vfx_dspec_pguard_trail_1);
							rg_trail.spr_dir 	= -1;
						}
					}
				}
			}
			
			if (hitbox_timer == length)
			{
				spawn_hit_fx(x, y-2, 310);
				sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);	
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

			if (hitbox_timer < length)
			{
				if (hsp > 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player_id.player ) == 0) 
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, player_id.vfx_dspec_pguard_trail_1R);
							rg_trail.spr_dir 	= 1;
						}
						
						else
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, player_id.vfx_dspec_pguard_trail_1);
							rg_trail.spr_dir 	= 1;
						}
					}
				}

				else if (hsp < 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player_id.player ) == 0) 
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, player_id.vfx_dspec_pguard_trail_1R);
							rg_trail.spr_dir 	= -1;
						}
						
						else
						{
							var rg_trail 		= spawn_hit_fx(x-0 * spr_dir, y, player_id.vfx_dspec_pguard_trail_1);
							rg_trail.spr_dir 	= -1;
						}
					}
				}
			}
			
			if (hitbox_timer == length)
			{
				spawn_hit_fx(x, y-2, 310);
				sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);	
			}	
		}
	}

	//	Angle Blast
	if (hbox_num == 3)
	{
		if (transcendent == true && hitbox_timer > 12)
		{
			transcendent = false;
		}

		//	Crib Roster using Reflectors
		if (variable_instance_exists(self, "reflect_check"))
		{	
			destroyed 		= true;
			spawn_hit_fx(x, y-2, 310);
			sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);		
		}
		
		//	Doctor Melee Mario
		if (variable_instance_exists(self, "hit_check"))
		{	
			destroyed 		= true;
			spawn_hit_fx(x, y-2, 310);
			sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);			
		}	
		
		if (!was_parried)
		{	
			if (hitbox_timer < length)
			{
				if (hsp > 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var angle_trail 		= spawn_hit_fx(x+9 * spr_dir, y-14, vfx_dspec_pguard_trail_2R);
							angle_trail.spr_dir 	= 1;
						}
						
						else
						{
							var angle_trail 		= spawn_hit_fx(x+9 * spr_dir, y-14, vfx_dspec_pguard_trail_2);
							angle_trail.spr_dir 	= 1;
						}						
					}
				}

				else if (hsp < 0)
				{
					if (get_gameplay_time() mod 3 == 0)
					{
						if (get_player_color( player ) == 0) 
						{
							var angle_trail 		= spawn_hit_fx(x+9 * spr_dir, y-14, vfx_dspec_pguard_trail_2R);
							angle_trail.spr_dir 	= -1;
						}
						
						else
						{
							var angle_trail 		= spawn_hit_fx(x+9 * spr_dir, y-14, vfx_dspec_pguard_trail_2);
							angle_trail.spr_dir 	= -1;
						}
					}
				}
			}
			
			if (hitbox_timer == length)
			{
				spawn_hit_fx(x, y-2, 310);
				sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);	
			}	
		}
		
		if (was_parried)
		{					
			destroyed 		= true;
			spawn_hit_fx(x, y-2, 310);
			sound_play(asset_get("sfx_absa_orb_miss"), false, noone, 0.35);					
		}
	}
}
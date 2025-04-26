//	hitplayer.gml

if (my_hitboxID.attack == AT_DTILT)
{
	energy_meter+= 2;
}

if (my_hitboxID.type == 2)
{
	energy_meter+= 0;
}

else
{
	energy_meter+= 5;
}

if (energy_meter > 100) 
{ 
	energy_meter = 100;
}

if (my_hitboxID.attack == AT_JAB)
{
	if (my_hitboxID.hbox_num == 1)
	{
		old_hsp = 0;
		
		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.75);
	}
	
	if (my_hitboxID.hbox_num == 2)
	{		
		sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.75);
	}
	
	if (my_hitboxID.hbox_num == 3)
	{		
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.75);
	}
}

if (my_hitboxID.attack == AT_FTILT)
{	
	if (my_hitboxID.hbox_num == 1)
	{		
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.10);
	}
}

if (my_hitboxID.attack == AT_DTILT)
{	
	if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || 
	my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6)
	{		
		sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.50);
	}
}

if (my_hitboxID.attack == AT_DATTACK)
{
	if (my_hitboxID.hbox_num == 1)
	{		
		sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.40);
	}
}

if (my_hitboxID.attack == AT_FSTRONG)
{
	if (muted)
	{
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(asset_get("sfx_mol_flash_explode"), false, noone, 2);
			sound_play(asset_get("sfx_mol_huge_explode"), false, noone, 2, 0.75);
		}
	}
	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(asset_get("sfx_mol_flash_explode"), false, noone, 1.25);
			
			var smash_bash = random_func(0, 6, true);		
			switch(smash_bash) 
			{
				case 0:
				sound_play(sound_get("explosion 1"), false, noone, 2);
				break;
				
				case 1:
				sound_play(sound_get("explosion 2"), false, noone, 2);
				break;
					
				case 2:
				sound_play(sound_get("explosion 3"), false, noone, 2);
				break;
					
				case 3:
				sound_play(sound_get("explosion 4"), false, noone, 2);
				break;

				case 4:
				sound_play(sound_get("explosion 5"), false, noone, 2);
				break;
					
				case 5:
				sound_play(asset_get("explosion 6"), false, noone, 2);
				break;			
			}
		}
	}
}

if (my_hitboxID.attack == AT_USTRONG)
{
	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 1);
}

if (my_hitboxID.attack == AT_DSTRONG)
{
	sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.80);
}

if (my_hitboxID.attack == AT_NAIR)
{
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
	{
		old_vsp = -0.8;
		
		sound_play(sound_get("jab 2"), false, noone, 0.75);
	}
	
	if (my_hitboxID.hbox_num == 3)
	{		
		sound_play(sound_get("jab 3"), false, noone, 0.75);
	}
}

if (my_hitboxID.attack == AT_UAIR)
{	
	sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.60);
}

if (my_hitboxID.attack == AT_FAIR) 
{	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 2)
		{		
			var spike1 = random_func(0, 6, true);		
			switch(spike1) 
			{
				case 0:
				sound_play(sound_get("spike 1"), false, noone, 1.25);
				break;
				
				case 1:
				sound_play(sound_get("spike 2"), false, noone, 1.25);
				break;
					
				case 2:
				sound_play(sound_get("spike 3"), false, noone, 1.25);
				break;
					
				case 3:
				sound_play(sound_get("spike 4"), false, noone, 1.25);
				break;

				case 4:
				sound_play(sound_get("spike 5"), false, noone, 1.25);
				break;

				case 5:
				sound_play(sound_get("sfx_meteor"), false, noone, 0.75);
				break;				
			}
		}
	}
}

if (my_hitboxID.attack == AT_BAIR) 
{	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 2)
		{		
			var spike2 = random_func(0, 6, true);		
			switch(spike2) 
			{
				case 0:
				sound_play(sound_get("spike 1"), false, noone, 1.25);
				break;
				
				case 1:
				sound_play(sound_get("spike 2"), false, noone, 1.25);
				break;
					
				case 2:
				sound_play(sound_get("spike 3"), false, noone, 1.25);
				break;
					
				case 3:
				sound_play(sound_get("spike 4"), false, noone, 1.25);
				break;

				case 4:
				sound_play(sound_get("spike 5"), false, noone, 1.25);
				break;

				case 5:
				sound_play(sound_get("sfx_meteor"), false, noone, 0.75);
				break;	
			}
		}
	}
}

if (my_hitboxID.attack == AT_DAIR) 
{	
	if (my_hitboxID.hbox_num == 1)
	{
		destroy_hitboxes();
		
		window = 5;
		window_timer = 0;
		
		old_hsp = 4 * spr_dir;
		old_vsp = -9;
		
		move_cooldown[AT_DAIR] 	= 26;
		move_cooldown[AT_DTILT] = 26;		//	Rune mayhem
		
		if (!muted)
		{
			var spike3 = random_func(0, 6, true);		
			switch(spike3) 
			{
				case 0:
				sound_play(sound_get("spike 1"), false, noone, 1.25);
				break;
				
				case 1:
				sound_play(sound_get("spike 2"), false, noone, 1.25);
				break;
					
				case 2:
				sound_play(sound_get("spike 3"), false, noone, 1.25);
				break;
					
				case 3:
				sound_play(sound_get("spike 4"), false, noone, 1.25);
				break;

				case 4:
				sound_play(sound_get("spike 5"), false, noone, 1.25);
				break;

				case 5:
				sound_play(sound_get("sfx_meteor"), false, noone, 0.75);
				break;		
			}
		}
	}
}

if (my_hitboxID.attack == AT_NSPECIAL_2) 
{	
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
	{
		sound_play(sound_get("N special ball"), false, noone, 0.80);
	}
}

if (my_hitboxID.attack == AT_USPECIAL) 
{	
	if (my_hitboxID.hbox_num == 1)
	{
		set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
	}
}

if (my_hitboxID.attack == AT_DSPECIAL) 
{	
	if (my_hitboxID.hbox_num == 1)
	{
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 11);
		
		old_hsp = 0;
		
		window = 5;
		window_timer = 0;
		
		destroy_hitboxes();
	}
}

if (my_hitboxID.attack == AT_DSPECIAL_2)
{
	grabbed_player_obj = hit_player_obj;
	
	if (my_hitboxID.hbox_num == 8)
	{		
		sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.80);
		
		if (!muted)
		{
			var smash_bash2 = random_func(0, 6, true);		
			switch(smash_bash2) 
			{
				case 0:
				sound_play(sound_get("explosion 1"), false, noone, 2);
				break;
				
				case 1:
				sound_play(sound_get("explosion 2"), false, noone, 2);
				break;
					
				case 2:
				sound_play(sound_get("explosion 3"), false, noone, 2);
				break;
					
				case 3:
				sound_play(sound_get("explosion 4"), false, noone, 2);
				break;

				case 4:
				sound_play(sound_get("explosion 5"), false, noone, 2);
				break;
					
				case 5:
				sound_play(asset_get("explosion 6"), false, noone, 2);
				break;			
			}
		}
	}
}
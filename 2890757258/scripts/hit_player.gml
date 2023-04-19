//	hit_player.gml

if (my_hitboxID.type == 2)
{
	magic_meter+= 0;
}

else
{
	magic_meter+= 5;
}

if (magic_meter > 100) 
{ 
	magic_meter = 100;
}

if (my_hitboxID.attack == AT_JAB)
{
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
	{
		old_hsp = 0;
	}
}

if (my_hitboxID.attack == AT_UTILT)
{
	sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.80);
}

if (my_hitboxID.attack == AT_FTILT)
{
	if (my_hitboxID.hbox_num == 1)
	{
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.50);
	}
}

if (my_hitboxID.attack == AT_DTILT)
{
	if (my_hitboxID.hbox_num == 1)
	{
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.50);
	}
}

if (my_hitboxID.attack == AT_DATTACK)
{
	if (window == 2)
	{
		destroy_hitboxes();
		window 			= 6;
		window_timer 	= 0;
	}
}

if (my_hitboxID.attack == AT_USTRONG)
{
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4)
	{
		sound_play(asset_get("sfx_mol_huge_explode"), false, noone, 0.70);
		sound_play(asset_get("sfx_mol_flare_explode"), false, noone, 0.40);
	}
}

if (my_hitboxID.attack == AT_UAIR)
{	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 7)
		{
			sound_play(sound_get("sfx_meteor"), false, noone, 0.80);
		}
	}
}

if (my_hitboxID.attack == AT_FAIR)
{
	if (my_hitboxID.hbox_num == 1)
	{
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.50);
	}
}

if (my_hitboxID.attack == AT_DAIR)
{	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(sound_get("sfx_meteor"), false, noone, 0.80);
		}
	}
	
	if (my_hitboxID.hbox_num == 2)
	{
		sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.08);
	}
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR)
{	
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(sound_get("sfx_meteor"), false, noone, 0.80);
		}
	}
}
//	hit_player.gml

if (my_hitboxID.attack == AT_JAB)
{
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 1)
		{
			sound_play(sfx_ray_punch1, false, noone, 0.65);
		}
		
		if (my_hitboxID.hbox_num == 2)
		{
			sound_play(sfx_ray_punch2, false, noone, 0.65);
		}

		if (my_hitboxID.hbox_num == 3)
		{
			sound_play(sfx_ray_punch1, false, noone, 0.65);
			sound_play(sfx_ray_punch2, false, noone, 0.70);
		}
	}
}

if (my_hitboxID.attack == AT_USTRONG)
{
	if (!muted)
	sound_play(sfx_ray_strongpunch1, false, noone, 0.65);
}

if (my_hitboxID.attack == AT_FSTRONG)
{
	if (!muted)
	sound_play(sfx_ray_strongpunch2, false, noone, 0.65);
}

if (my_hitboxID.attack == AT_DSTRONG)
{
	if (!muted)
	{
		if (my_hitboxID.hbox_num == 1)
		sound_play(sfx_ray_strongpunch3, false, noone, 0.75);
	}
}

if (my_hitboxID.attack == AT_FAIR)
{
	if (my_hitboxID.hbox_num == 1)
	{		
		if (!muted)
		sound_play(sound_get("sfx_meteor"), false, noone, 0.80);
	}
}

if (my_hitboxID.attack == AT_BAIR)
{
	if (my_hitboxID.hbox_num == 1)
	{		
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.50);
	}
}

if (my_hitboxID.attack == AT_DAIR)
{
	old_vsp -= 1.50;
}

if (my_hitboxID.attack == AT_FSPECIAL) 
{	
	if (my_hitboxID.hbox_num == 1 && !hit_player_obj.super_armor) 
	{
		hit_player_obj.should_make_shockwave = false;
		
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
		(hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) 
		&& was_parried == false && hit_player_obj.clone == false) 
		{		
			if (!instance_exists(grapple_grab)) 
			{ 
				grapple_grab = hit_player_obj; 
			}
		}
	}
} 
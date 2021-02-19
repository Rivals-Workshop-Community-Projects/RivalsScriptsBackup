if (o_copyplayer == noone)
{
uspec_timer = uspec_timer_max;

if (my_hitboxID.attack == AT_EXTRA_3 && my_hitboxID.hbox_num == 3)
{
	if (my_hitboxID.vsp < 20)
	{
		hit_player_obj.y = 0;
		with (hit_player_obj)
		{
			if (get_player_damage( player ) < 300) // kills at 300
				vsp = 0;
		}
	}
	else
	{
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = 0;
		if (hit_player_obj.state != PS_RESPAWN)
		{
			with (hit_player_obj)
			{
				set_state(PS_HITSTUN);
			}
		}
	}
}

if (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG)
{
	if (my_hitboxID.hbox_num == 1 && move_cooldown[AT_UAIR])
		techdone[16] = true;
}

if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1)
{
	hit_player_obj.old_hsp = 0;
}


if (my_hitboxID.attack == AT_DAIR)
{
	if (my_hitboxID.hbox_num == 4)
		sound_play(muted?asset_get("sfx_blow_heavy2"):sound_get("meteor"));
	else
		hit_player_obj.should_make_shockwave = false;
}

if (my_hitboxID.attack == AT_FSPECIAL)
{
	if (my_hitboxID.hbox_num == 2)
	{
		techdone[7] = true;
		if (taunt_down) sound_play(sound_get("sfx_taunt"));
	}
}

if (my_hitboxID.attack == AT_FAIR)
{
	if (my_hitboxID.hbox_num == 10)
		sound_play(muted?asset_get("sfx_blow_heavy2"):sound_get("meteor"));
	else if (my_hitboxID.hbox_num == 2)
		hit_player_obj.old_hsp = hsp * 1.1;
}

if (my_hitboxID.attack == AT_NAIR)
{
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
		hit_player_obj.old_hsp = hsp * 1.1;
}

if (my_hitboxID.attack == AT_JAB && !hit_player_obj.free)
{
	if (my_hitboxID.hbox_num = 1 && abs(hit_player_obj.x-(x + spr_dir * 60))<50) hit_player_obj.x = x + spr_dir * 60;
	if (my_hitboxID.hbox_num = 2 && abs(hit_player_obj.x-(x + spr_dir * 36))<50) hit_player_obj.x = x + spr_dir * 36;
}

if (attack != AT_TAUNT_2)
	zawarudotime = 0;

if ("yeetimebreak2" in hit_player_obj && "shiver" in hit_player_obj)
{
	hit_player_obj.yeetimebreak2 = false;
	hit_player_obj.shiver = false;
	if(((my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 && my_hitboxID.hit_effect_y == -100)		// if (fakie strong or fspec or charged jab 3)
	|| (my_hitboxID.attack == AT_USTRONG && /*my_hitboxID.hbox_num == 1 &&*/ my_hitboxID.hit_effect_y == -100)
	|| (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num <= 3 && my_hitboxID.hit_effect_y == -100)
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hit_effect_y == -100)
	|| (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 && strong_charge >= 170))
	)
	{
		hit_player_obj.checktimebreak = player;
	}
	if ((my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3 && my_hitboxID.hit_effect_y == -100) // Time Stop for nspec and uspec
	|| (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hit_effect_y == -100)
	|| (my_hitboxID.attack == AT_USPECIAL))
	{
		hit_player_obj.yeetimebreak2 = true;
		if (my_hitboxID.attack == AT_FSPECIAL)
		{
			hit_player_obj.hitstop_full *= 3;
			hit_player_obj.hitstop *= 3;
			hit_player_obj.checktimebreak = 0;
		}
		else if (my_hitboxID.attack == AT_USPECIAL)
		{
			hit_player_obj.orig_knock = 0;
		}
		sound_play(sound_get("time"));
		hit_player_obj.shiver = true;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL)
{
	if (my_hitboxID.hbox_num == 3)
		hit_player_obj.shiver = true;
}

with (asset_get("hit_fx_obj"))
{
	if (hit_fx == other.fire_effect
	|| hit_fx == other.curse_effect)
	{
		spr_dir = 1;
		depth = -100;
	}
	else if (hit_fx == other.burst_effect
	|| hit_fx == other.bash_effect
	|| hit_fx == other.flash_effect)
	{
		depth = -100;
	}
}

}
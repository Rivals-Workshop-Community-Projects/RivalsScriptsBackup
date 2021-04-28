// hit effect depth
with (asset_get("hit_fx_obj"))
{
	if (hit_fx == other.smallstar_effect
	|| hit_fx == other.bigstar_effect)
	{
		depth = -10;
	}
}

// star count
var noOfStars = 0;
with(asset_get("obj_article1")) if (player_id == other.id && state == 1)
{
	noOfStars += isBig+1;
}

if((my_hitboxID.attack == AT_FSTRONG
|| my_hitboxID.attack == AT_USTRONG
|| my_hitboxID.attack == AT_DSTRONG
|| (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num <= 2))
&& !hit_player_obj.clone
&& noOfStars > 0
)
{
	with(asset_get("obj_article1")) if (player_id == other.id && state == 1)
	{
		constellationTime = other.hit_player_obj.hitstop_full+32;
		newState = 3;
	}
    tutDone[0] = true;
	sound_play(sound_get("constellation"));
	shake_camera(8*min(noOfStars, 10), 2*min(noOfStars, 10));
	
	switch (my_hitboxID.attack)
	{
		case AT_UAIR:
			if (upThrow > 0) tutDoneAdv[0] = true;
			break;
	}
}
else
{
	switch (my_hitboxID.attack)
	{
		case AT_DAIR:
			dairTimes++;
			break;
		case AT_NSPECIAL:
			if (nspecCharge >= 6)
			{
				hitstop = 0;
				hit_player_obj.hitstop = 8;
			}
			break;
		case AT_FSPECIAL:
			if (upThrow > 0) tutDoneAdv[2] = true;
			break;
		case AT_FSPECIAL_2:
			if (my_hitboxID.hbox_num == 1)
			{
				if (djumps >= 1)
				{
					--djumps;
					grabDjump = false;
				}
				upThrow = 100;
			}
			break;
	}
	if (!(my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1) &&
		!(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num >= 2) &&
		!(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) &&
		!(my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) &&
		(my_hitboxID.attack != AT_DAIR || dairTimes < 2))
	{
		if (my_hitboxID.attack == AT_NSPECIAL)
			SpawnStar(18);
		else
			SpawnStar(8);
	}
}

#define SpawnStar(_startupTime)
{
	var star = instance_create(my_hitboxID.x,my_hitboxID.y,"obj_article1");
	star.hsp = hit_player_obj.old_hsp*0.5;
	star.vsp = hit_player_obj.old_vsp*0.5;
	star.startupTime = _startupTime;
}
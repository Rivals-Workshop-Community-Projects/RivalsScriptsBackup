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
with (asset_get("obj_article1")) if (player_id == other.id && state == 1)
{
	noOfStars += isBig+1;
}

if (my_hitboxID.attack != AT_USPECIAL && uspecHit > 0) tutDoneAdv[3] = true;

switch (my_hitboxID.attack)
{
	case AT_DAIR:
		dairTimes++;
		if (my_hitboxID.hbox_num < 11)
			hit_player_obj.should_make_shockwave = false;
		break;
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 1)
		{
			if (nspecCharge >= 6)
			{
				hitstop = 0;
				hit_player_obj.hitstop = 8;
			}
			if (aura && get_player_damage(hit_player_obj.player) >= 150)
			{
				hit_player_obj.hitstop = 60;
				set_attack(49);
			}
		}
		else if ("ownerArticle" in my_hitboxID && instance_exists(my_hitboxID.ownerArticle))
		{
			my_hitboxID.ownerArticle.hitArray = my_hitboxID.can_hit;
		}
		break;
	case AT_USPECIAL:
		uspecHit = 28;
		break;
	case AT_FSPECIAL:
		if (upThrow > 0) tutDoneAdv[2] = true;
		break;
	case AT_FSPECIAL_2:
		if (my_hitboxID.hbox_num == 1)
		{
			if (grabDjump && djumps >= 1)
			{
				--djumps;
				grabDjump = false;
			}
			upThrow = 100;
		}
		break;
}

if((my_hitboxID.attack == AT_FSTRONG
|| my_hitboxID.attack == AT_USTRONG
|| my_hitboxID.attack == AT_DSTRONG)
|| (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num <= 2)
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
	//shake_camera(8*min(noOfStars, 10), 2*min(noOfStars, 10));
	
	switch (my_hitboxID.attack)
	{
		case AT_UAIR:
			if (upThrow > 0) tutDoneAdv[0] = true;
			break;
	}
}
else
{
	if (!(my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 1) &&
		!(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num >= 2) &&
		!(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) &&
		!(my_hitboxID.attack == 49) &&
		(my_hitboxID.attack != AT_DAIR || dairTimes < 2))
	{
		SpawnStar((my_hitboxID.attack == AT_NSPECIAL||my_hitboxID.attack == AT_USPECIAL_2)?24:8, (my_hitboxID.attack == AT_FSPECIAL_2) + 1);
	}
}

if (aura)
{
	hitstop = floor(hitstop/2);
	hitstop_full = hitstop;
}

#define SpawnStar(_startupTime, _numRepeat)
{
	repeat (_numRepeat)
	{
		var star = instance_create(my_hitboxID.x,my_hitboxID.y,"obj_article1");
		star.hsp = hit_player_obj.old_hsp*0.5;
		star.vsp = hit_player_obj.old_vsp*0.5;
		star.startupTime = _startupTime;
		if (aura && hit_player_obj.should_make_shockwave)
		{
			star.newState = 5;
			star.replacedCount = 2;
		}
	}
}
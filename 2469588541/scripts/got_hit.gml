if (canDespawn)
{
	//with (asset_get("obj_article1")) if (player_id == other.id && state == 1 && cracked) isDespawn = true; // despawn cracked stars
	repeat(2)
	{
		var star = GetFarthestStar();
		if (star != noone)
		{
			star.isDespawn = true;
			canDespawn = false;
		}
	}
}

if ("temp_level" in self && temp_level != 0 && "temp_level" in hit_player_obj && hit_player_obj.temp_level != 0 && aura && get_char_info(hit_player_obj.player,INFO_STR_DESCRIPTION)!="@FakieAcidToe")
{
	hit_player_obj.was_parried = true;
	old_hsp = hsp;
	old_vsp = vsp;
	orig_knock = 0;
}

#define GetFarthestStar()
{
	var star = noone;
	var starDist = -1;
	with (asset_get("obj_article1")) if (player_id == other.id && state == 1 && !isDespawn)
	{
		var len = point_distance(x, y, other.x, other.y-floor(other.char_height/2));
		if (star == noone || starDist < len)
		{
			star = self;
			starDist = len;
		}
	}
	return star;
}
if (canDespawn)
{
	//with (asset_get("obj_article1")) if (player_id == other.id && state == 1 && cracked) isDespawn = true; // despawn cracked stars
	var star = GetFarthestStar();
	if (star != noone)
	{
		star.isDespawn = true;
		canDespawn = false;
	}
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
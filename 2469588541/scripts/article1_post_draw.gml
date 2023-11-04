// postdraw
if ("state" in self)
{
	if (state == 3)
	{
		shader_end();
		DrawStarLine(GetClosestStar(0))
		DrawStarLine(GetClosestStar(1))
		if (randomIndex == 0) DrawStarLine(GetFarthestStar())
		with (asset_get("obj_article1")) if (player_id == other.player_id)
			draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
	}
}

#define DrawStarLine(_star)
{
	if (_star != -4) DrawLineStar(x, y, _star.x, _star.y);
}

#define GetClosestStar(_isSecondClosest)
{
	var star = -4;
	var tempDist = -1;
	with (asset_get("obj_article1")) if (player_id == other.player_id && other != self && state == 3 && (!_isSecondClosest || closestStarMem != self))
	{
		var currDist = point_distance(x, y, other.x, other.y);
		if (tempDist == -1 || currDist < tempDist)
		{
			star = self;
			tempDist = currDist;
		}
	}
	if (!_isSecondClosest && star != -4) closestStarMem = star;
	return star;
}

#define GetFarthestStar()
{
	var star = -4;
	var tempDist = 0;
	with (asset_get("obj_article1")) if (player_id == other.player_id && other != self && state == 3)
	{
		var currDist = point_distance(x, y, other.x, other.y);
		if (currDist > tempDist)
		{
			star = self;
			tempDist = currDist;
		}
	}
	return star;
}

#define DrawLineStar(_x, _y, _x2, _y2)
{
	for (var i = 0; i < array_length(constelCol); ++i) draw_line_width_colour(_x, _y, _x2, _y2, (array_length(constelCol)-i)*4-2, constelCol[i], constelCol[i]);
}
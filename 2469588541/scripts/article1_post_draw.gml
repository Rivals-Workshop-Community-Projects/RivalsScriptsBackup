// postdraw
if ("state" in self)
{
	if (state == 3)
	{
		DrawStarLine(GetClosestStar(0))
		DrawStarLine(GetClosestStar(1))
		if (randomIndex == 0) DrawStarLine(GetFartestStar())
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
	with (asset_get("obj_article1")) if (player_id == other.player_id && other != self && (!_isSecondClosest || closestStarMem != self))
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

#define GetFartestStar()
{
	var star = -4;
	var tempDist = 0;
	with (asset_get("obj_article1")) if (player_id == other.player_id && other != self)
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
	if (get_player_color(player) == 7)
	{
		DrawLine(_x, _y, _x2, _y2, 5, GetColourPlayer(1));
		DrawLine(_x, _y, _x2, _y2, 3, GetColourPlayer(2));
		DrawLine(_x, _y, _x2, _y2, 1, c_white);
	}
	else
	{
		DrawLine(_x, _y, _x2, _y2, 3, c_white);
		DrawLine(_x, _y, _x2, _y2, 1, GetColourPlayer(3));
	}
}

#define DrawLine(_x, _y, _x2, _y2, _offsetWidth, _colour)
{
	var dir = point_direction(_x, _y, _x2, _y2);
	var offsetX = lengthdir_x(_offsetWidth, dir+90);
	var offsetY = lengthdir_y(_offsetWidth, dir+90);
	draw_rectangle(_x+offsetX, _y+offsetY, _x-offsetX, _y-offsetY, _x2+offsetX, _y2+offsetY, _x2-offsetX, _y2-offsetY, _colour, _colour);
}

#define draw_rectangle(x1, y1, x2, y2, x3, y3, x4, y4, colour1, colour2)
{
	draw_triangle_colour(x1, y1, x2, y2, x3, y3, colour1, colour1, colour2, false);
	draw_triangle_colour(x2, y2, x3, y3, x4, y4, colour1, colour2, colour2, false);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}

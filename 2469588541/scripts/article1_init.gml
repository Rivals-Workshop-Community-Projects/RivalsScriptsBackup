sprite_index = sprite_get("star2");
image_index = 0;
spr_dir = 1;
uses_shader = true;
depth = -5;
image_xscale = 2;
image_yscale = 2;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 6;

can_be_grounded = false;
ignores_walls = false;

isDespawn = false;
dieTime = 0;

startupTime = 8;
constellationTime = 0;
isBig = has_rune("H");
bigStartup = 60;
checkMerge = false;
cracked = false;
crackedTimer = 0;
crackedMax = 69;
hitArray = 0;

old_hsp = 0;
old_vsp = 0;

randomIndex = random_func(0, 3, 1);
closestStarMem = -4;

maxArticles = 7;
replacedCount = 0;

var i = 0;
with (asset_get("obj_article1")) if (player_id == other.player_id)
{
	i += isBig+1;
	replacedCount = i;
}

if (!has_rune("M"))
{
	KillStar(NoOfStars(), 1);
}

#define KillStar(_noOfStars, _cracked)
{
	var noOfStars = _noOfStars;
	var deletedSmth = false;
	var farthestStar = GetFarthestStar();
	if (farthestStar == noone) return;
	with (farthestStar)
	{
		if (noOfStars > maxArticles && (!_cracked||cracked))
		{
			isDespawn = true;
			deletedSmth = true;
			--noOfStars;
		}
	}
	if (noOfStars > maxArticles) KillStar(noOfStars, deletedSmth);
}

#define NoOfStars()
{
	var i = 0;
	with (asset_get("obj_article1")) if (player_id == other.player_id && !isDespawn && state != 2) i += isBig+1;
	return i;
}

#define GetFarthestStar()
{
	var star = noone;
	var starDist = -1;
	with (asset_get("obj_article1")) if (player_id == other.player_id && state == 1 && !isDespawn)
	{
		var len = point_distance(x, y, player_id.x, player_id.y-floor(player_id.char_height/2));
		if (star == noone || starDist < len)
		{
			star = self;
			starDist = len;
		}
	}
	return star;
}
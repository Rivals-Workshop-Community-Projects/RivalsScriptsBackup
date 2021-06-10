sprite_index = sprite_get("star2");
image_index = 0;
spr_dir = 1;
uses_shader = true;
depth = -5;
//image_xscale = 2;
//image_yscale = 2;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = false;
ignores_walls = false;

isDespawn = false;
dieTime = 0;

startupTime = 8;
constellationTime = 0;
isBig = has_rune("H");
checkMerge = false;
cracked = false;
crackedTimer = 0;
crackedMax = 35;

randomIndex = random_func(0, 3, 1);
closestStarMem = -4;

maxArticles = 7;
replacedCount = 0;

if (!has_rune("M"))
{
    KillStar(NoOfStars(), 1);
}

#define KillStar(_noOfStars, _cracked)
{
    var i = 0;
    var noOfStars = _noOfStars;
    var deletedSmth = false;
    with (asset_get("obj_article1")) if (player_id == other.player_id && !isDespawn && state != 2)
    {
        i += isBig+1;
	    replacedCount = i;
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
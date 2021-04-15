 if instance_exists(bowserjr) {
     bowserjr.setDestroy = 1;
     bowserjr = noone;
     spawnedBowser = false;
 }

with (obj_article2)
{
    if (player_id = other.id && state >= 3) 
    {
        with player_id
        {
            spawn_hit_fx( other.x-14, other.y-14, paneldsp);
        }
        should_destroy = true;
    }
}

with (obj_article1)
{
    if (player_id = other.id && sprite_index == sprite_get("treasure_chest")) 
    {
        setDestroy = 1;
    }
}

panelstate = 0;
paneldecided = 5;
totalcoins = 0;
paneltimer = 0;
paneltimercountdown = false;
paneltimer_reset = 10;

doublepowerboost = false;
doublepowerboostusedup = false;
exjumps = 0;
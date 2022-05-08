if (get_gameplay_time() mod 12 = 0)
{
    image_index += 1;
}

with(pHitBox)
{
    if (place_meeting(x, y, other))
    {
        if (player_id != other.player_id)
        {
            if (type == 1)
            other.player_id.stopwatch.destroy = 1;
        }  
    }
}

if (destroy == 1)
{
    if (sound = 1)
    {
        var hit = spawn_hit_fx(x, y, 301)
        hit.pause = 8;
        sound_play(asset_get("sfx_shovel_hit_light2"));
        sound = 0;
    }
    with(pHitBox)
    {
        if (player_id == other.player_id)
        {
            if (type == 2)
            {
                if (frozen == 1 )
                destroyed = 1;
            }
        }
    }
    destroy = 0;
}
//print("Unfreeze: " + string(unfreeze));
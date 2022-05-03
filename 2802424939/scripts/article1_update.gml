if (get_gameplay_time() mod 12 = 0)
{
    image_index += 1;
}
with (pHurtBox) {
    if (place_meeting(x, y, other)) {
        if ((playerID.state == PS_HITSTUN || playerID.state == PS_HITSTUN_LAND || playerID.state == PS_TUMBLE) and (playerID.hitpause = false) and (playerID.state_cat != SC_GROUND_COMMITTED and playerID.state_cat != SC_GROUND_NEUTRAL and playerID.invincible == false) and player != other.player)
        {
            other.unfreeze = 1;
        }
    }
}

with(pHitBox)
{
    if (place_meeting(x, y, other))
    {
        if (player_id != other.player_id)
        {
            other.destroy = 1;
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
if (cooldown == 0)
{
    anim_time++;
    if (anim_time mod 12 = 0)
    {
        image_index += 1;
    }
    sprite_index = sprite_get("stopwatch");
}
else if (cooldown == 1)
{
    sprite_index = sprite_get("stopwatch_gray");
    cooldown_timer++;
}
if (cooldown_timer >= 120)
{
    dead = 1;
}
with(pHitBox)
{
    if (place_meeting(x, y, other))
    {
        if (player_id != other.player_id)
        {
            if (hit_priority != 0)
            {
                if (other.cooldown == 0)
                {
                    other.sound = 1;
                    other.disable = 1;
                    other.cooldown = 1;
                    other.player_id.stopwatch.cooldown = 1;
                    other.player_id.move_cooldown[AT_DSPECIAL_2] = 120;
                }
            }
        } 
    }
}

if (disable == 1)
{
    if (sound = 1)
    {
        var hit = spawn_hit_fx(x + 4, y, 301)
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
    disable = 0;
}

if (dead == 1)
{
    instance_destroy();
    exit;
}
//print("Unfreeze: " + string(unfreeze));
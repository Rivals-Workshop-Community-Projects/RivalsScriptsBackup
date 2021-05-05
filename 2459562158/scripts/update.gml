//update

//print(fast_fall)

switch(state)
{
    case PS_LANDING_LAG:
        sound_stop(asset_get("sfx_shovel_swing_heavy1"))
    break;
}


if (!free)
{
    my_plat = ds_list_create();
    with(obj_article_platform)
    {
        if (player_id == other)
        {
            ds_list_add(other.my_plat,self);
        }
    }
    
    var list_size = ds_list_size(my_plat)
    var plat_found = 0;
    
    if (list_size != 0)
    {
        for (var i = 0; i < list_size; i += 1)
        {
            if (collision_rectangle(x - 10,y - 4,x + 10, y + 4,my_plat[|i],false,true))
            {
                plat_found += 1;
            }
        }
        
        if (!plat_found)
        {
            can_uspe = true;
        }
    }
    else
    {
        can_uspe = true;
    }
    
}


if (inside_water)
{
    fast_fall = 6;
}
else
{
    fast_fall = fast_fall_ref;
}


switch(state)
{
    case PS_WAVELAND:
        if (state_timer == 1)
        {
            sound_stop(asset_get("sfx_quick_dodge"))
        }
    break;
}

// RUNE A
if (has_rune("A"))
{
    if !((state == PS_AIR_DODGE) or (state == PS_ROLL_BACKWARD) or (state == PS_ROLL_FORWARD) or (state == PS_TECH_FORWARD) or (state == PS_TECH_BACKWARD))
    {
        hurtboxID.sprite_index = sprite_get("small_hurtbox");
    }
    else
    {
        hurtboxID.sprite_index = sprite_get("nothing");
    }
}










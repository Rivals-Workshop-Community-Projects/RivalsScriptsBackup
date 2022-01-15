//hitbox_update
if (attack == AT_FSPECIAL)
{  
    if (hbox_num == 1)
    {
        if (color == 7)
        {
            sprite_index = sprite_get("shrimp_ea")
        }
        
        if (y > room_height + 50)
        {
            destroyed = 1;
        }
    }
}

if (attack == AT_USTRONG)
{
    if (color == 7)
    {
        sprite_index = sprite_get("fish_ea")
    }
    if (hbox_num == 1)
    {
        if (free == false and place_meeting(x, y, asset_get("par_block")))
        {
            sound_play(asset_get("sfx_waterhit_weak"));
            destroyed = 1;
        }
    }
}
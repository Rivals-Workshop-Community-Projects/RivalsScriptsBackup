//hitbox_update
if (attack == AT_FSPECIAL)
{  
    if (hbox_num == 1)
    {
        if (color == 7)
        {
            sprite_index = sprite_get("bloop_ea")
        }
        
        if (instance_exists(player_id.bubbleg))
        {
            if (place_meeting(x,y, player_id.bubbleg) and player_id.bubbleg.bloop == 0 and player_id.bubbleg.state != 9 and player_id.bubbleg.countdown != 0)
            {
                player_id.bubbleg.bloop = 1;
            }
        }
        if (free == false or y > room_height + 50)
        {
            destroyed = 1;
        }
    }
    else if (hbox_num == 2)
    {
        if (hitbox_timer == 1)
        player_id.fish = 1;
        if (color == 7)
        {
            sprite_index = sprite_get("bloop_pop_ea")
        }
        if (y > room_height + 50)
        {
            destroyed = 1;
        }
        
        if (destroyed)
        {
            player_id.fish = 0;
        }
    }
    else if (hbox_num == 3)
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
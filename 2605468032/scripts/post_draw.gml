//post-draw
if(instance_exists(bubbleg))
{
    if instance_exists(bubbleg.bubbled_playerid)
    {
        if (bubbleg.bubbled_playerid = self and bubbleg.state != 9)
        {
            if (get_player_color(player) == 7)
            {
                draw_sprite_ext(sprite_get("player_outline"), bubbleg.anim, bubbleg.x, bubbleg.y, 1, 1, 0, bubbleg.col, 1);
                draw_sprite_ext(sprite_get("bubble_ea"), bubbleg.anim, bubbleg.x, bubbleg.y, 1, 1, 0, -1, 0.5);
                draw_sprite(sprite_get("bubble_outline_ea"), bubbleg.anim, bubbleg.x, bubbleg.y);    
            }
            else
            {
                draw_sprite_ext(sprite_get("player_outline"), bubbleg.anim, bubbleg.x, bubbleg.y, 1, 1, 0, bubbleg.col, 1);
                draw_sprite_ext(sprite_get("bubble"), bubbleg.anim, bubbleg.x, bubbleg.y, 1, 1, 0, -1, 0.5);
                draw_sprite(sprite_get("bubble_outline"), bubbleg.anim, bubbleg.x, bubbleg.y);
            }
        }
    }
}
if (get_player_color(player) == 7)
{
    if (bubble_effect == 1)
    {
        draw_sprite(sprite_get("bubble_grow_ea"), bubble_frame, x, y)
    }
    
    switch(wet)
    {
        case 1:
            draw_sprite(sprite_get("status_ea"), 0, x - 25, y - (char_height + 75))
            break;
        case 2:
            draw_sprite(sprite_get("status_ea"), 0, x - 25, y - (char_height + 75))
            draw_sprite(sprite_get("status_ea"), 0, x - 5, y - (char_height + 80))
            break;
        case 3:
            draw_sprite(sprite_get("status_ea"), 0, x - 25, y - (char_height + 75))
            draw_sprite(sprite_get("status_ea"), 0, x - 5, y - (char_height + 80))
            draw_sprite(sprite_get("status_ea"), 0, x + 15, y - (char_height + 75))
            break;
    }
}
else
{
    if (bubble_effect == 1)
    {
        draw_sprite(sprite_get("bubble_grow"), bubble_frame, x, y)
    }
    
    switch(wet)
    {
        case 1:
            draw_sprite(sprite_get("status"), 0, x - 25, y - (char_height + 75))
            break;
        case 2:
            draw_sprite(sprite_get("status"), 0, x - 25, y - (char_height + 75))
            draw_sprite(sprite_get("status"), 0, x - 5, y - (char_height + 80))
            break;
        case 3:
            draw_sprite(sprite_get("status"), 0, x - 25, y - (char_height + 75))
            draw_sprite(sprite_get("status"), 0, x - 5, y - (char_height + 80))
            draw_sprite(sprite_get("status"), 0, x + 15, y - (char_height + 75))
            break;
    }
}
//other_post_draw
/*with (oPlayer)
{
    if (get_char_info( player, INFO_STR_NAME) == "Gawr Gura")
    {
        if (get_player_color(player) == 7)
        {
            var hud = sprite_get("player_outline");
            var bubble_outline = sprite_get("bubble_outline_ea")
            var bubble = sprite_get("bubble_ea");
            var status = sprite_get("status_ea");
        }
        else
        {
            var hud = sprite_get("player_outline");
            var bubble_outline = sprite_get("bubble_outline")
            var bubble = sprite_get("bubble");
            var status = sprite_get("status");
        }
    }
}
if(instance_exists(other_player_id.bubbleg))
{
    if instance_exists(other_player_id.bubbleg.bubbled_playerid)
    {
        if (other_player_id.bubbleg.bubbled_playerid = self and other_player_id.bubbleg.state != 9)
        {
            draw_sprite_ext(hud, other_player_id.bubbleg.anim, other_player_id.bubbleg.x, other_player_id.bubbleg.y, 1, 1, 0, other_player_id.bubbleg.col, 1);
            draw_sprite_ext(bubble, other_player_id.bubbleg.anim, other_player_id.bubbleg.x, other_player_id.bubbleg.y, 1, 1, 0, -1, 0.5);
            draw_sprite(bubble_outline, other_player_id.bubbleg.anim, other_player_id.bubbleg.x, other_player_id.bubbleg.y);
        }
    }
}

switch(wet)
{
    case 1:
        draw_sprite(status, 0, x - 25, y - (char_height + 75))
        break;
    case 2:
        draw_sprite(status, 0, x - 25, y - (char_height + 75))
        draw_sprite(status, 0, x - 5, y - (char_height + 80))
        break;
    case 3:
        draw_sprite(status, 0, x - 25, y - (char_height + 75))
        draw_sprite(status, 0, x - 5, y - (char_height + 80))
        draw_sprite(status, 0, x + 15, y - (char_height + 75))
        break;
}
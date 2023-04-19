with (oPlayer)
{
    if (get_char_info( player, INFO_STR_NAME) == "Legacy Gawr Gura")
    {   if (get_player_color(player) == 7)
        {
            var bloop = sprite_get("bloop_bite_ea")
        }
        else
        {
            var bloop = sprite_get("bloop_bite")
        }
    }
}
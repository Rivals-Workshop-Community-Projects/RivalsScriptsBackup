// pre-draw
if (infect == 1)
{
    with (oPlayer)
    {
        if (get_char_info( player, INFO_STR_NAME) == "Phoenix Wright")
        {
            var infect_sprite = sprite_get("Skull")
        }
    }
    draw_sprite(infect_sprite, 0, x - 18, y - 130);
}

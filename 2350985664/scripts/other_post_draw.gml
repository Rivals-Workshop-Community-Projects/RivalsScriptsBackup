//other.post-draw


if (blinded)
{
    with (oPlayer)
    {
        if (get_char_info( player, INFO_STR_NAME) == "Mystia Lorelei")
        {
            var blinded_sprite = sprite_get("blinded");
        }
    }
    if (blinded > 60)
    {
        draw_sprite(blinded_sprite,0,x,y - char_height - 62);
    }
    else
    {
        if (blinded % 6 >= 3)
        {
            draw_sprite(blinded_sprite,0,x,y - char_height - 62);
        }
    }
}
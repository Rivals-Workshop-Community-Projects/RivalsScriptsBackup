/*print_debug("hi");
var x_pos = 0;
var y_pos = 0;
with (obj_stage_article)
{
    if (get_article_script(id) == 1)
    {
        x_pos = x;
        y_pos = y;
    }
}
var icon_sprite = get_char_info(player, INFO_OFFSCREEN);
var img_index = 0;
if (!is_string(url))
{
    img_index = url - 1;
}
draw_sprite_ext(icon_sprite, img_index, x_pos + 26, y_pos + 26, 1, 1, 0, c_white, 1);
img_index = 0;
with (oPlayer)
{
    if (other.owner == player)
    {
        other.icon_sprite = get_char_info(player, INFO_OFFSCREEN);
        // check for vanilla characters
        if (!is_string(url))
        {
            //if (url < 24)
                other.img_index = url - 1;
        }
        //draw_sprite_ext(icon_sprite, img_index, other.x + 26, other.y + 26, 1, 1, 0, c_white, 1);
    }
}
draw_sprite_ext(icon_sprite, img_index, x + 26, y + 26, 1, 1, 0, c_white, 1);*/
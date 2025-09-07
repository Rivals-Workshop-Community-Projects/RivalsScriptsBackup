// Article 1 -- Player Cursor
img_index = 0;
var gvt = 0;
var xx = 0;
var yy = 0;
with (oPlayer)
{
    if (other.owner == player)
    {
        other.icon_sprite = get_char_info(player, INFO_OFFSCREEN);
        // check for vanilla characters
        if (!is_string(url))
        {
            other.img_index = url - 1;
            for (var i = 0; i < 9; i++)
            {
                if (string_pos(other.alts[i], sprite_get_name(sprite_index)) != 0)
                {
                    other.icon_sprite = asset_get("offscreen_alt_spr");
                }
            }
        }
        gvt = uch_give_up_timer;
        xx = x;
        yy = y;
        shader_start();
        init_shader();
        with other draw_sprite_ext(icon_sprite, img_index, x + 26, y + 26, 1, 1, 0, c_white, 1);
        shader_end();
        //draw_sprite_ext(icon_sprite, img_index, other.x + 26, other.y + 26, 1, 1, 0, c_white, 1);
    }
}
if (gvt > 600)
{
    draw_sprite_ext(sprite_get("give_up_hud"), floor(ease_linear(0, 15, gvt - 600, 300)), xx, yy, 2, 2, 0, c_white, 1);
}
//draw_text_color(x, y-16, string(floor(x / 32)) + "," + string(floor((y + 16)/32)), c_white,c_white,c_white,c_white, 1);
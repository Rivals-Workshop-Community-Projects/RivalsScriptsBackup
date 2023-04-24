//other_post_draw.gml

if (darkness_owner == noone || darkness_owner == self) exit;
else
{
    if (!instance_exists(darkness_owner)) //prevents errors on refresh
    {
        has_darkness = false;
        darkness_owner = noone;
    }
    else if (darkness_owner.dark_shield_hp > 0 && dark_state > -1) with (darkness_owner)
    {
        //average of darkness_col's color values to check if it's brighter than the most mid gray
        var average = ((color_get_red(darkness_col) + color_get_green(darkness_col) + color_get_blue(darkness_col)) / 3);
        text_draw(
            other.x,
            other.y - other.char_height - 78 + 16 * (get_player_name(other.player) == `P${other.player}` || playtest_active) - other.hud_offset,
            `${dark_shield_hp}%`, darkness_col, "fName", fa_center, 1, true, 1, average > 128 ? c_black : c_white
        );
    }
}

//text_draw(x, y, string, color, font, align, alpha, outline, line_alpha, line_col)
#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}
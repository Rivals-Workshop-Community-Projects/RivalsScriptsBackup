if (variable_instance_exists(self, "time_since_switch"))
{
    if (time_since_switch < 90)
    {
        var draw_x = x + 12;
        var draw_y = y + 128 - (time_since_switch / 5);
        var alpha = ease_quartIn(1, 0, time_since_switch, 90);
    //var text_spr = sprite_get("charselect_text");
    //var gray_shade = 62;
    //var shadow_color = make_color_rgb(gray_shade, gray_shade, gray_shade);
    //draw_sprite_ext(text_spr, prev_color, draw_x + 2, draw_y + 2, 2, 2, 0, shadow_color, alpha);
    //draw_sprite_ext(text_spr, prev_color, draw_x, draw_y, 2, 2, 0, c_white, alpha);

        var color = get_player_color(player);
        draw_sprite_ext(sprite_get("char_select_icons"), color, draw_x, draw_y, 2, 2, 0, c_white, alpha);
        var txt = ["The Defect", "The Ironclad", "The Silent", "The Watcher", "Donu & Deca", "Spheric Guardian", "Aggregate", "In-Game", "Custom 1", "Custom 2"];
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_outlined_text(draw_x + 18, draw_y + 4, txt[color], alpha);
    }
}

#define draw_outlined_text(xx, yy, text, alpha)
{
    draw_set_font(asset_get("fName"));
    draw_text_color(xx + 2, yy - 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx - 2, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx + 2, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    //draw_text_color(xx - 2, yy - 2, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx + 2, yy, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx - 2, yy, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx, yy - 2, text, c_black, c_black, c_black, c_black, alpha);
    //draw_text_color(xx - 2, yy, text, c_black, c_black, c_black, c_black, 1);
    draw_text_color(xx, yy, text, c_white, c_white, c_white, c_white, alpha);
}
//css_draw.gml

if (msg_yellow_mode)
{
    draw_sprite_ext(sprite_get("css_yellow"), 0, x+8, y+8, 2, 2, 0, c_white, 1);
}

if (!msg_stage_stable) && (button_anim_timer < 8 || ((current_time >> 1) % 7 == 0))
{
    var randx = ( ((current_time << 2) % 2)) * max(0, 23 - button_anim_timer);
    var randy = ( ((current_time << 0) % 2) - 0.5) * max(0, 15 - button_anim_timer);
    draw_sprite_part_ext(get_char_info(player, INFO_CHARSELECT), 0,
                         0, 36, 26, 36, x+9+randx, y+80+randy, 2, 2, c_white, 1);
}
if (button_highlighted)
{
    var alpha = draw_get_alpha();
    draw_set_alpha(max(0, 0.5 - button_highlight_timer/24));
    draw_rectangle_color(x+8, y+8+72, x+8+52, y+8+72+72, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(alpha);
}

shader_end();
if (msg_error_active)
{
    var tmp_a = draw_get_alpha();
    draw_set_alpha(0.4);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(tmp_a);

    var anim_offset = (msg_error_timer < 10) ? ease_expoOut( 500, 0, msg_error_timer, 10 ): 0;

    var dialog_spr = asset_get("popup_dynamic_spr");

    var dlg_spr_width = 154;
    var dialog_height = 220;
    var dlg_x = 328;
    var dlg_y = 158 + anim_offset;
    draw_sprite_part_ext(dialog_spr, 0, 0, 0, dlg_spr_width, 3, dlg_x, dlg_y, 2, 2, c_white, 1);
    draw_sprite_part_ext(dialog_spr, 0, 0, 3, dlg_spr_width, 1, dlg_x, dlg_y + 6, 2, dialog_height, c_white, 1);
    draw_sprite_part_ext(dialog_spr, 0, 0, 4, dlg_spr_width, 3, dlg_x, dlg_y + 6 + dialog_height, 2, 2, c_white, 1);

    var text_posx = dlg_x + dlg_spr_width - 2;
    var text_posy = dlg_y + 10;
    textDraw(text_posx, text_posy, asset_get("roundFont"), c_white, 28, 300, fa_center, 1, true, 1, msg_error_message);

    draw_sprite_ext(asset_get("popup_ok_but_spr"), 0, text_posx - 50, text_posy + 176, 2, 2, 0, c_white, 1);
    textDraw(text_posx, text_posy + 180, asset_get("medFont"), c_white, 28, 300, fa_center, 1, true, 1, "OK");
}

for (var i = 0; msg_persistence && i < array_length(msg_persistence.achievement_status); i++) 
    if msg_persistence.achievement_status[i]
        draw_sprite_ext(asset_get("small_medals_spr"), 4, x+24 + i*8, y+42, 2, 2, 0, c_white, 1);

msg_draw_achievements(msg_persistence);


//=====================================================================
#define textDraw(x1, y1, font, color, line_sep, line_max, align, scale, outlined, alpha, text)
// Draw text at position x1, y1, using scale, alpha, align, font and color.
// line_sep is the vertical separation between text.
// line_max is the maximum length for a line of text.
// if outlined is TRUE, draws a 2px black contour.
//=====================================================================
{
    x1 = round(x1);
    y1 = round(y1);

    draw_set_font(font);
    draw_set_halign(align);

    if (outlined)
    {
        for (var i = -1; i < 2; i++) 
        {
            for (var j = -1; j < 2; j++) 
            {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, 
                    line_sep, line_max, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if (alpha > 0.01) 
        draw_text_ext_transformed_color(x1, y1, text, line_sep, line_max, 
                    scale, scale, 0, color, color, color, color, alpha);
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_draw_achievements(persistence) // Version 0
    var spr = sprite_get("achievement");
    if instance_exists(persistence) with (persistence) msg_draw_achievement(spr);

#define msg_draw_achievement(spr) // Version 0
    if (achievement.end_time < current_time) return;
    //assumed called from the perspective of the master article holding the required information
    //bottom corner of screen: (960, 540)
    //size of achievement block: 240x94
    var popup_down = 540;
    var popup_up = popup_down - 94;
    var popup_x = 720;
    var popup_y = popup_up;

    //THX-UHC2
    if (current_time < achievement.rise_time)
    {
        popup_y = ease_linear(popup_down, popup_up,
                              current_time - achievement.start_time,
                              achievement.rise_time - achievement.start_time);
    }
    else if (current_time > achievement.fall_time)
    {
        popup_y = ease_linear(popup_up, popup_down,
                              achievement.fall_time - current_time,
                              achievement.fall_time - achievement.end_time);
    }

    draw_sprite(spr, achievement.id, popup_x, popup_y);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion
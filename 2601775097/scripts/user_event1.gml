//user_event1
//draw skill select

//background
draw_sprite_ext(sprite_get("hud_menu"), playtesting, menu_x - 8.5, menu_y - 128 + 4 * playtesting, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_menu_buttons"), is_practice_menu && !playtesting, menu_x - 8, menu_y + 8, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud_menu_movement"), info_mode_menu, menu_x + 2, menu_y - 84, 2, 2, 0, c_white, 1);

//skill icons
for (var skill_slot = 0; skill_slot <= 3; ++skill_slot)
{
    for (var skill_count = skill_slot; skill_count <= skill_slot + 8; skill_count += 4)
    {
        if (cur_select <= skill[skill_count].skill_pos_x && cur_select != -1
        || skill[cur_skills[skill_slot]].skill_id == skill[skill_count].skill_id)
        {
            current_skill_sprite = sprite_get("hud_skills");
        }
        else current_skill_sprite = sprite_get("hud_skills_disabled");

        draw_sprite_ext(
            current_skill_sprite,
            skill[skill_count].skill_id,
            menu_x + skill[skill_count].skill_pos_x * 38 + 38,
            menu_y + skill[skill_count].skill_pos_y * 32 - 84,
            2, 2, 0, c_white, 1
        );
    }
}

//stuff that is altered by info mode
if (!info_mode_menu)
{
    //cursor
    if (cur_select > -1 && cur_select < 4)
    {
        draw_sprite_ext(
            sprite_get("hud_menu_cursor"),
            menu_cursor_timer*menu_cursor_speed,
            menu_x + (38 * (cur_select + 1)),
            menu_y - 84,
            2, 2, 0, c_white, 1);
    }

    //writes the current selection
    var select_text = ["Skill Select Cancelled", "Selecting: N-SPECIAL", "Selecting: F-SPECIAL", "Selecting: U-SPECIAL", "Selecting: D-SPECIAL", "Selection Complete"];
    textDraw(menu_x + 108, menu_y - 100, string(select_text[cur_select+1]), c_white, "fName", fa_center, false, 1);
}

//timer
if (menu_invince > 0 && cur_select >= 0 && !training && !is_cpu)
{
    var timer_x_offset = menu_x + 36;
    draw_debug_text(timer_x_offset, menu_y - 140, "Invince Time = " + string(menu_invince/60));
    if (menu_invince % 60 == 0) draw_debug_text(timer_x_offset + 118, menu_y - 140, ".00"); //yeah. i'm drawing it seperately.
}



#define textDraw
{
    //textDraw(x, y, string, color, font, align, outline, alpha)
    var x = argument[0], y = argument[1], string = argument[2];
    var color = argument_count > 3 ? argument[3] : c_white;
    var font = argument_count > 4 ? argument[4] : "fname";
    var align = argument_count > 5 ? argument[5] : fa_center;
    var outline = argument_count > 6 ? argument[6] : false;
    var alpha = argument_count > 7 ? argument[7] : 1;

    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, c_black, c_black, c_black, c_black, alpha);
        }
    }
    if (alpha != 1) alpha = alpha;

    draw_text_color(x, y, string, color, color, color, color, alpha);
}
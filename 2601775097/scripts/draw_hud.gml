//draw_hud

// skill select menu
if !("char_height" in self) exit;


if (menu_active)                    //skill select
{
    menu_x = temp_x;
    menu_y = temp_y;
    user_event(1);
}
else                                //regular gameplay UI
{
    //MP gauge
    if (mp_current <= 100) //normal version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 2, temp_y - 6, 204, 6, $8b1733, 1); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 0 + i*2, temp_y - 2 - i*2, floor(mp_current)*2 + 2, 2, mp_color, 1); // fill
    }
    else if (mp_current > 100) //double mana version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 2, temp_y - 6, 204, 6, $e9973e, 1); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 0 + i*2, temp_y - 2 - i*2, floor(mp_current-100)*2 + 2, 2, mp_color_ex, 1); // fill
    }
    draw_sprite_ext(sprite_get("hud_mp"), 0, temp_x - 24, temp_y - 20, 2, 2, 0, c_white, 1); //frame
    draw_debug_text(temp_x - 0, temp_y - 20, "MP " + (theikos_type == 2 ? "999999999" : string(floor(mp_current)) + "/100") ); //text

    //skill info
    for (var skill_slot = 0; skill_slot <= 3; ++skill_slot)
    {
        if (skill[cur_skills[skill_slot]].mp_use_cost <= mp_current)
        {
            draw_sprite_ext(sprite_get("hud_skills"),
            skill[cur_skills[skill_slot]].skill_id,
            temp_x + skill[cur_skills[skill_slot]].skill_pos_x * 30 + 98,
            temp_y - 40,
            2, 2, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprite_get("hud_skills_disabled"),
            skill[cur_skills[skill_slot]].skill_id,
            temp_x + skill[cur_skills[skill_slot]].skill_pos_x * 30 + 98,
            temp_y - 40,
            2, 2, 0, c_white, 1);
        }
    }
    draw_sprite_ext(sprite_get("hud_skills_inputs"), 0, temp_x + 96, temp_y - 20, 2, 2, 0, c_white, 1);

    //overdrive gauge
    if (can_overdrive || "fs_char_initialized" in self)
    {
        if ("fs_char_initialized" in self) var use_fs_hud = true;

        draw_sprite_ext(sprite_get(use_fs_hud ? "hud_fs" : "hud_od"), 0, temp_x-18+2*use_fs_hud, temp_y-14-4*use_fs_hud, 2, 2, 0, c_white, 1);
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x - 4, temp_y + 4, floor(od_current*1.96), 2, od_color, 1);
        //rectDraw(temp_x - 4, temp_y + 4, floor(od_current*1.96)-1, 1, od_color);

        if (od_cast >= 1) draw_sprite_ext(sprite_get(use_fs_hud ? "hud_fs_ball" : "hud_od_star"), 0, temp_x+194+8*use_fs_hud, temp_y-10-8*use_fs_hud, 2, 2, 0, od_color, 1);
    }

    if (theikos_type == 2) draw_debug_text(temp_x-10, temp_y-96-36*training, "
    You're gonna have to try
    a little harder than THAT.");
}

if (training)                       //training mode messages
{
    if (!menu_active && !is_cpu)
    {
        if (!is_practice_menu) draw_debug_text(temp_x + 14, temp_y - 72, "UP + TAUNT = Skill Select");
        draw_debug_text(temp_x + 14 - 28 * !infinite_mp_mode, temp_y - 56, infinite_mp_mode ? "Infinite MP Mode is active" : "DOWN + TAUNT = Infinite MP Mode");
    }
}

if (info_mode_menu)                 //skill info mode
{
    //over the skill select
    if (menu_active)
    {
        //cursor
        draw_sprite_ext(
            sprite_get("hud_menu_cursor_info"),
            menu_cursor_timer*menu_cursor_speed,
            temp_x + skill[cur_skill_info].skill_pos_x * 38 + 38,
            temp_y + skill[cur_skill_info].skill_pos_y * 32 - 84,
            2, 2, 0, c_white, 1);

        //skill that is hovered on
        textDraw(temp_x + 108, temp_y - 100, "Selected: " + string(skill[cur_skill_info].skill_name), $ffbc52, "fName", fa_center, false, 1);
    }

    //center screen stuff
    var _x = view_get_wview() - room_width/2 - 16;
    var _y = menu_active ? view_get_hview() - room_height/2 + 80 : view_get_hview() - room_height/2 + 180;

    draw_sprite_stretched_ext(spr_pixel, 0, _x - 12, _y - 8, 387, 112, c_black, 0.5); // background

    draw_sprite_stretched_ext(spr_pixel, 0, _x + 30, _y + 28, 321, 2, c_white, 1); // white underline
    draw_sprite_ext(sprite_get("hud_skills"), skill[cur_skill_info].skill_id, _x-4, _y, 2, 2, 0, c_white, 1);

    draw_debug_text(_x + 48, _y + 10, string(skill[cur_skill_info].skill_name));
    draw_debug_text(_x + 264, _y + 10, string("cost: " + string(skill[cur_skill_info].mp_use_cost) + " MP"));
    draw_debug_text(_x - 28, _y + 24, skill_desc[cur_skill_info]);
}


#define textDraw
/// textDraw(x, y, string, color = c_white, font = "fname", align = fa_center, outline = false, alpha = 1)
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
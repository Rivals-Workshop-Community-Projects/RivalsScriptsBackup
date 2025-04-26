//user_event 14 - actually draw_hud

// skill select menu
if !("char_height" in self) exit;
shader_end();

if (menu_active) //skill select
{
    menu_x = temp_x;
    menu_y = temp_y;
    skill_script_type = 2;
    user_event(2);
}
else             //regular gameplay UI
{
    //MP gauge
    if (mp_cur <= 100) //normal version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 2, temp_y - 6, 204, 6, $8b1733, 1); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 0 + i*2, temp_y - 2 - i*2, floor(mp_cur)*2 + 2, 2, mp_color, 1); // fill
    }
    else if (mp_cur > 100) //double mana version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 2, temp_y - 6, 204, 6, $e9973e, 1); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, temp_x + 0 + i*2, temp_y - 2 - i*2, floor(mp_cur-100)*2 + 2, 2, mp_color_ex, 1); // fill
        
    }
    draw_sprite_ext(sprite_get("hud_mp"), 0, temp_x - 24, temp_y - 20, 2, 2, 0, c_white, 1); //frame
    draw_debug_text(temp_x - 0, temp_y - 20, "MP " + string(floor(mp_cur)) + "/100"); //text

    //skill info
    for (var i = 0; i <= 3; ++i)
    {
        if (skill[cur_skills[i]].mp_use_cost <= mp_cur)
        {
            draw_sprite_ext(sprite_get("hud_skills"),
            skill[cur_skills[i]].skill_id,
            temp_x + i * 30 + 98,
            temp_y - 40,
            2, 2, 0, c_white, 1);
        }
        else
        {
            draw_sprite_ext(sprite_get("hud_skills_disabled"),
            skill[cur_skills[i]].skill_id,
            temp_x + i * 30 + 98,
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
        draw_sprite_stretched_ext(spr_pixel, 0, temp_x - 4, temp_y + 4, floor(od_cur*1.96), 2, od_color, 1);
        //rectDraw(temp_x - 4, temp_y + 4, floor(od_cur*1.96)-1, 1, od_color);

        if (od_cast >= 1) draw_sprite_ext(sprite_get(use_fs_hud ? "hud_fs_ball" : "hud_od_star"), 0, temp_x+194+8*use_fs_hud, temp_y-10-8*use_fs_hud, 2, 2, 0, od_color, 1);
    }
}

if (debug_display)
{
    var mul = 16; //spacing
    var debug_x = 16;
    var debug_y = 256;
    
    draw_debug_text(debug_x+mul*0, debug_y+mul*-4, "state = " + string(get_state_name(state)));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-3, "state_timer = " + string(state_timer));

    if (
        is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (is_attacking) draw_debug_text(debug_x+mul*0, debug_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-6, "window = " + string(window));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(debug_x+mul*0, debug_y+mul*-2, "x = " + string(x));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-1, "y = " + string(y));

    draw_debug_text(debug_x+mul*5, debug_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(debug_x+mul*5, debug_y+mul*-1, "vsp = " + string(vsp));
}

////////////////////////////////////////////////////////////////////// TRAINING MODE STUFF //////////////////////////////////////////////////////////////////////

//center screen stuff
var _x = view_get_wview() - room_width/2 - 16;
var _y = menu_active ? view_get_hview() - room_height/2 + 80 : view_get_hview() - room_height/2 + 168;

if (training && !is_cpu) //training mode messages
{
    if (!menu_active)
    {
        draw_debug_text(
            (menu_type == 2 ? _x + 88 : temp_x + 14),
            (menu_type == 2 ? _y - 24 : temp_y - 56) - 16,
            "UP + TAUNT = Skill Select"
        );
        draw_debug_text(
            (menu_type == 2 ? _x + 88 : temp_x + 14) - 28 * !infinite_mp_mode,
            (menu_type == 2 ? _y - 24 : temp_y - 56),
            infinite_mp_mode ? "Infinite MP Mode is active" : "DOWN + TAUNT = Infinite MP Mode"
        );
    }
}

if (menu_type == 2) //skill info mode
{
    //skill name
    if (menu_active) textDraw(temp_x + 108, temp_y - 100, "Selected: " + string(skill[cur_skill_hover].skill_name), $ffbc52, "fName", fa_center, false, 1);

    //info
    draw_sprite_stretched_ext(spr_pixel, 0, _x - 12, _y - 8, 387, 112, c_black, 0.5); // background

    draw_sprite_stretched_ext(spr_pixel, 0, _x + 30, _y + 28, 321, 2, c_white, 1); // white underline
    draw_sprite_ext(sprite_get("hud_skills"), skill[cur_skill_hover].skill_id, _x-4, _y, 2, 2, 0, c_white, 1);

    draw_debug_text(_x + 48, _y + 10, string(skill[cur_skill_hover].skill_name));
    draw_debug_text(_x + 264, _y + 10, string("cost: " + string(skill[cur_skill_hover].mp_use_cost) + " MP"));
    draw_debug_text(_x - 28, _y + 24, skill_desc[cur_skill_hover]);
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
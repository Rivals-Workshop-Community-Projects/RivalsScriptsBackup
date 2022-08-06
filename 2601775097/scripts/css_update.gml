//css_update
if (!instance_exists(cursor_id)) exit; //stops skill select entirely

skill_script_type = 1;
user_event(2);

css_anim_time ++;
alt_cur = get_player_color(player);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//button stuff
var cur_x = get_instance_x(cursor_id);
var cur_y = get_instance_y(cursor_id);

if (cur_x > skill_button_pos[0] && cur_x < skill_button_pos[2] && cur_y > skill_button_pos[1] && cur_y < skill_button_pos[3] && !instance_exists(oTestPlayer) && !menu_active)
{
    if (skill_hover_time <= skill_hover_time_max && !skill_hover)
    {
        skill_hover_time = skill_hover_time_max;
        sound_play(asset_get("mfx_hover"));
        skill_hover = true;
    }

    if (menu_a_pressed) //back_pressed - if CSS will not be able to lock control
    {
        menu_active_time = -1;
        menu_active = true;
        sound_play(asset_get("mfx_confirm"));
        skill_hover = false;
    }
}
else skill_hover = false;

suppress_cursor = skill_hover || menu_active;
if (skill_hover_time > 0) skill_hover_time--;



//ALT SHENANINGANS
switch (alt_cur)
{
    case 14: preview_line_color = $0f380f; break; //gameboy
    case 15: preview_line_color = $b20020; break; //NES //this color doesn't show for some reason
    case 16: //seasonal -> hallowen
        if (current_day == b_day && current_month == b_month)
        {
            set_color_profile_slot(16, 1, 206, 216, 227); //CLOTHWHITE
            set_color_profile_slot(16, 2, 182, 88, 61); //HAIR
            set_color_profile_slot(16, 3, 245, 181, 150); //SKIN
            set_color_profile_slot(16, 4, 43, 60, 140); //CLOTHLIGHTBLUE
            set_color_profile_slot(16, 0, 43, 60, 140); //CLOTHDARKBLUE
            set_color_profile_slot(16, 5, 43, 60, 140); //CLOTHBLACK
	        set_color_profile_slot(16, 6, 159, 241, 255); //LIGHT
	        set_color_profile_slot(16, 7, 76, 133, 233); //FIRE
        }
        else
        {
            if (get_match_setting(SET_SEASON) == 3) preview_line_color = $2b2b4b; //halloween
            else preview_line_color = $000000;
        }
        break;
    case 25: preview_line_color = $343434; break; //helel
    case 26: preview_line_color = $022d61; break; //theikos
    default: preview_line_color = $000000; break;
}

//changes the white shading for the 8bit alts
if (alt_cur == 14 || alt_cur == 15) set_color_profile_slot_range(1, 150, 10, 12);
set_color_profile_slot_range(1, 13, 7, 15); //from colors.gml
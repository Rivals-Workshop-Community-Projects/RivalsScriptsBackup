//css_update

if ("css_anim_time" not in self || "skill_hover_time" not in self || "menu_active" not in self) exit;

skill_script_type = 1;
user_event(2);

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //online player is actually player 0, thanks dan

//these values need to be updated every frame lol
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//ALT SHENANINGANS
switch (alt_cur)
{
    case 14: preview_line_color = $0f380f; break; //gameboy
    case 15: preview_line_color = $b20020; break; //NES //this color doesn't show for some reason
    case 16: //seasonal -> hallowen
        if (current_day == b_day && current_month == b_month)
        {
            set_color_profile_slot(alt_cur, 2, 182, 88, 61); //HAIR
            set_color_profile_slot(alt_cur, 3, 245, 181, 150); //SKIN
			set_color_profile_slot(alt_cur, 1, 102, 194, 241); //CLOTHWHITE
		    set_color_profile_slot(alt_cur, 4, 62, 101, 185); //CLOTHLIGHTBLUE
		    set_color_profile_slot(alt_cur, 0, 43, 60, 140); //CLOTHDARKBLUE
		    set_color_profile_slot(alt_cur, 5, 33, 43, 139); //CLOTHBLACK
	        set_color_profile_slot(alt_cur, 6, 159, 241, 255); //LIGHT
	        set_color_profile_slot(alt_cur, 7, 76, 133, 233); //FIRE
            preview_line_color = $000000;
        }
        else
        {
            if (get_match_setting(SET_SEASON) == 3) preview_line_color = $2b2b4b; //halloween
            else preview_line_color = $000000;
        }
        break;
    case 26: preview_line_color = $343434; break; //helel
    case 27: preview_line_color = $022d61; break; //theikos
    default: preview_line_color = $000000; break;
}

//changes the white shading for the 8bit alts
if (alt_cur == 14 || alt_cur == 15) set_color_profile_slot_range(1, 150, 10, 12);
set_color_profile_slot_range(1, 13, 7, 15); //from colors.gml

if (skill_hover_time > 0) skill_hover_time--;


//sync skill select
//thanks supersonic
if ("last_time" not in self || "last_fps" not in self)
{
    last_time = 0;
    last_fps = 1;
}
if (current_time - last_time > (1/last_fps)*3000)
{
    skill_hover_time = skill_hover_time_max;

    //skill sync with playtest
    for (var i = 0; i <= 3; ++i)
    {
        prev_skills[i] = cur_skills[i];
        cur_skills[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
    }
    resync = 1;
}
last_fps = max(fps,1)
last_time = current_time;


skill_button_x = x + 150;
skill_button_y = y + 30;

skill_button_pos = [
    skill_button_x,
    skill_button_y,
    skill_button_x + sprite_get_width(sprite_get("hud_skillselect_button")),
    skill_button_y + sprite_get_height(sprite_get("hud_skillselect_button"))
];



//SKILL SELECT CONTROL

//button stuff
var cur_x = get_instance_x(cursor_id);
var cur_y = get_instance_y(cursor_id);

if (point_in_rect(cur_x, cur_y, skill_button_pos[0], skill_button_pos[1], skill_button_pos[2], skill_button_pos[3]) && !instance_exists(oTestPlayer) && !menu_active)
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


//stores button positions
#define point_in_rect (px, py, x1, y1, x2, y2)
{
    return
        px == clamp(px, min(x1,x2), max(x1,x2)) && 
        py == clamp(py, min(y1,y2), max(y1,y2));
}
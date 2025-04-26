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
    if (!skill_hover)
    {
        sound_play(asset_get("mfx_hover"));
        skill_hover = true;
    }

    if (menu_a_pressed) //back_pressed - if CSS will not be able to lock control
    {
        menu_active_time = -1;
        menu_active = true;
        sound_play(asset_get("mfx_confirm"));
    }
    if (menu_b_pressed) //randomizer
    {
        sound_play(asset_get("mfx_hp_spawn"));
        skill_hover_time = 0;

        prev_skills = cur_skills;
        for (var a = 0; a < 4; a ++) //check per slot
        {
            //step 1: find a skill
            var next_skill = -1;
            var cur_index = random_func(a, rng_pools_cur[a], true); //find a random index from the current list
            for (var b = 0; b < array_length(rng_weight_cur); b++) //check if the "cur_index" is within range of a skill
            {
                if (cur_index < rng_weight_cur[0][@ a]) next_skill = rng_weight_cur[b][4];
                else if (cur_index < rng_weight_cur[b][@ a] && cur_index >= rng_weight_cur[b-1][@ a]) next_skill = rng_weight_cur[b][4];
                if (next_skill == rng_weight_cur[b][4]) break;
            }
            cur_skills[a] = next_skill; //the next skill that was just selected by the randomizer

            //step 2-1: set up a temporary array to overwrite the real array with
            var temp_data = [];
            repeat (12-a-1) array_push(temp_data, [0, 0, 0, 0, 0]); //populate temp_data array to be equal to the amount of data needed
            for (var b = 0; b < array_length(temp_data); b ++)
            {
                //apply current data on the recently created array emmiting the current skill
                var after_skill = next_skill <= rng_weight_cur[b][@ 4];
                for (var c = 0; c < 5; c++)
                {
                    temp_data[b][@ c] = rng_weight_cur[b + after_skill][@ c];
                    if (after_skill && c < 4) temp_data[b][@ c] -= rng_weight_init[next_skill][@ c];
                }
            }
            for (var c = 0; c < 4; c++) rng_pools_cur[c] -= rng_weight_init[next_skill][@ c]; //remove selected skill priority from the pool

            //step 2-2: recalculate arrays
            rng_weight_cur = [];
            repeat (12-a-1) array_push(rng_weight_cur, [0, 0, 0, 0, 0]); //populate rng_weight_cur array to be equal to the amount of data needed
            for (var b = 0; b < array_length(rng_weight_cur); b ++) for (var c = 0; c < 5; c++) rng_weight_cur[b][@ c] = temp_data[b][@ c];

            //step 3: repeat untill all skills are selected
        }
        //reset skill select (this is basically the same code from css_init.gml without the setup for the init pool)
        rng_weight_cur = [[], [], [], [], [], [], [], [], [], [], [], []];
        rng_pools_cur = [0, 0, 0, 0];
        for (var b = 0; b < array_length(rng_weight_init); b ++)
        {
            for (var a = 0; a < 4; a++) 
            {
                rng_pools_cur[a] += rng_weight_init[b][@ a];
                rng_weight_cur[b][@ a] = rng_pools_cur[a];
            }
            array_push(rng_weight_cur[b], b);
        }
        update_sync_var();

        //debug code to check for any repeating skills
        //for (var a = 0; a < 4; a ++) for (var b = 0; b < 4; b ++) if (a != b && cur_skills[a] == cur_skills[b]) print (a)
    }
}
else skill_hover = false;

suppress_cursor = skill_hover || menu_active;

if (suppress_cursor && rng_msg_time < rng_msg_time_set) rng_msg_time ++;
else if (!suppress_cursor && rng_msg_time > 0) rng_msg_time --;

if (suppress_cursor) skill_hover_time ++;
else skill_hover_time = 0;


//stores button positions
#define point_in_rect (px, py, x1, y1, x2, y2)
{
    return
        px == clamp(px, min(x1,x2), max(x1,x2)) && 
        py == clamp(py, min(y1,y2), max(y1,y2));
}
#define update_sync_var()
{
    var player = (room == asset_get("network_char_select")) ? 0 : self.player; //online css player is 0, this will sync the player 0 with the actual player slot
    //room 114 is the online CSS room btw

    for (var i = 0; i <= 3; ++i)
    {
        //only save skills if we actually reached the proper cur_select
        if (cur_select == 4) prev_skills[i] = cur_skills[i]; //save new set
        else if (cur_select == -1) cur_skills[i] = prev_skills[i]; //go back to previous set

        var old_sync_var = get_synced_var(player);                                  //the synced var before updating
        var zeroed_element = old_sync_var & ~(0xf << (i * 4))                       //i forgor but it has something to do with shifting the bits
        var new_sync_var = zeroed_element | ((cur_skills[i] & 0xf) << (4 * i));     //shift bits again for the new synced var
        set_synced_var(player, new_sync_var);                                       //update synced var
        //print("synced var = " + string(get_synced_var(player)) + ", old_sync_var = " + string(old_sync_var) + ", zeroed_element = " + string(zeroed_element) + ", new_sync_var = " + string(new_sync_var));
    }
}
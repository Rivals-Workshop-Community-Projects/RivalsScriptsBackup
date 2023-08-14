//css_update

if ("css_anim_time" not in self || "lang_pos" not in self) exit;

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0

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




//button stuff
var is_cpu = (get_player_hud_color(player) == 8421504);
var cursor_x = get_instance_x(cursor_id);
var cursor_y = get_instance_y(cursor_id);

//This block sets the cursor_id to the cursor of the player hovering the css plate.
//this SHOULD let you read inputs from that player's cursor (but at the moment, this doesn't work)
if (is_cpu) {
    if (cpu_is_hovered) {
        cursor_id = cursors[cpu_hovering_player];
        
        cursor_x = get_instance_x(cursor_id);
        cursor_y = get_instance_y(cursor_id);
        
        if cpu_hover_time < 10 cpu_hover_time++;
        if cpu_color_swap_time < 5 cpu_color_swap_time++;
        if (cursor_x != clamp(cursor_x, plate_bounds[0],plate_bounds[2]) || cursor_y != clamp(cursor_y, plate_bounds[1],plate_bounds[3])) {
            cpu_is_hovered = false;
            cursor_id = cursors[player];
        }
    } else {
        var hplayer = get_new_hovering_player()
        if cpu_hover_time > 0 cpu_hover_time--;
        if (hplayer != -1) {
            
            new_color = get_player_hud_color(hplayer);
            if cpu_hover_time > 0 {
                prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else {
                prev_color = new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cursors[hplayer];
        }
    }
}
else
{
    cursor_id = cursors[player];
    if cpu_hover_time > 0 cpu_hover_time--;
}
//You should not need to touch any of the above code.
//All of *YOUR* CSS code should be BELOW HERE (and above the #defines ofc)

if (instance_exists(cursor_id))
{
    if (cursor_x > lang_pos[0] && cursor_x < lang_pos[2] && cursor_y > lang_pos[1] && cursor_y < lang_pos[3]) //lanugage settings
    {
        if (press_delay == 0) lang_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_lang ++;
            if (cur_lang > 4) cur_lang = 0;

            update_sync_var();

            sound_play(asset_get("mfx_option"));
            play_intro_voiceline(cur_lang);

            press_delay = 3;
            lang_button_state = 2;
        }
    }
    else if (cursor_x > dmg_pos[0] && cursor_x < dmg_pos[2] && cursor_y > dmg_pos[1] && cursor_y < dmg_pos[3]) //damage numbers view
    {
        if (press_delay == 0) dmg_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            dmg_nums_active = !dmg_nums_active;

            update_sync_var();

            sound_play(asset_get("mfx_option"));

            press_delay = 3;
            dmg_button_state = 2;
        }
    }
    else
    {
        lang_button_state = 0;
        dmg_button_state = 0;
        suppress_cursor = false;
    }
}


//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (lang_button_state == 2) lang_button_state = 2;
    if (dmg_button_state == 2) dmg_button_state = 2;
    press_delay --;
}

//alt outlines
if (alt_cur == 14) preview_line_color = $0f380f;
else preview_line_color = $000000;



#define play_intro_voiceline(lang)
{
    switch (lang) //this doesn't work properly yet
    {
        default: lang = "NO VOICE"; break;
        case 1: lang = "jp"; break;
        case 2: lang = "en"; break;
        case 3: lang = "cn"; break;
        case 4: lang = "kr"; break;
    }

    //play voiceclip
    if (lang != "NO VOICE")
    {
        var number = random_func(6, 3, true)+1;
        cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_intro" + string(number)));
    }
    else sound_stop(cur_voiceclip[0]);

    //the else above and this are both forcing one voice clip at a time so they don't overlap
    if (cur_voiceclip[0] != cur_voiceclip[1])
    {
        sound_stop(cur_voiceclip[1]);
        cur_voiceclip[1] = cur_voiceclip[0];
    }
}
#define update_sync_var
{
    synced_vars = [cur_lang, dmg_nums_active];
    synced_number = generate_var_chunk(synced_vars);

    set_synced_var(player, synced_number);
}
#define generate_var_chunk(var_array)
{
    // chunk format:
    // 4 bits per option
    var chunk = 0;
    //set specials from array, doing it backwards tho. i read it right to left in init
    var len = array_length(var_array)-1
    for (var i = len; i >= 0; i--) {
        //print(`${i} = ${var_array[i]}`); //debug print woo
        if (i != len)
            chunk = chunk << 4; //bitshift left 4 to make room for the next value
        chunk += var_array[i]; //add the special's value
    }
    return real(chunk);
}

//CPU check by supersonic
#define get_new_hovering_player
{
        for (var i = 1; i <= 4; i++) {
        var cx = get_instance_x(cursors[i]);
        var cy = get_instance_y(cursors[i]);
        if cx == clamp(cx, plate_bounds[0],plate_bounds[2]) && cy == clamp(cy, plate_bounds[1],plate_bounds[3]) {
            return i;
        }
    }
    return -1;
}
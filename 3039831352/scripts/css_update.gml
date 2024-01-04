//css_update.gml

if ("css_anim_time" not in self) exit;

css_anim_time ++;
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on //init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur || prev_spr_set != cur_spr_set)
{
    //swapping alt sound
    if (menu_rb_pressed || menu_lb_pressed)
    {
        sound_stop(asset_get("mfx_change_color"));
        sound_play(sound_get("mfx_move"));
    }

    css_anim_time = 0;
    if (alt_prev != alt_cur)
    {
        cur_spr_set = stored_spr_set;
        alt_prev = alt_cur;
    }
    if (prev_spr_set != cur_spr_set) prev_spr_set = cur_spr_set;
}
secret_active = get_player_name(player) == "461225";


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


//super sonic alt colors raise
spr_set_ex_offset = (get_match_setting(SET_RUNES) * (room == 114 ? -32 : -48)) + ((room == 114) * -32);

//buttons
if (instance_exists(cursor_id))
{
    if (cursor_x > lang_pos[0] && cursor_x < lang_pos[2] && cursor_y > lang_pos[1] && cursor_y < lang_pos[3]) //lanugage settings
    {
        if (press_delay == 0) lang_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_lang ++;
            if (cur_lang > 2) cur_lang = 0;

            update_sync_var();

            sound_play(sound_get("mfx_voice"))
            play_intro_voiceline(cur_lang);

            press_delay = 3;
            lang_button_state = 2;
        }
    }
    else if (spr_set_button_available && //super sonic alt settings
        cursor_x > spr_set_pos[0] && cursor_x < spr_set_pos[2] &&
        cursor_y > spr_set_pos[1] + spr_set_ex_offset &&
        cursor_y < spr_set_pos[3] + spr_set_ex_offset)
    {
        if (press_delay == 0) spr_set_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_spr_set ++;
            if (cur_spr_set > 1) cur_spr_set = 0;

            stored_spr_set = cur_spr_set;

            update_sync_var();

            sound_stop(sound_get("mfx_voice"))
            sound_play(sound_get("mfx_voice"))

            press_delay = 3;
            spr_set_button_state = 2;
        }
    }
    else
    {
        lang_button_state = 0;
        spr_set_button_state = 0;
        suppress_cursor = false;
    }
}

//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (lang_button_state == 2) lang_button_state = 2;
    press_delay --;
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
#define update_sync_var
{
    synced_vars = [cur_lang, cur_spr_set];
    synced_number = generate_var_chunk(synced_vars);

    set_synced_var(player, synced_number);
}
#define play_intro_voiceline(lang)
{
    switch (lang)
    {
        default: lang = "NO VOICE"; break;
        case 1: lang = "en"; break;
        case 2: lang = "jp"; break;
    }

    //play voiceclip
    if (lang != "NO VOICE")
    {
        var number = random_func(6, 3, true)+1;
        cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_select" + string(number)));
    }
    else sound_stop(cur_voiceclip[0]);

    //the else above and this are both forcing one voice clip at a time so they don't overlap
    if (cur_voiceclip[0] != cur_voiceclip[1])
    {
        sound_stop(cur_voiceclip[1]);
        cur_voiceclip[1] = cur_voiceclip[0];
    }
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
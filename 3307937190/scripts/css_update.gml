//css_update.gml

cpu_hover_update(); //put this at the VERY TOP of the file.

if ("css_anim_time" not in self) exit; //prevents error spam on load

css_anim_time ++;
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

if (instance_exists(cursor_id))
{
    if (get_instance_x(cursor_id) > inks_pos[0] && get_instance_x(cursor_id) < inks_pos[2] && get_instance_y(cursor_id) > inks_pos[1] && get_instance_y(cursor_id) < inks_pos[3]) //lanugage settings
    {
        lang_button_state = 0;
        if (press_delay == 0) inks_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            switch(cur_ink)
            {
                case 1: cur_ink = 0; break;
                case 0: cur_ink = 2; break;
                case 2: cur_ink = 1; break;
            }

            sound_play(asset_get("mfx_option"));

            press_delay = 3;
            inks_button_state = 2;
        }
    }
    else if (get_instance_x(cursor_id) > lang_pos[0] && get_instance_x(cursor_id) < lang_pos[2] && get_instance_y(cursor_id) > lang_pos[1] && get_instance_y(cursor_id) < lang_pos[3]) //lanugage settings
    {
        inks_button_state = 0;
        if (press_delay == 0) lang_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_lang ++;
            if (cur_lang > 2) cur_lang = 0;

            sound_play(asset_get("mfx_option"));
            play_voice("select", 0)

            press_delay = 3;
            lang_button_state = 2;
        }
    }
    else
    {
        inks_button_state = 0;
        lang_button_state = 0;
        suppress_cursor = false;
    }
}

synced_vars = generate_synced_var(cur_lang, 2, tag_pal_on, 2, cur_ink, 2);
set_synced_var(player, synced_vars)


//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (lang_button_state == 2) lang_button_state = 2;
    press_delay --;
}

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}

return real(output);

//as always, #defines go at the bottom of the script.
#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;

#define play_voice (_string_array, _cooldown)
var arr = _string_array;
if (!is_array(arr)) arr = [_string_array];

switch (cur_lang)
{
    default: lang = 0; break;
    case 1: lang = "en"; break;
    case 2: lang = "jp"; break;
}


if (lang != 0)
{
	var num = random_func(6, array_length(arr)-1, true);
    cur_voiceclip[0] = sound_play(sound_get("va_" + string(arr[num]) + "_" + string(lang)));
    voice_cooldown = _cooldown;
}
else sound_stop(cur_voiceclip[0]);

//the else above and this are both forcing one voice clip at a time so they don't overlap
if (cur_voiceclip[0] != cur_voiceclip[1])
{
    sound_stop(cur_voiceclip[1]);
    cur_voiceclip[1] = cur_voiceclip[0];
}
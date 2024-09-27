//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

if ("press_delay" not in self) return;

cpu_hover_update(); //put this at the VERY TOP of the file.

//css_anim_time ++; //animates the css by counting up, similarly to a state_timer
//alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
/*if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    __selected_alt_dir = 0;
    alt_prev = alt_cur;
}*/
css_hovered = point_in_rect(get_instance_x(cursor_id),get_instance_y(cursor_id),x+12,floor(y)+12,x+210,floor(y)+154);
if css_hovered {
    if css_hover_time = 0 css_highlight_time = 0;
    css_hover_time++;
    css_highlight_time++;
    if slide_timer > 100 slide_timer = 0;
    if slide_timer > 80 slide_timer--;
    //room_speed = 10;
} else {
    css_hover_time = 0;
    if css_highlight_time < css_highlight_max && css_highlight_time > 0 css_highlight_time++;
    else css_highlight_time = 0;
}

alt_cur = get_player_color(player); 

if alt_cur != prev_alt { 
    swap_timer = 0;    
    
    __clr_p = prev_alt < array_length(alts) ? alts[prev_alt][1] : undefinedcolor; 
    __clr_c = alt_cur < array_length(alts) ? alts[alt_cur][1] : undefinedcolor;     
    if slide_timer > 20 && slide_timer <= 100 
    slide_timer = 20; 
    if slide_timer > 100 slide_timer = 120-slide_timer; 
    //if you want to play a sound, play it right under here
    __selected_alt_dir = 0;
}

if swap_timer < 10 {
    __dclr = merge_color(__clr_p,__clr_c,swap_timer/10); 
} else {    
    __dclr = alt_cur < array_length(alts) ? alts[alt_cur][1] : undefinedcolor; 
}


var cursor_x = get_instance_x(cursor_id);
var cursor_y = get_instance_y(cursor_id);

alt_directive_hovering_button = point_in_rect(cursor_x, cursor_y,
    x+alt_directive_button_pos[0], y+alt_directive_button_pos[1],
    x+alt_directive_button_pos[0]+30, y+alt_directive_button_pos[1]+24)
if (alt_directive_hovering_button && array_length(__soup_alt_directives[@ alt_cur]) > 0) {
    suppress_cursor = true;
    //print(__soup_alt_directives[@ alt_cur])
    if (menu_a_pressed) {
        __selected_alt_dir++;
        __selected_alt_dir = __selected_alt_dir % (array_length(__soup_alt_directives[@ alt_cur])+1);
        css_anim_time = 0;
        alt_directive_button_timer = 6;
        sound_play(asset_get("mfx_change_color"),false,noone,0.25)
    }
}
if alt_directive_button_timer > 0 alt_directive_button_timer--;

real_alt = __selected_alt_dir == 0 ? alt_cur : __soup_alt_directives[@ alt_cur, __selected_alt_dir-1];
init_shader();

alt_changed = false;

prev_alt = alt_cur; 
css_timer++;
swap_timer += swap_timer < 10;
slide_timer += slide_timer < 120;

//Voice Mode Toggle

if (instance_exists(cursor_id))
{
    if (get_instance_x(cursor_id) > lang_pos[0] && get_instance_x(cursor_id) < lang_pos[2] && get_instance_y(cursor_id) > lang_pos[1] && get_instance_y(cursor_id) < lang_pos[3]) //lanugage settings
    {
        if (press_delay == 0) lang_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_lang ++;
            if (cur_lang > 1) cur_lang = 0;
            
            switch (cur_lang)
            {
                default: lang = 0; break;
                case 1: lang = 1; break;
            }
            sound_play(asset_get("mfx_option"));
            
            play_voice("select", 0)
            //the else above and this are both forcing one voice clip at a time so they don't overlap
            if (cur_voiceclip[0] != cur_voiceclip[1])
            {
                sound_stop(cur_voiceclip[1]);
                cur_voiceclip[1] = cur_voiceclip[0];
            }

            press_delay = 3;
            lang_button_state = 2;
        }
    }
    else
    {
        lang_button_state = 0;
        suppress_cursor = false;
    }
}

synced_vars = generate_synced_var(real_alt, 6, cur_lang, 2);
set_synced_var(player, synced_vars)


//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (lang_button_state == 2) lang_button_state = 2;
    press_delay --;
}


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
#define point_in_rect (px, py, x1, y1, x2, y2)
return 
    px == clamp(px, min(x1,x2), max(x1,x2)) && 
    py == clamp(py, min(y1,y2), max(y1,y2))

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

if (lang != 0)
{
	var num = random_func(6, array_length(arr)-1, true);
    cur_voiceclip[0] = sound_play(sound_get("vfx_" + string(arr[num])));
    voice_cooldown = _cooldown;
}
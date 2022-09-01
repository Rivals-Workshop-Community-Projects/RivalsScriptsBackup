var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if(x_temp >= (x + (player == 0? 12: (get_player_hud_color(player) == 8421504? 58: 74))) && x_temp <= (x + (player == 0? 38: (get_player_hud_color(player) == 8421504? 84: 100))) && y_temp >= (y + (player == 0? 44: 178)) && y_temp <= (y + (player == 0? 70: 204))){
    suppress_cursor = 1;
    if(menu_a_pressed && button_cool = 0){
        button_cool = 8;
        button_state = 2;
        sound_play(sound_get("hud_select"));
    }else if(!menu_a_pressed && button_cool = 0){
        button_state = 1;
        if(sound_p = 0){
            sound_play(sound_get("hud_scroll"));
            sound_p = 1;
        }
    }
}else if(button_cool = 0){
    button_state = 0;
    sound_p = 0;
}
button_cool += (button_cool > 0? -1: 0);
if(button_cool == 1){
    menu_css_version = (menu_css_version = 1? 0: 1);
}

set_synced_var(player, menu_css_version + 1)

//template
cpu_hover_update(); //put this at the VERY TOP of the file.

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
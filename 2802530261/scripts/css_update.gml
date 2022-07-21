/*var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if(x_temp >= (x + (get_player_hud_color(player) == 8421504? 62: 78)) && x_temp <= (x + (get_player_hud_color(player) == 8421504? 88: 104)) && y_temp >= (y + 180) && y_temp <= (y + 204)){
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
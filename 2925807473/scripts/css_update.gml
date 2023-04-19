//css_update.gml

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if(x_temp >= (x + (player == 0? 12: (get_player_hud_color(player) == 8421504? 58: 74))) && x_temp <= (x + (player == 0? 38: (get_player_hud_color(player) == 8421504? 84: 100))) && y_temp >= (y + (player == 0? 44: 178)) && y_temp <= (y + (player == 0? 70: 204))){
    suppress_cursor = 1;
    if(menu_a_pressed && button_cool = 0){
        button_cool = 8;
        sound_play(sound_get("hud_select"));
        if (voice == 0){
            button_state = 3;
            voice = 1;
            sound_stop(sound_get("css_jap"));
            sound_play(sound_get("css_eng"));
        }
        else if (voice == 1){
            button_state = 5;
            voice = 2;
            sound_play(sound_get("css_jap"));
            sound_stop(sound_get("css_eng"));
        }
        else if (voice == 2){
            button_state = 1;
            voice = 0;
            sound_stop(sound_get("css_eng"));
            sound_stop(sound_get("css_jap"));
        }
    }else if(!menu_a_pressed && button_cool = 0){
        if (voice == 0){
            button_state = 1;
        
        }
        else if (voice == 1){
            button_state = 3;
           
        }
         else if (voice == 2){
            button_state = 5;
           
        }
        if(sound_p = 0){
            sound_play(sound_get("hud_scroll"));
            sound_p = 1;
        }
    }
}else if(button_cool = 0){
     if (voice == 0){
            button_state = 0;
        
        }
        else if (voice == 1){
            button_state = 2;
           
        }
        else if (voice == 2){
            button_state = 4;
           
        }
    sound_p = 0;
}
button_cool += (button_cool > 0? -1: 0);
if(button_cool == 1){
    menu_css_version = voice;
}

set_synced_var(player, menu_css_version)
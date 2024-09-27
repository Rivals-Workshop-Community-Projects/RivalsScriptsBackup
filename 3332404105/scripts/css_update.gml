//update on the css
alt_time ++
sbahj_switcher ++

if (cur_alt != get_player_color(player)){
    alt_time = 0;
    cur_alt = get_player_color(player);
}

if (cur_alt != 8){
    if (sbahj_switcher == 1){
        if (get_synced_var(player) == 1){
            color_text_spr = sprite_get("css_text_hj");
            set_synced_var(player, 2);
        } else{
            color_text_spr = sprite_get("css_text_sb");
            set_synced_var(player, 1);
        }
    }
    if (sbahj_switcher >= 2){
        sbahj_switcher = 0
    }
}


if (alternate != get_player_color(player)){
    alternate = get_player_color(player);
    sound_play(sound_get("title_screen_beep"), false, false, 0.5);
}
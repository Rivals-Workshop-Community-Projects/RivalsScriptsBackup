//init shader

if get_player_color(player) == 1 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1.5 );
set_character_color_shading( 7, 1.25 );
}

if get_player_color(player) == 3 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1 );
set_character_color_shading( 7, 1.5 );
}

if get_player_color(player) == 8 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1 );
set_character_color_shading( 7, 3 );
}

if get_player_color(player) == 10 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 3 );
}

if get_player_color(player) == 11 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 2 );
}

if (get_player_color(player) == 10) || (get_player_color(player) == 11) || (get_player_color(player) == 14) {
    set_ui_element(UI_CHARSELECT, sprite_get("charselect_munch"));
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_munch"));
    set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_munch"));
} else {
    set_ui_element(UI_CHARSELECT, sprite_get("charselect_def"));
    set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_def"));
    set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_def"));
}

if get_player_color(player) == 12 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 2 );
set_character_color_shading( 7, 3 );
}

if get_player_color(player) == 13 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 2 );
set_character_color_shading( 7, 3 );
}

if get_player_color(player) == 14 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 3 );
}

if get_player_color(player) == 15 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 2 );
set_character_color_shading( 7, 2 );
}

if get_player_color(player) == 18 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 2 );
set_character_color_shading( 7, 2 );
}

if get_player_color(player) == 23 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1 );
set_character_color_shading( 7, 2 );
}

if get_player_color(player) == 24 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1 );
set_character_color_shading( 7, 1.75 );
}

if get_player_color(player) == 25 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 1 );
set_character_color_shading( 7, 2 );
}

if get_player_color(player) >= 27 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 0 );
}



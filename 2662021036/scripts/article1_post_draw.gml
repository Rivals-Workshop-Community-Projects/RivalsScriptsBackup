if ((get_local_setting(SET_HUD_SIZE) > 0 || get_local_setting(SET_HUD_NAMES) > 0)){
draw_sprite_ext( sprite_get("grassknot_indicator"), 0, x - 6, y + 18, 1, 1, 0, player_id.indicator_color, 1 );
}
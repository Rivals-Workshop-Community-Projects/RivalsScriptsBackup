// HODAN'S INIT SHADERS

// GBA Shaders
if (get_player_color(player) == 7) {
    for(i = 0; i < 6; i++) {
        set_character_color_shading(i, 0);
    }
}

if (get_player_color(player) == 13) {
    // Champion transparency
    set_character_color_slot(0, 104, 111, 111, 0.66);
    set_article_color_slot(0, 104, 111, 111, 0.66);
    set_character_color_slot(1, 104, 111, 111, 0.66);
    set_article_color_slot(1, 104, 111, 111, 0.66);
    set_character_color_slot(4, 104, 111, 111, 0.66);
    set_article_color_slot(4, 104, 111, 111, 0.66);
}

if (get_player_color(player) == 14) {
    set_character_color_shading(0, -3);
}

if ("rainbow" in self) {
    if (rainbow) {
        set_character_color_slot( 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
        set_article_color_slot( 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    }
}
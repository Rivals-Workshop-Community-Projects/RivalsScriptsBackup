switch(get_player_color("onlineCSS" in self && onlineCSS ? 0 : player)) {
    case 0:
        set_character_color_slot( 7, 0, 172, 244 ); //fix dress color
        break;
    // case 1:
    case 3:
        for (var i = 0; i < 8; i++) {
            set_character_color_shading(i, 0);
        }
        break;
}
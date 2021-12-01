switch(get_player_color(player)) {
    case 6:
        for(var i = 0; i < 3; ++i) {
            set_character_color_shading(i, 0.7);
        }
        break;
    
    case 8:
        for(var i = 0; i < 3; ++i) {
            set_character_color_shading(i, 0);
        }
        break;
}
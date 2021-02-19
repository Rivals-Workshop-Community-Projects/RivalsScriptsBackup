switch (get_player_color(player)) {
    case 2:
        // Raven
        set_character_color_shading(6, 0.5);
        break;
    case 4:
        // 2P
        set_character_color_shading(0, 1.5);
        break;
    case 8:
        // Abyss
        set_character_color_shading(6, 0.5);
        break;
    case 9:
        // Gameboy
        for (i = 0; i < 7; i++) {
            set_character_color_shading(i, 0);
        }
        if "alt_outline_color" in self
        if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
            outline_color=[15, 56, 15];
        }
        break;
    case 10:
        // Sprite Star
        set_character_color_shading(6, 0.5);
        break;
    case 11:
        // Acid
        set_character_color_shading(6, 0.5);
        break;
}


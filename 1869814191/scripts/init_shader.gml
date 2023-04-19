//init_shader

switch(get_player_color(player)){
    case 12:
        set_character_color_shading(5, 0.5);
    break;
    case 13:
        for(i = 0; i < 6; i++){
            set_character_color_shading(i, 0);
        }
    break;
}
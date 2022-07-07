switch(get_player_color(player)){
    case 0:
        set_character_color_slot(5, 254, 254, 255);
    break;
    case 22:
        for(i = 0; i < 2; i++){
            set_character_color_slot(i, 0, 0, 0, 0);
        }
        set_character_color_shading(2,-1);
    break;
}
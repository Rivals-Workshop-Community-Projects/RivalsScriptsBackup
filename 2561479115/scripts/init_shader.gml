var alt = get_player_color("ofix" in self ? ofix : player);
switch(alt) {
    case 20:
        set_character_color_shading(2,1.5);
        set_character_color_shading(6,3);
        //set_character_color_shading(5,8);
    break;
    case 22:
        set_character_color_shading(2, 1.1);
        set_character_color_shading(5, 2.1);
        set_character_color_shading(6, 2);
        
    break;
    case 23:
        set_character_color_shading(2, 1.3);
        set_character_color_shading(5, 2.1);
        set_character_color_shading(6, .5);
        
    break;
}
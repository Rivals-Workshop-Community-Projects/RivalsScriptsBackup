//whe nyoi shader

var char_color = get_player_color(player);


switch (char_color){
    case 1:
        set_character_color_shading(0, 0.75);
        set_character_color_shading(1, 1.25);
        set_character_color_shading(3, 1.25);
        set_character_color_shading(4, 0.75);
    break
    case 2:
        set_character_color_shading(0, 0.75);
        set_character_color_shading(1, 1.5);
        set_character_color_shading(3, 1.25);
        set_character_color_shading(4, 1.5);
    break
    case 3:
        set_character_color_shading(0, 0.5);
        set_character_color_shading(1, 1.25);
    break
    case 4:
        set_character_color_shading(1, 1.5);
        set_character_color_shading(2, 0.5);
        set_character_color_shading(3, 0.75);
    break
    case 5:
        set_character_color_shading(1, 4);
        set_character_color_shading(2, 2);
        set_character_color_shading(3, 2);
    break
    case 6:
        set_character_color_shading(1, 2);
    break
    case 7:
        set_character_color_shading(1, 2);
        set_character_color_shading(3, 0.5);
    break
    case 8:
        set_character_color_shading(0, 2);
        set_character_color_shading(1, 2);
    break
    case 10:
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        set_character_color_shading(4, 0);
    break
}
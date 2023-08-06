var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    case 7: //Inked
            set_character_color_shading(2, 0.6);
            set_character_color_shading(7, 0.6);
    break;
    case 8: //J. Geil
    case 25: //Desirae
    case 30: //Bojack
            set_character_color_shading(1, 0.8);
    break;
    case 9: //Polnareff
            set_character_color_shading(1, 0.9);
            set_character_color_shading(6, 0.7);
    break;
    case 10: //Josuke
            set_character_color_shading(1, 0.9);
    break;
    case 14: //Parasoul
            set_character_color_shading(1, 0.7);
            set_character_color_shading(5, 0.7);
    break;
    case 21: //Happy Chaos
        set_character_color_shading(1, 0.7);
        set_character_color_shading(6, 0.7);
    break;
    case 16: //Eltnum
    case 23: //Mollo
    case 26: //Ducky
    case 27: //Rokesha
            set_character_color_shading(1, 0.7);
    break;
}


if (object_index == asset_get("draw_result_screen"))
{
    if "winner_name" in self{
      if  get_player_color(player) == 30 {
        winner_name = "Holjack Horseman WINS!"
        }
    if get_player_color(player) == 31 {
        winner_name = "Mol Jorse WINS!"
        }
    }
}
var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));
switch (alt_cur) {
    // Code to adjust the shading darkness on the dark inner cloth bits for a bunch of alts
    case 1:
    case 2:
    case 3:
    case 4:
    case 10:
    case 12:
    case 13:
    case 18:
    case 21:
    case 25:
    case 30:
        set_character_color_shading(5, 1.3);
    break;
    case 6:
    case 15:
    case 19:
    case 27:
        set_character_color_shading(5, 1.7);
    break;
    case 8:
    case 11:
    case 14:
    case 16:
    case 26:
        set_character_color_shading(5, 2.0);
    break;
    case 20:
    case 23:
    case 28:
        set_character_color_shading(5, 3.0);
    break;
    //code to make the Early Access pallet have no shading
    case 7:
        for(i = 0; i < 8; i++){
            set_character_color_shading(i, 0);
        }
    break;
    

}
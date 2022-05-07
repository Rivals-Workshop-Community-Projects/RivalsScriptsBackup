//init_shader
// True Default Colors
if get_player_color(player) == 0{
    set_character_color_slot(1, 228, 236, 247);
    set_character_color_slot(2, 228, 236, 247);
    set_character_color_slot(4, 78, 109, 199);
}

if get_player_color(player) == 6{
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

if get_player_color(player) == 8{
    switch (get_match_setting(SET_SEASON)) {
      case 1: // valentines
        set_character_color_slot( 0, 255, 238, 247 ); //Fur
        set_character_color_slot( 1, 255, 238, 247 ); //Hair/Tail
        set_character_color_slot( 2, 255, 238, 247 ); //Floof
        set_character_color_slot( 3, 255, 168, 214 ); //Jacket
        set_character_color_slot( 4, 225, 73, 73 ); //Skirt
        set_character_color_slot( 5, 231, 3, 142 ); //Boots
        set_character_color_slot( 6, 225, 73, 73 ); //Umbrella
        set_character_color_slot( 7, 254, 176, 255 ); //IceIceBaby
        break;
      case 2: // summer
        set_character_color_slot( 0, 255, 246, 140 ); //Fur
        set_character_color_slot( 1, 255, 166, 40 ); //Hair/Tail
        set_character_color_slot( 2, 255, 166, 40 ); //Floof
        set_character_color_slot( 3, 89, 204, 233 ); //Jacket
        set_character_color_slot( 4, 89, 204, 233 ); //Skirt
        set_character_color_slot( 5, 69, 146, 114 ); //Boots
        set_character_color_slot( 6, 255, 253, 229 ); //Umbrella
        set_character_color_slot( 7, 89, 204, 233 ); //IceIceBaby
        break;
      case 3: // halloween
        set_character_color_slot( 0, 255, 238, 247 ); //Fur
        set_character_color_slot( 1, 255, 154, 13 ); //Hair/Tail
        set_character_color_slot( 2, 59, 51, 47 ); //Floof
        set_character_color_slot( 3, 115, 63, 171 ); //Jacket
        set_character_color_slot( 4, 115, 63, 171 ); //Skirt
        set_character_color_slot( 5, 59, 51, 47 ); //Boots
        set_character_color_slot( 6, 148, 0, 0 ); //Umbrella
        set_character_color_slot( 7, 255, 154, 13 ); //IceIceBaby
        break;
      case 4: // christmas
        set_character_color_slot( 0, 255, 252, 252 ); //Fur
        set_character_color_slot( 1, 255, 252, 252 ); //Hair/Tail
        set_character_color_slot( 2, 255, 252, 252 ); //Floof
        set_character_color_slot( 3, 109, 194, 83 ); //Jacket
        set_character_color_slot( 4, 109, 194, 83 ); //Skirt
        set_character_color_slot( 5, 37, 37, 37 ); //Boots
        set_character_color_slot( 6, 255, 72, 72 ); //Umbrella
        set_character_color_slot( 7, 109, 194, 83 ); //IceIceBaby
        break;
    }
}
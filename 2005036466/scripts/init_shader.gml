//Init Shader

// removes all shading for color 8:
if (get_player_color( player ) == 10) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

// Automated Seasonal
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 6, 0, 99, 57, 47 ); //Dark Fur
    set_color_profile_slot( 6, 1, 99, 57, 47 ); //Light Fur
    set_color_profile_slot( 6, 2, 214, 126, 202 ); //Eye
    set_color_profile_slot( 6, 3, 46, 38, 36 ); //Hair
    set_color_profile_slot( 6, 4, 196, 88, 88 ); //Metal
    set_color_profile_slot( 6, 5, 38, 30, 30 ); //Boots
    set_color_profile_slot( 6, 6, 82, 24, 24 ); //Pants
    set_color_profile_slot( 6, 7, 230, 115, 190 ); //Tanktop
    break;
  case 2: // summer
    set_color_profile_slot( 6, 0, 255, 166, 40 ); //Dark Fur
    set_color_profile_slot( 6, 1, 255, 237, 139 ); //Light Fur
    set_color_profile_slot( 6, 2, 214, 126, 202 ); //Eye
    set_color_profile_slot( 6, 3, 33, 29, 26 ); //Hair
    set_color_profile_slot( 6, 4, 89, 204, 233 ); //Metal
    set_color_profile_slot( 6, 5, 78, 69, 60 ); //Boots
    set_color_profile_slot( 6, 6, 81, 36, 76 ); //Pants
    set_color_profile_slot( 6, 7, 166, 71, 155 ); //Tanktop
    break;
  case 3: // halloween
    set_color_profile_slot( 6, 0, 127, 148, 166 ); //Dark Fur
    set_color_profile_slot( 6, 1, 217, 222, 226 ); //Light Fur
    set_color_profile_slot( 6, 2, 250, 4, 4 ); //Eye
    set_color_profile_slot( 6, 3, 43, 49, 49 ); //Hair
    set_color_profile_slot( 6, 4, 201, 201, 201 ); //Metal
    set_color_profile_slot( 6, 5, 78, 69, 60 ); //Boots
    set_color_profile_slot( 6, 6, 28, 26, 28 ); //Pants
    set_color_profile_slot( 6, 7, 41, 46, 51 ); //Tanktop
    break;
  case 4: // christmas
    set_color_profile_slot( 6, 0, 255, 252, 252 ); //Dark Fur
    set_color_profile_slot( 6, 1, 255, 252, 252 ); //Light Fur
    set_color_profile_slot( 6, 2, 214, 126, 202 ); //Eye
    set_color_profile_slot( 6, 3, 37, 37, 37 ); //Hair
    set_color_profile_slot( 6, 4, 109, 194, 83 ); //Metal
    set_color_profile_slot( 6, 5, 12, 170, 0 ); //Boots
    set_color_profile_slot( 6, 6, 37, 37, 37 ); //Pants
    set_color_profile_slot( 6, 7, 239, 52, 15 ); //Tanktop
    break;
}

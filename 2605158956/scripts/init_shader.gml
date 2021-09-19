if (get_player_color( player ) == 6 || get_player_color( player ) == 25) {
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, 0);
    }
}

switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 8, 0, 255, 191, 228 ); //Skin
    set_color_profile_slot( 8, 1, 242, 136, 159 ); //Cheeks
    set_color_profile_slot( 8, 2, 255, 56, 148 ); //Leaf1
    set_color_profile_slot( 8, 3, 255, 255, 255 ); //Leaf2
    set_color_profile_slot( 8, 4, 173, 0, 0 ); //Sword
    break;
  case 2: // summer
    set_color_profile_slot( 8, 0, 255, 220, 145 ); //Skin
    set_color_profile_slot( 8, 1, 242, 144, 53 ); //Cheeks
    set_color_profile_slot( 8, 2, 82, 226, 255 ); //Leaf1
    set_color_profile_slot( 8, 3, 29, 153, 128 ); //Leaf2
    set_color_profile_slot( 8, 4, 240, 151, 98 ); //Sword
    break;
  case 3: // halloween
    set_color_profile_slot( 8, 0, 219, 128, 48 ); //Skin
    set_color_profile_slot( 8, 1, 255, 255, 0 ); //Cheeks
    set_color_profile_slot( 8, 2, 101, 50, 117 ); //Leaf1
    set_color_profile_slot( 8, 3, 23, 105, 14 ); //Leaf2
    set_color_profile_slot( 8, 4, 145, 201, 64 ); //Sword
    break;
  case 4: // christmas
    set_color_profile_slot( 8, 0, 254, 255, 252 ); //Skin
    set_color_profile_slot( 8, 1, 242, 162, 162 ); //Cheeks
    set_color_profile_slot( 8, 2, 59, 110, 48 ); //Leaf1
    set_color_profile_slot( 8, 3, 166, 0, 44 ); //Leaf2
    set_color_profile_slot( 8, 4, 224, 191, 56 ); //Sword
    break;
}
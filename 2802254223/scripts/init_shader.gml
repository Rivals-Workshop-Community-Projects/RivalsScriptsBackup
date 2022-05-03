//if object_index != oPlayer exit;

switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 6, 0, 250, 177, 222 ); //Skin
    set_color_profile_slot( 6, 1, 255, 43, 135 ); //Outfit1
    set_color_profile_slot( 6, 2, 168, 0, 0 ); //Outfit2
    set_color_profile_slot( 6, 3, 255, 255, 255 ); //Teeth
    set_color_profile_slot( 6, 4, 117, 49, 49 ); //Shades
    set_color_profile_slot( 6, 5, 255, 255, 255 ); //Spear
    set_color_profile_slot( 6, 6, 255, 217, 240 ); //Card1
    break;
  case 2: // summer
    set_color_profile_slot( 6, 0, 232, 180, 116 ); //Skin
    set_color_profile_slot( 6, 1, 79, 128, 90 ); //Outfit1
    set_color_profile_slot( 6, 2, 115, 230, 224 ); //Outfit2
    set_color_profile_slot( 6, 3, 255, 254, 232 ); //Teeth
    set_color_profile_slot( 6, 4, 41, 36, 24 ); //Shades
    set_color_profile_slot( 6, 5, 255, 238, 128 ); //Spear
    set_color_profile_slot( 6, 6, 255, 254, 230 ); //Card1
    break;
  case 3: // halloween
    set_color_profile_slot( 6, 0, 242, 145, 56 ); //Skin
    set_color_profile_slot( 6, 1, 69, 41, 79 ); //Outfit1
    set_color_profile_slot( 6, 2, 21, 130, 0 ); //Outfit2
    set_color_profile_slot( 6, 3, 255, 242, 0 ); //Teeth
    set_color_profile_slot( 6, 4, 77, 50, 19 ); //Shades
    set_color_profile_slot( 6, 5, 122, 91, 54 ); //Spear
    set_color_profile_slot( 6, 6, 255, 255, 255 ); //Card1
    break;
  case 4: // christmas
    set_color_profile_slot( 6, 0, 193, 218, 227 ); //Skin
    set_color_profile_slot( 6, 1, 122, 63, 63 ); //Outfit1
    set_color_profile_slot( 6, 2, 75, 163, 75 ); //Outfit2
    set_color_profile_slot( 6, 3, 252, 255, 255 ); //Teeth
    set_color_profile_slot( 6, 4, 33, 65, 79 ); //Shades
    set_color_profile_slot( 6, 5, 255, 244, 48 ); //Spear
    set_color_profile_slot( 6, 6, 255, 255, 255 ); //Card1
    break;
}

if (get_player_color( player ) == 7) {
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, 0);
    }
}

if (get_player_color( player ) == 10) {
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, -1);
    }
}

/*if(invertMode)
{
    outline_color = [255,255,255];
    //InvertColors
    for(i = 0; i < 7; i++)
    {
        set_character_color_slot(i, 255-get_color_profile_slot_r( get_player_color(player), i), 
        255-get_color_profile_slot_g( get_player_color(player), i), 255-get_color_profile_slot_b( get_player_color(player), i), 1);
        set_article_color_slot(i, 255-get_color_profile_slot_r( get_player_color(player), i), 
        255-get_color_profile_slot_g( get_player_color(player), i), 255-get_color_profile_slot_b( get_player_color(player), i), 1);
    }
}
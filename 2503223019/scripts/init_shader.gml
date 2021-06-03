
//Stolen from Chuckya which was stolen from Shyguy which was stolen from Acid, if you steal this keep the chain going lol

if (get_player_color( player ) == 9) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

//Stolen from SuperSonicNK but they put it in #modding-resources so that's allowed
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    set_color_profile_slot( 7, 0, 255, 238, 247 ); //FUR
    set_color_profile_slot( 7, 1, 232, 162, 162 ); //FURMID
    set_color_profile_slot( 7, 2, 206, 46, 46 ); //FURDARK
    set_color_profile_slot( 7, 3, 255, 133, 193 ); //JACKET
    set_color_profile_slot( 7, 4, 71, 0, 28 ); //PANTS
    set_color_profile_slot( 7, 5, 206, 46, 46 ); //SHIRT
    set_color_profile_slot( 7, 6, 255, 74, 162 ); //SHIRTDESIGN
    set_color_profile_slot( 7, 7, 255, 0, 125 ); //GLASSES
  case 2: // summer
    //set your summer holiday alt
    set_color_profile_slot( 7, 0, 255, 246, 140 ); //FUR
    set_color_profile_slot( 7, 1, 255, 208, 97 ); //FURMID
    set_color_profile_slot( 7, 2, 255, 166, 40 ); //FURDARK
    set_color_profile_slot( 7, 3, 93, 203, 233 ); //JACKET
    set_color_profile_slot( 7, 4, 69, 146, 114 ); //PANTS
    set_color_profile_slot( 7, 5, 255, 166, 40 ); //SHIRT
    set_color_profile_slot( 7, 6, 93, 203, 233 ); //SHIRTDESIGN
    set_color_profile_slot( 7, 7, 93, 203, 233 ); //GLASSES
    break;
  case 3: // halloween
    //set your halloween holiday alt
    set_color_profile_slot( 7, 0, 114, 156, 89 ); //FUR
    set_color_profile_slot( 7, 1, 46, 66, 45 ); //FURMID
    set_color_profile_slot( 7, 2, 36, 36, 36 ); //FURDARK
    set_color_profile_slot( 7, 3, 97, 97, 91 ); //JACKET
    set_color_profile_slot( 7, 4, 77, 102, 60 ); //PANTS
    set_color_profile_slot( 7, 5, 156, 105, 55 ); //SHIRT
    set_color_profile_slot( 7, 6, 237, 183, 36 ); //SHIRTDESIGN
    set_color_profile_slot( 7, 7, 61, 118, 156 ); //GLASSES
    break;
  case 4: // christmas
    //set your christmas holiday alt
    set_color_profile_slot( 7, 0, 222, 72, 72 ); //FUR
    set_color_profile_slot( 7, 1, 125, 37, 37 ); //FURMID
    set_color_profile_slot( 7, 2, 37, 37, 37 ); //FURDARK
    set_color_profile_slot( 7, 3, 54, 156, 25 ); //JACKET
    set_color_profile_slot( 7, 4, 176, 52, 52 ); //PANTS
    set_color_profile_slot( 7, 5, 255, 255, 255 ); //SHIRT
    set_color_profile_slot( 7, 6, 0, 255, 0 ); //SHIRTDESIGN
    set_color_profile_slot( 7, 7, 255, 255, 255 ); //GLASSES
}

//
if object_index != oPlayer exit;

set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))


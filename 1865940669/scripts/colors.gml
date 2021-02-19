//DEFAULT COLOR (R,G,B)
set_color_profile_slot(0, 0, 255, 255, 255); //SKIN

//COLOR RANGE (H,S,V)
set_color_profile_slot_range(0, 4, 10, 41);

//Blue Color
set_color_profile_slot(1, 0, 157, 159, 255);

//Red Color
set_color_profile_slot(2, 0, 255, 75, 75);

//Green Color
set_color_profile_slot(3, 0, 120, 255, 120);

//Black Color
set_color_profile_slot(4, 0, 180, 180, 180);

//Yellow Color
set_color_profile_slot(5, 0, 235, 248, 69);

switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
    //set your valentines holiday alt
    break;
  case 2: // summer
    //set your summer holiday alt
    break;
  case 3: // halloween
    //set your halloween holiday alt
    break;
  case 4: // christmas
    //set your christmas holiday alt
    break;
}
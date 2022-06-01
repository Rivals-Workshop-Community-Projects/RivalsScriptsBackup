//Init Shader

// removes all shading for color 9:
if (get_player_color( player ) == 9) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

// Automated Seasonal
switch (get_match_setting(SET_SEASON)) {
  case 1: // valentines
   
    break;
  case 2: // summer
  
    break;
  case 3: // halloween
    
    break;
  case 4: // christmas
 
    break;
}

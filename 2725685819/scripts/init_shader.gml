switch (get_player_color(player)){
    
    //DMC
    case 6:
    case 7:
    set_character_color_shading( 0, 0.6 ); //hoodie
    set_character_color_shading( 3, 0.6 ); //shorts
    break;
    break;
    
    //Voidfox
    case 8:
    set_character_color_shading( 6, 0 );
    set_character_color_shading( 0, 0.8 );
    set_character_color_shading( 2, 0.8 );
    set_character_color_shading( 3, 0.5 );
    break;
    
    //Buranyuu
    case 9:
    set_character_color_shading( 6, 1.2 );
    break;
    

    //this pear
    case 12:
    set_character_color_shading( 0, 0.4 ); //hoodie
    break;    

    //GB
    case 14:
    set_character_color_shading( 0, 0 );
    set_character_color_shading( 1, 0 );
    set_character_color_shading( 2, 0 );
    set_character_color_shading( 3, 0 );
    set_character_color_shading( 4, 0 );
    set_character_color_shading( 5, 0 );
    set_character_color_shading( 6, 0 );
    set_character_color_shading( 7, 0 );
    outline_color = [35, 67, 49];
    break;
  
    case 15:
    set_character_color_shading( 0, 1.25 ); //hoodie
    set_character_color_shading( 1, 1.25 ); //blade
    set_character_color_shading( 2, 1.25 ); //hood
    set_character_color_shading( 3, 1.25 ); //shorts
    set_character_color_shading( 4, 1.25 ); //hair
    set_character_color_shading( 5, 1.25 ); //sheathe
    set_character_color_shading( 6, 1.25 ); //skin
    set_character_color_shading( 7, 1.25 ); //PURE WHITE
    break;
    
    case 16:
    set_character_color_shading( 0, 1.25 ); //hoodie
    set_character_color_shading( 1, 1.25 ); //blade
    set_character_color_shading( 2, 1.25 ); //hood
    set_character_color_shading( 3, 1.25 ); //shorts
    set_character_color_shading( 4, 1.25 ); //hair
    set_character_color_shading( 5, 1.25 ); //sheathe
    set_character_color_shading( 6, 1.25 ); //skin
    set_character_color_shading( 7, 1.25 ); //PURE WHITE
    break;
    
    
    //Golden
    case 18:
    outline_color = [26, 16, 16];
    break;
    
        

    
    // //Annie
    // case 26:
    // set_color_profile_slot(26, 6, 255,255,255);
    // break;
    

    
    //BLM
    case 31:
    //set_character_color_shading( 0, 0 ); //skin
    set_character_color_shading( 0, 0.5 ); //hoodie
    set_character_color_shading( 2, 1.5 ); //hood
    set_character_color_shading( 3, 1.5 ); //shorts
    set_character_color_shading( 4, 0.4 ); //hair
    //set_character_color_shading( 5, 0 ); //sheathe
    //set_character_color_shading( 6, 0 ); //blade
    //set_character_color_shading( 7, 0 ); //PURE WHITE
    break;
    
    default:
    break;
}

// if (get_player_color( player ) == 14) {

// }

// if (get_player_color( player ) == 14) {
//  
//  set_character_color_shading( 2, 0 );
//  set_character_color_shading( 4, 0 );
//  set_character_color_shading( 5, 0 );
// }

// if (get_player_color( player ) == 10) {
//  outline_color = [207, 207, 207];
//  set_character_color_shading( 2, 0 );
//  set_character_color_shading( 4, 0 );
//  set_character_color_shading( 5, 0 );
// }



#define rangeSet(sha, col) // Auto-sets ranges to 1. Translates GML's asinine BGR hex colors to RGB.
 
set_color_profile_slot(0, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
set_color_profile_slot_range(sha, 1, 1, 1);
 
 
 
#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));
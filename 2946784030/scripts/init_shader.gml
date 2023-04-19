//Shirt becomes red
if (get_player_color( player ) == 0) {
    set_character_color_slot(2, 255, 207, 61, 1);
}


//Classic skins no shading
if (get_player_color( player ) == 17)
|| (get_player_color( player ) == 24){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}


//Blues become Purples
if (get_player_color( player ) == 17)
|| (get_player_color( player ) == 24){
    
    // Overalls
    set_color_profile_slot( 0, 0, 191, 31, 240 );
    set_color_profile_slot_range( 0, 83, 53, 74 );

    //Whites
    set_color_profile_slot( 0, 7, 181, 207, 226 );
    set_color_profile_slot_range( 7, 16, 15, 48 );
    
    
}

if (get_player_color( player ) != 17)
&& (get_player_color( player ) != 24){
    
    // Color range resets
    
    //Overalls
    set_color_profile_slot( 0, 0, 191, 31, 240 );
    set_color_profile_slot_range( 0, 9, 1, 34 );
    
    //Whites
    set_color_profile_slot( 0, 7, 69, 162, 224 );
    set_color_profile_slot_range( 7, 17, 64, 68 );
    
}
var playerAlt = "currAlt" in self ? currAlt : get_player_color(player);

if (playerAlt == 0){
    /*set_character_color_slot( 1, get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0) );
    set_character_color_slot( 3, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );
    set_character_color_slot( 4, get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2) );*/
    
    set_character_color_slot( 0, 245, 247, 252 ); // Hat
    set_character_color_slot( 1, 245, 247, 252 ); // Apron
    set_character_color_slot( 2, 158, 67, 18 ); // Hair
    set_character_color_slot( 3, 158, 67, 18 ); // Shirt
    set_character_color_slot( 4, 158, 67, 18 ); // Shoes
    set_character_color_slot( 5, 251, 178, 145 ); // Skin
    set_character_color_slot( 6, 136, 168, 200 ); // Fur
    set_character_color_slot( 7, 216, 104, 160 ); // Nose
    
    set_article_color_slot( 0, 245, 247, 252 ); // Hat
    set_article_color_slot( 1, 245, 247, 252 ); // Apron
    set_article_color_slot( 2, 158, 67, 18 ); // Hair
    set_article_color_slot( 3, 158, 67, 18 ); // Shirt
    set_article_color_slot( 4, 158, 67, 18 ); // Shoes
    set_article_color_slot( 5, 251, 178, 145 ); // Skin
    set_article_color_slot( 6, 136, 168, 200 ); // Fur
    set_article_color_slot( 7, 216, 104, 160 ); // Nose
}


if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 17) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
/*if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

if (get_player_color( player ) == 8) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}


if (get_player_color( player ) == 12 || get_player_color( player ) == 11 || get_player_color( player ) == 5) {
        set_character_color_shading( 2, 0.5 );
}


if (get_player_color( player ) == 6) {
        set_character_color_shading( 2, 0.8 );
}*/
// init_shader.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/init_and_attack_scripts.html#initializing-graphics

if (get_player_color(player) == 14){
    for(var i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

if (get_player_color(player) == 15){
    set_character_color_slot( 0, 201, 201, 220, .5 );
    set_character_color_slot( 2, 178, 255, 208, .5 );
    set_character_color_slot( 4, 201, 201, 220, .5 );
    
    set_article_color_slot( 0, 201, 201, 220, .7 );
    set_article_color_slot( 2, 178, 255, 208, .7 );
    set_article_color_slot( 4, 201, 201, 220, .7 );
}

// // for recoloring merchant port for no reason
// set_article_color_slot(6, 58, 27, 134);

// // colors.gml
// // // Orcane (ONLY FOR RECOLORING MERCHANT PORT)
// set_color_profile_slot( 0, 6, 0, 108, 191 );
// set_color_profile_slot_range( 6, 10, 66, 26 );
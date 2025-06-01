//init shader

switch (get_player_color(player)) {
    case 6:
        for (var slot_num = 0; slot_num < 8; slot_num++) {
            set_character_color_shading( slot_num, 0 );
        }
        outline_color=[35, 67, 49]
    break;
    case 20: 
        set_character_color_shading( 2, 0 );
        set_character_color_shading( 3, 0 );
}

//my name is teto pc and i have a song to see
if (variable_instance_exists(id, "extra_col")){
    if (extra_col == 1){
        // Teto
        set_character_color_slot( 0, 226, 71, 103 ); //Bowtrash
        set_character_color_slot( 1, 234, 232, 233 ); //Monitor
        set_character_color_slot( 2, 66, 58, 49 ); //Screen
        set_character_color_slot( 3, 214, 58, 67 ); //FaceElec
        set_character_color_slot( 4, 128, 117, 106 ); //PipeMetal
        set_character_color_slot( 5, 214, 174, 98 ); //Pinky
        set_character_color_slot( 6, 169, 160, 163 ); //Rag
        set_character_color_slot( 7, 226, 71, 103 ); //Acid
        
        set_article_color_slot( 0, 226, 71, 103 ); //Bowtrash
        set_article_color_slot( 1, 234, 232, 233 ); //Monitor
        set_article_color_slot( 2, 66, 58, 49 ); //Screen
        set_article_color_slot( 3, 214, 58, 67 ); //FaceElec
        set_article_color_slot( 4, 128, 117, 106 ); //PipeMetal
        set_article_color_slot( 5, 214, 174, 98 ); //Pinky
        set_article_color_slot( 6, 169, 160, 163 ); //Rag
        set_article_color_slot( 7, 226, 71, 103 ); //Acid
    }
}
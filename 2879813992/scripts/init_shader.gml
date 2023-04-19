//
if (get_player_color( player ) == 0) {
    set_character_color_slot( 4, 255, 255, 255);
    set_article_color_slot( 4, 255, 255, 255);
    set_character_color_slot( 5, 150, 84, 54);
    set_article_color_slot( 5, 150, 84, 54);
    set_character_color_slot( 6, 246, 201, 201);
    set_article_color_slot( 6, 246, 201, 201);
    set_character_color_slot( 7, 190, 212, 211);
    set_article_color_slot( 7, 190, 212, 211);
    if(curr_materia == 0){
    set_character_color_slot( 0, 221, 217, 255);
    set_article_color_slot( 0,  221, 217, 255);
    }
}

switch(curr_materia){
    case 0:
    set_character_color_shading(0,0.6); 
    set_character_color_slot( 0, 221, 217, 255);
    set_article_color_slot( 0,  221, 217, 255);
    break;
    
    case 1:
    set_character_color_slot( 0, 237, 124, 95);
    set_article_color_slot( 0, 237, 124, 95);
    set_character_color_shading(0,1.5); 
    break;
    
    case 2:
    set_character_color_slot( 0, 142, 250, 253);
    set_article_color_slot( 0, 142, 250, 253);
    set_character_color_shading(0,1.25); 
    break;
    
    case 3:
    set_character_color_slot( 0, 255, 235, 156);
    set_article_color_slot( 0, 255, 235, 156);
    set_character_color_shading(0,1.2); 
    break;

    
}



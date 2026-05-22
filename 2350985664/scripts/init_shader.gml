//init_shader

switch (get_player_color(player)) {
    case 10: //Hatate Alt Fix
         set_character_color_shading(2,0.5); 
    break;
   
    
}

if  (get_player_color(player) == 15) { //check for the alt slot you want to do this on
    set_character_color_slot( 2, 0, 0, 0, 0);
    set_article_color_slot( 2, 0, 0, 0, 0);
    set_character_color_slot( 5, 0, 0, 0, 0);
    set_article_color_slot( 5, 0, 0, 0, 0);
}
//init_shader.gml
switch(get_player_color(player)){
    case 1: //red
        set_article_color_slot( 5, 255, 146, 146, 1 ); //gas1
        set_article_color_slot( 6, 198, 0, 74, 1 ); //gas2
        set_article_color_slot( 0, 255, 146, 146, 1 ); //gas3
        set_article_color_slot( 1, 93, 35, 85, 1 ); //gas 4
    break;
    
    case 2: //blue
        set_article_color_slot( 5, 82, 178, 252, 1 ); //gas1
        set_article_color_slot( 6, 52, 94, 219, 1 ); //gas2
        set_article_color_slot( 0, 181, 223, 255, 1 ); //gas3
        set_article_color_slot( 1, 50, 24, 162, 1 ); //gas 4
    break;
    
    case 3: //yellow
        set_article_color_slot( 5, 222, 255, 85, 1 ); //gas1
        set_article_color_slot( 6, 199, 131, 38, 1 ); //gas2
        set_article_color_slot( 0, 213, 255, 189, 1 ); //gas3
        set_article_color_slot( 1, 106, 48, 22, 1 ); //gas 4
    break;
    
    case 4: //green
        set_article_color_slot( 5, 25, 222, 38, 1 ); //gas1
        set_article_color_slot( 6, 45, 124, 26, 1 ); //gas2
        set_article_color_slot( 0, 128, 255, 175, 1 ); //gas3
        set_article_color_slot( 1, 24, 49, 9, 1 ); //gas 4
    break;
    
    case 5: //assassin's creed
        set_article_color_slot( 5, 189, 209, 214, 1 ); //gas1
        set_article_color_slot( 6, 129, 150, 155, 1 ); //gas2
        set_article_color_slot( 0, 231, 255, 240, 1 ); //gas3
        set_article_color_slot( 1, 80, 99, 103, 1 ); //gas 4
    break;
    
    default: 
        // Gas 1
        set_article_color_slot( 5, 149, 217, 135, 1 );
        // Gas 2
        set_article_color_slot( 6, 71, 115, 102, 1 );
        // gas3
        set_article_color_slot( 0, 196, 240, 163, 1 );
        // gas 4
        set_article_color_slot( 1, 32, 62, 79, 1 );
        break;
}


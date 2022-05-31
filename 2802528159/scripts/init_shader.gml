switch(anger_state){
    case 0:
    if(get_player_color(player) == 13 || get_player_color(player) == 26){
        set_character_color_slot( 5, 199, 199, 199 ); //eye 1
        set_article_color_slot( 5, 199, 199, 199 ); //eye 1
        set_character_color_slot( 6, 255, 255, 255 ); //eye 2
        set_article_color_slot( 6, 255, 255, 255 ); //eye 2
    }else if(get_player_color(player) == 14){
        set_character_color_slot( 5, 255, 11, 11 ); //eye 1
        set_article_color_slot( 5, 255, 11, 11 ); //eye 1
        set_character_color_slot( 6, 255, 155, 69 ); //eye 2
        set_article_color_slot( 6, 255, 155, 69 ); //eye 2
    }else if(get_player_color(player) == 15 || get_player_color(player) == 19){
        set_character_color_slot( 5, 15, 181, 0 ); //eye 1
        set_article_color_slot( 5, 15, 181, 0 ); //eye 1
        set_character_color_slot( 6, 90, 240, 77 ); //eye 2
        set_article_color_slot( 6, 90, 240, 77 ); //eye 2
    }else if(get_player_color(player) == 24){
        set_character_color_slot( 5, 15, 56, 15 ); //eye 1
        set_article_color_slot( 5, 15, 56, 15 ); //eye 1
        set_character_color_slot( 6, 155, 188, 15 ); //eye 2
        set_article_color_slot( 6, 155, 188, 15 ); //eye 2
    }else if(get_player_color(player) == 25){
        set_character_color_slot( 5, 145, 60, 207 ); //eye 1
        set_article_color_slot( 5, 145, 60, 207 ); //eye 1
        set_character_color_slot( 6, 220, 113, 251 ); //eye 2
        set_article_color_slot( 6, 220, 113, 251 ); //eye 2
    }else{
        set_character_color_slot( 5, 11, 186, 255 ); //eye 1
        set_article_color_slot( 5, 11, 186, 255 ); //eye 1
        set_character_color_slot( 6, 69, 255, 243 ); //eye 2
        set_article_color_slot( 6, 69, 255, 243 ); //eye 2
    }
    break;
    case 1:
    if(get_player_color(player) == 24){
        set_character_color_slot( 5, 139, 172, 15 ); //eye 1
        set_article_color_slot( 5, 139, 172, 15 ); //eye 1
        set_character_color_slot( 6, 155, 188, 15 ); //eye 2
        set_article_color_slot( 6, 155, 188, 15 ); //eye 2
    }else{
        set_character_color_slot( 5, 255, 195, 0 ); //eye 1
        set_article_color_slot( 5, 255, 195, 0 ); //eye 1
        set_character_color_slot( 6, 255, 230, 130 ); //eye 2
        set_article_color_slot( 6, 255, 230, 130 ); //eye 2
    }
    break;
    case 2:
    if(get_player_color(player) == 14){
        set_character_color_slot( 5, 11, 186, 255 ); //eye 1
        set_article_color_slot( 5, 11, 186, 255 ); //eye 1
        set_character_color_slot( 6, 69, 255, 243 ); //eye 2
        set_article_color_slot( 6, 69, 255, 243 ); //eye 2
    }else if(get_player_color(player) == 24){
        set_character_color_slot( 5, 15, 56, 15 ); //eye 1
        set_article_color_slot( 5, 15, 56, 15 ); //eye 1
        set_character_color_slot( 6, 48, 98, 48 ); //eye 2
        set_article_color_slot( 6, 48, 98, 48 ); //eye 2
    }else{
        set_character_color_slot( 5, 255, 11, 11 ); //eye 1
        set_article_color_slot( 5, 255, 11, 11 ); //eye 1
        set_character_color_slot( 6, 255, 155, 69 ); //eye 2
        set_article_color_slot( 6, 255, 155, 69 ); //eye 2
    }
    break;
}

if(get_player_color(player) == 24){
    set_character_color_shading(0, 0);
    set_character_color_shading(1, 0);
    set_character_color_shading(2, 0);
    set_character_color_shading(3, 0);
    set_character_color_shading(4, 0);
    set_character_color_shading(5, 0);
    set_character_color_shading(6, 0);
    set_character_color_shading(7, 0);
}else{
    set_character_color_shading(0, 1);
    set_character_color_shading(1, 1);
    set_character_color_shading(2, 1);
    set_character_color_shading(3, 1);
    set_character_color_shading(4, 1);
    set_character_color_shading(5, 1);
    set_character_color_shading(6, 1);
    set_character_color_shading(7, 1);
}
// empty


switch (get_player_color(player))
{
    case 0:
    	//Cap
        set_character_color_slot(0, 102, 60, 222 );
        set_article_color_slot(0, 102, 60, 222 );
        //Shirt
        set_character_color_slot(1, 102, 60, 222 );
        set_article_color_slot(1, 102, 60, 222 );
        //Overalls
        set_character_color_slot(2, 36, 34, 84 );
        set_article_color_slot(2, 36, 34, 84 );
        //Shoes
        set_character_color_slot(3, 214, 96, 0 );
        set_article_color_slot(3, 214, 96, 0 );
        //Creams
        set_character_color_slot(4, 200, 218, 232 );
        set_article_color_slot(4, 200, 218, 232 );
        //Eye
        set_character_color_slot(5, 0, 136, 255 );
        set_article_color_slot(5, 0, 136, 255 );
        //Nose
        set_character_color_slot(6, 232, 58, 58 );
        set_article_color_slot(6, 232, 58, 58 );
        //Skin
        set_character_color_slot(7,  207, 108, 72 );
        set_article_color_slot(7,  207, 108, 72 );
    break;
    case 8:
        set_character_color_shading( 0, 0.5 );
        set_character_color_shading( 1, 0.5 );
        set_character_color_shading( 2, 0.5 );
        set_character_color_shading( 3, 0.5 );
        set_character_color_shading( 4, 0.5 );
        set_character_color_shading( 5, 0.5 );
        set_character_color_shading( 6, 0.5 );
        set_character_color_shading( 7, 0.5 );
    break;
    case 2:
        set_character_color_shading( 0, 0.7 );
        set_character_color_shading( 1, 0.7 );
        set_character_color_shading( 2, 0.7 );
        set_character_color_shading( 3, 0.7 );
        set_character_color_shading( 4, 0.7 );
        set_character_color_shading( 5, 0.7 );
        set_character_color_shading( 6, 0.7 );
        set_character_color_shading( 7, 0.7 );
        break;
}
    if (bomb_count == 2){
        outline_color = [ 184, 0, 185 ];
    } else {outline_color = [ 0, 0, 0 ];}
    
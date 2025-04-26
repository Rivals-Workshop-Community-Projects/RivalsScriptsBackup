//init shader

var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: // default
        set_character_color_slot(0, 189, 227, 150);
        set_character_color_slot(1, 255, 231, 201);
        set_character_color_slot(2, 218, 249, 207);
        set_character_color_slot(3, 102, 99, 70);
        set_character_color_slot(4, 74, 55, 83);
        set_character_color_slot(5, 211, 216, 145); 
        set_character_color_slot(6, 255, 255, 255 );
        set_character_color_slot(7, 186, 186, 188 );
        
        set_article_color_slot(0, 189, 227, 150);
        set_article_color_slot(1, 255, 231, 201);
        set_article_color_slot(2, 218, 249, 207);
        set_article_color_slot(3, 102, 99, 70);
        set_article_color_slot(4, 74, 55, 83);
        set_article_color_slot(5, 211, 216, 145); 
        set_article_color_slot(6, 255, 255, 255 );
        set_article_color_slot(7, 186, 186, 188 );
        break;
}

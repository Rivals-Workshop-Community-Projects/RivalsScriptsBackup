/*
// empty
switch (get_player_color(player))
{
    case 0:
    	//Skin
        set_character_color_slot(0, 108, 115, 161 );
        set_article_color_slot(0, 108, 115, 161 );
        //Fins
        set_character_color_slot(1, 161, 58, 97 );
        set_article_color_slot(1, 161, 58, 97 );
        //Marks
        set_character_color_slot(2, 108, 115, 161 );
        set_article_color_slot(2, 108, 115, 161 );
        //Light
        set_character_color_slot(3, 0, 255, 212 );
        set_article_color_slot(3, 0, 255, 212 );
        //Skin 2
        set_character_color_slot(4, 85, 171, 169 ); 
        set_article_color_slot(4, 85, 171, 169 ); 
        //Water
        set_character_color_slot(5, 82, 169, 235 );
        set_article_color_slot(5, 82, 169, 235 );
    break;
    case 10: // Smashland from Iroh
        for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
        outline_color = [ 35, 67, 49 ];
        break;
}

// empty
switch (get_player_color(player))
{
    case 0:
    	//Cap
        set_character_color_slot(1, 0, 173, 4 );
        set_article_color_slot(1, 0, 173, 4 );
        //Shirt
        set_character_color_slot(0, 0, 173, 4 );
        set_article_color_slot(0, 0, 173, 4 );
        //Overalls
        set_character_color_slot(2, 61, 0, 204 );
        set_article_color_slot(2, 61, 0, 204 );
        //Block
        set_character_color_slot(3, 255, 194, 0 );
        set_article_color_slot(3, 255, 194, 0 );
        //Skin
        set_character_color_slot(4, 255, 178, 97 ); 
        set_article_color_slot(4, 255, 178, 97 ); 
        //Glove
        set_character_color_slot(5, 220, 241, 243 );
        set_article_color_slot(5, 220, 241, 243 );
        //Shoes
        set_character_color_slot(6, 101, 56, 35 );
        set_article_color_slot(6, 101, 56, 35 );
        //Eyes
        set_character_color_slot(7, 48, 146, 255 );
        set_article_color_slot(7, 48, 146, 255 );
    break;
    case 6: // NES SMB1
        for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
        outline_color = [ 115, 82, 0 ];
        break;
    case 7: // NES SMB3
        for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
        outline_color = [ 52, 49, 64 ];
        break;
    case 26: // All-Stars off-black Outline
        outline_color = [ 64, 64, 64 ];
        break;
    case 27: // SMB2
        for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
        outline_color = [ 34, 54, 189 ];
        break;
    case 9:
    case 16: 
        set_character_color_shading(3, -2.8);
        break;
}

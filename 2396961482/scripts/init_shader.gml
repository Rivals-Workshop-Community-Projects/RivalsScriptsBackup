// empty
switch (get_player_color(player))
{
    case 0:
    // Skin
set_character_color_slot( 0, 0, 184, 159 );
set_article_color_slot( 0, 0, 184, 159 );

// Color
set_character_color_slot( 1, 177, 0, 0 );
set_article_color_slot( 1, 177, 0, 0 );

// Fin
set_character_color_slot( 2, 204, 57, 133 );
set_article_color_slot( 2, 204, 57, 133 );

// Lantern
set_character_color_slot( 3, 255, 239, 21 );
set_article_color_slot( 3, 255, 239, 21 );

// unshade1
set_character_color_slot( 4, 0, 184, 159 );
set_article_color_slot( 4, 0, 184, 159 );

// unshade2
set_character_color_slot( 5, 177, 0, 0 );
set_article_color_slot( 5, 177, 0, 0 );
    break;
    
}

if get_player_color(player) == 8 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
}



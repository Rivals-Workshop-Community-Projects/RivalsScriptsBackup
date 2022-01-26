// empty
switch (get_player_color(player))
{
    case 22: // Amateratsu Lower Colors
    	for(var i = 0; i < 8; ++i) set_character_color_shading(i, 1.5);
    	outline_color = [ 0, 0, 0 ];
    	break;
    	
    case 25: // Amateratsu Lower Colors
    	for(var i = 0; i < 8; ++i) set_character_color_shading(i, .5);
    	outline_color = [ 32, 32, 32 ];
    	break;
    	
    case 29: // Smashland from Iroh
    	for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
    	outline_color = [ 35, 67, 49 ];
    	break;
}
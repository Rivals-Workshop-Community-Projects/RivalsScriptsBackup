	
	if (dashes == 0){
	set_character_color_slot( 0, 140, 228, 255, 255 ); //Hair
	set_color_profile_slot_range( 0, 8, 13, 21 );
	}
	//rgb(140, 228, 255)
	
switch (get_player_color(player))
{
    case 27: // outline
        for(var i = 0; i < 8; ++i) set_character_color_shading(i, 0);
        outline_color = [ 92, 38, 5 ];
        break;
}
//EA
switch (get_player_color(player))
{
    case 0: set_character_color_slot(2, 237, 248, 255, 2.5); break;
    case 1: break;
    case 2: set_character_color_shading( 2, 0.5 ); break;
    case 4: 
    set_character_color_shading( 2, 0.5 );
    set_character_color_shading( 3, 0.5 );
    set_character_color_shading( 4, 0.5 );
    break;
    case 5: set_character_color_shading( 0, 2.5 );break;
    case 6: set_character_color_shading( 0, 2.5 );break;
    case 7:for(i = 0; i < 8; i++){set_character_color_shading(i, 0);}break;
    case 10: set_character_color_shading( 3, 0.5 ); break;
    case 11: set_character_color_shading( 3, 0.5 );set_character_color_shading( 5, 0.5 ); break;
    case 12: 
    set_character_color_shading( 3, 0.5 );
    set_character_color_shading( 4, 0.5 );
    set_character_color_shading( 5, 0.5 );
    case 13:set_character_color_shading( 3, 0.5 );break;
    break;
}


/*if (get_player_color(player) == 1){
    set_character_color_shading( 0, 0 );file:///C:/Users/mario/Pictures/init_shader.gml
    outline_color = [ 12, 10, 60 ];
}

if (get_player_color(player) == 4){
    set_character_color_shading( 0, 0 );
}
//EA
switch (get_player_color(player))
{
    case 1: set_character_color_shading( 0, 0 ); outline_color = [ 12, 10, 60 ];break;
    case 2: set_character_color_shading( 0, 2.5 );break;
    case 4: 
    case 5: set_character_color_shading( 0, 2.5 );break;
    case 6: set_character_color_shading( 0, 2.5 );break;
    case 7:for(i = 0; i < 8; i++){set_character_color_shading(i, 0);}    break;
    case 11:set_character_color_shading( 0, 2.5 );break;
    case 12:set_character_color_shading( 0, 2.5 );break;
    case 13:set_character_color_shading( 0, 2.5 );break;
    case 15:set_character_color_shading( 0, 2.5 );break;
    
}


/*if (get_player_color(player) == 1){
    set_character_color_shading( 0, 0 );file:///C:/Users/mario/Pictures/init_shader.gml
    outline_color = [ 12, 10, 60 ];
}

if (get_player_color(player) == 4){
    set_character_color_shading( 0, 0 );
}
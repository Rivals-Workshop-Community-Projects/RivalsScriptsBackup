
//Cool Regular Colors 
if (get_player_color( player ) == 0) {
set_character_color_slot(0, 253, 145, 62, 1)
set_character_color_slot(1, 241, 240, 234, 1)
set_character_color_slot(2, 168, 122, 87, 1)
set_character_color_slot(3, 253, 145, 62, 1)
set_character_color_slot(4, 241, 240, 234, 1)
set_character_color_slot(5, 255, 255, 255, 1)
set_character_color_slot(6, 253, 145, 62, 1)
set_character_color_slot(7, 148, 95, 68, 1)
;
}

//Carebear alt
if (get_player_color( player ) == 3) {
	outline_color = [ 99, 8, 78 ];
;
}



//Gummy alt
if get_player_color(player) == 6 {
    set_character_color_shading( 0, -1 );
    set_character_color_shading( 1, -1 );
    set_character_color_shading( 2, -1 );
    set_character_color_shading( 3, -1 );
    set_character_color_shading( 4, -1 );
    set_character_color_shading( 5, -1 );
    set_character_color_shading( 6, -1 );
        set_character_color_shading( 7, -1 );
            set_character_color_shading( 8, -1 );
    ;
}

//Gameboy Alt
if get_player_color(player) == 14 {
    set_character_color_shading( 0, 0 );
    set_character_color_shading( 1, 0 );
    set_character_color_shading( 2, 0 );
    set_character_color_shading( 3, 0 );
    set_character_color_shading( 4, 0 );
    set_character_color_shading( 5, 0 );
    set_character_color_shading( 6, 0 );
        set_character_color_shading( 7, 0 );
            set_character_color_shading( 8, 0 );
    ;
}


// init_shader.gml
switch(get_player_color(player)){
  case 9:  // Replace this with whatever skin slot you want the mask on
    set_character_color_slot(0, 255, 255, 255, 0);  // Change the shade slot to whatever you need
    break;
    case 12:  // Replace this with whatever skin slot you want the mask on
    set_character_color_slot(3, 255, 255, 255, 0);  // Change the shade slot to whatever you need
    break;
}
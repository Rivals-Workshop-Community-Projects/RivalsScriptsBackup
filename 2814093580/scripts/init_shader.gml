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

if (get_player_color( player ) == 3) {
	outline_color = [ 99, 8, 78 ];
;
}

if (get_player_color( player ) == 16) {
	outline_color = [ 56, 112, 94 ];
;
}

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

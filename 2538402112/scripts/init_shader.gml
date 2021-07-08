// Recolor eyes to black
if get_player_color(player) == 0 set_character_color_slot( 5, 0, 0, 0, 255 );
if get_player_color(player) == 0 set_character_color_slot( 6, 0, 0, 0, 255 );

// Shading fixes

if get_player_color(player) == 1 set_character_color_shading( 3, 1.5 )
if get_player_color(player) == 1 set_character_color_shading( 0, 1.2 )

if get_player_color(player) == 2 set_character_color_shading( 3, 1.5 )

if get_player_color(player) == 3 set_character_color_shading( 0, 1.1 )

if get_player_color(player) == 4 set_character_color_shading( 3, 1.5 )

if get_player_color(player) == 5 set_character_color_shading( 3, 1.8 )

if get_player_color(player) == 6 set_character_color_shading( 3, 1.8 )
if get_player_color(player) == 6 set_character_color_shading( 1, 2 )
if get_player_color(player) == 6 set_character_color_shading( 0, 1.5 )

// if get_player_color(player) == 7 set_character_color_shading( 0, 1 )

if get_player_color(player) == 9 set_character_color_shading( 3, 1.5 )
if get_player_color(player) == 9 set_character_color_shading( 1, 1.5 )

if get_player_color(player) == 10 set_character_color_shading( 3, 1.8 )

if get_player_color(player) == 13 set_character_color_shading( 3, 1.5 )

if get_player_color(player) == 14 set_character_color_shading( 3, 1.5 )
if get_player_color(player) == 14 set_character_color_shading( 7, 0.8 )


//Early Access alt
if get_player_color(player) == 15 {
    set_character_color_shading( 0, 0 );
    set_character_color_shading( 1, 0 );
    set_character_color_shading( 2, 0 );
    set_character_color_shading( 3, 0 );
    set_character_color_shading( 4, 0 );
    set_character_color_shading( 7, 0 );
}
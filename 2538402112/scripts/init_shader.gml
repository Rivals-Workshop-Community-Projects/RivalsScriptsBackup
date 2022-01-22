// Recolor eyes to black
if get_player_color(player) == 0 set_character_color_slot( 5, 0, 0, 0, 255 );
if get_player_color(player) == 0 set_character_color_slot( 6, 0, 0, 0, 255 );

// Shading fixes

// Celebi
if get_player_color(player) == 1 set_character_color_shading( 3, 2.0 )
if get_player_color(player) == 1 set_character_color_shading( 0, 1.2 )

// Dusknoir
if get_player_color(player) == 2 set_character_color_shading( 3, 2.0 )

// Wigglytuff
if get_player_color(player) == 3 set_character_color_shading( 0, 1.1 )
if get_player_color(player) == 3 set_character_color_shading( 3, 1.25 )

// Sableye
if get_player_color(player) == 4 set_character_color_shading( 0, 1.5 )
if get_player_color(player) == 4 set_character_color_shading( 3, 2.0 )

// Primal Dialga
if get_player_color(player) == 5 set_character_color_shading( 1, 2.0 )
if get_player_color(player) == 5 set_character_color_shading( 3, 2.0 )

// Manaphy
if get_player_color(player) == 6 set_character_color_shading( 0, 1.5 )
if get_player_color(player) == 6 set_character_color_shading( 1, 1.5 )
if get_player_color(player) == 6 set_character_color_shading( 3, 2.0 )

// Darkrai
if get_player_color(player) == 7 set_character_color_shading( 3, 2.25 )

// Gengar
if get_player_color(player) == 8 set_character_color_shading( 3, 1.75 )

// Ninetales
if get_player_color(player) == 9 set_character_color_shading( 3, 1.8 )
if get_player_color(player) == 9 set_character_color_shading( 1, 2.0 )
if get_player_color(player) == 9 set_character_color_shading( 0, 1.5 )

// Absol
if get_player_color(player) == 10 set_character_color_shading( 0, 1.25 )
if get_player_color(player) == 10 set_character_color_shading( 3, 1.5 )

// Gardevoir
if get_player_color(player) == 11 set_character_color_shading( 0, 1.25 )
if get_player_color(player) == 11 set_character_color_shading( 1, 1.5 )
if get_player_color(player) == 11 set_character_color_shading( 3, 2.0 )

// Abyss
if get_player_color(player) == 13 set_character_color_shading( 3, 2.0 )
if get_player_color(player) == 13 set_character_color_shading( 7, 0.8 )

// Munna
// if get_player_color(player) == 14 set_character_color_shading( 0, 1.25 )
if get_player_color(player) == 14 set_character_color_shading( 3, 2.0 )

// Dunsparce
if get_player_color(player) == 15 set_character_color_shading( 3, 2.0 )

// Virizion
if get_player_color(player) == 16 set_character_color_shading( 3, 1.5 )
if get_player_color(player) == 16 set_character_color_shading( 1, 1.5 )

// Hydregon
if get_player_color(player) == 17 set_character_color_shading( 3, 2.0 )

// Golden
if get_player_color(player) == 18 set_character_color_shading( 0, 1.2 )
if get_player_color(player) == 18 set_character_color_shading( 3, 2.0 )

// Slowking
if get_player_color(player) == 19 set_character_color_shading( 0, 1.25 )
if get_player_color(player) == 19 set_character_color_shading( 1, 1.25 )
if get_player_color(player) == 19 set_character_color_shading( 3, 2.0 )

// Espurr
if get_player_color(player) == 21 set_character_color_shading( 3, 2.0 )

// Ampharos
if get_player_color(player) == 22 set_character_color_shading( 0, 1.5 )
if get_player_color(player) == 22 set_character_color_shading( 3, 1.5 )

// Shiny
if get_player_color(player) == 24 set_character_color_shading( 3, 1.75 )



//Early Access alt
if get_player_color(player) == 12 {
    set_character_color_shading( 0, 0 );
    set_character_color_shading( 1, 0 );
    set_character_color_shading( 2, 0 );
    set_character_color_shading( 3, 0 );
    set_character_color_shading( 4, 0 );
    set_character_color_shading( 7, 0 );
}

if variable_instance_exists(self, "grov_gen3")
    if grov_gen3{
        set_character_color_slot(3, 38, 112, 130);
        // set_article_color_slot(3, 38, 112, 130);
    }
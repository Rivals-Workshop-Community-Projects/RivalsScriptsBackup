//flying creatures

//draw_debug_text( floor(x), y - 20, string( creature ));

if ( depth = 33 ){
	if ( creature = 1 ){
		draw_sprite_ext( sprite_get( "hawk" ), -1, x, y, 1, 1, 0, make_colour_rgb( 160, 248, 248 ), 0.4 );
	}
	else {
		if ( creature = 2 ){
		draw_sprite_ext( sprite_get( "gorilla" ), -1, x, y, 1, 1, 0, make_colour_rgb( 160, 248, 248 ), 0.4 );
		}
		else {
			if ( creature = 3 ){
			draw_sprite_ext( sprite_get( "falcon" ), -1, x, y, 1, 1, 0, make_colour_rgb( 160, 248, 248 ), 0.4 );
			}
		}
	}
}
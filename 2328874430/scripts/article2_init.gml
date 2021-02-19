//flying creatures
time = 0;
original_y = y;

creature = 1;
sprite_index = sprite_get( "hawk" );
movespeed = 1;

if (depth = 33){
	draw_sprite_ext( sprite_get( "hawk" ), -1, x, y, 1, 1, 0, make_colour_rgb( 160, 248, 248 ), 0.6 );
}

if (depth = 34){
	sprite_index = sprite_get( "dragon" );
}
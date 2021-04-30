//post draw

//draw_debug_text( x, y - 20, string(hit_player_obj.ice_mark));

//draw_debug_text( x, y - 40, string(ice_cont));



if (uspec_meter != uspec_max && draw_indicator) // Lukaru's meter
{
	var y_offset = 10; // try to use an even number or else mixels
	var col = make_colour_rgb(
						  255*((uspec_max-uspec_meter)/uspec_max),
						  255*(uspec_meter/uspec_max),
						  0);
	var blackred = c_black;
	draw_rectangle_colour(x-27, y-char_height-18-y_offset, x+28, y-char_height-9-y_offset, blackred, blackred, blackred, blackred, false);
	draw_rectangle_colour(x-25, y-char_height-16-y_offset, x+floor(ease_quadOut(0, 102, uspec_meter, uspec_max)*0.25)*2-24, y-char_height-11-y_offset, col, col, col, col, false);
}
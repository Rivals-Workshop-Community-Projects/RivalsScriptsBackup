// debug_draw.gml
// draws debug text/sprites in front of everything

// Lol there is nothing here, this is a beta, no secret knowledge for you.

// This just some test code I wanna leave in
//with (oPlayer){
//	draw_debug_text(x - 10, y - 80, "State: " + string(state));
//	draw_debug_text(x - 10, y - 100, "X: " + string(x));
//	draw_debug_text(x - 10, y - 120, "Y: " + string(y));
//}

/*
var text = "
			Love will protect this world
			";

draw_set_font(3);

draw_text_color(300 + 4, 130, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300 - 4, 130, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300, 130 + 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300, 130 - 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300 + 4, 130 + 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300 - 4, 130 + 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300 + 4, 130 - 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(300 - 4, 130 - 4, text, c_black, c_black, c_black, c_black, 1);
draw_text_color(190, 130, text, c_white, c_white, c_white, c_white, 1);
*/


if(tomoyai){
	draw_sprite_ext(sprite_get("tomoyai_meter"), -1, view_get_xview() + 150, view_get_yview() + 100, 1, 1, 0, c_white, 1);

	yai_shout[yai_shout_num] = draw_sprite_ext(sprite_get("taunt4"), 3, view_get_xview() + 154 + yai_x, view_get_yview() + 130, 1, 1, 0, c_white, 1);

	draw_sprite_ext(sprite_get("tomoyai_bar"), -1, view_get_xview() + 154 + (yai_timer * 3.31), view_get_yview() + 96, 1, 1, 0, c_white, 1);


	draw_debug_text(x, y, string(yai_timer));
}

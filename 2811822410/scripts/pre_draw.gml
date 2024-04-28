//
if (is_oc && visible && initial_invince && should_show_plat) { //platform
	draw_sprite_ext( sprite_get("plat_real"), 0, x, y, 1, 1, 0, c_white, 1);
}
//


if (pizza_game && is_oc) {
	var _offset_x = x + spr_dir * 64;
	var _offset_y = y - 28;
	var _screen_left = _offset_x - 41;
	var _screen_right = _offset_x + 41;
	//Background
	draw_sprite_ext(sprite_get("a_game_screen"), 0 , _offset_x ,y ,1 ,1 ,0 ,c_white, 1);
	//Pizza Stuff
	pizza_draw(sprite_get("a_game_pizza"), 0, 0);
	if (array_length(pg_pizza)) {
		for (var i = 0; i <= array_length(pg_pizza) - 1; i++) {
			pizza_draw(sprite_get("a_game_toppings"), pg_pizza[i], i);
		}
	}
	//Game Board
	if (pg_show_order) {
		draw_sprite_ext(sprite_get("a_game_bubble"), 0 , _offset_x ,y ,1 ,1 ,0 ,c_white, 1);
		if (array_length(pg_order)) {
			for (var i = 0; i <= array_length(pg_order) - 1; i++) {
				draw_sprite_ext(sprite_get("a_game_icons"), pg_order[i] , _offset_x - 26 + (i % 3 * 12) ,y - 41 + floor(i / 3) * 12 ,1 ,1 ,0 ,c_white, 1);
			}
		}
	}
	draw_sprite_ext(sprite_get("a_game_board"), 0 , _offset_x ,y ,1 ,1 ,0 ,c_white, 1);
	//Cursor
	draw_sprite_ext(sprite_get("a_game_cursor"), 0 , _offset_x - 36 + (pg_cursor_pos  % 5 * 18) , y - 83 + floor(pg_cursor_pos / 5) *  16,1 ,1 ,0 , get_player_hud_color(player), 1);
	//Timer
	rectDraw(_offset_x + 32 - ((pg_make_timer/pg_make_timer_curr) * 74), y - 8, _offset_x + 32, y - 5, c_white);
	//Score
	draw_debug_text(_offset_x + 29, y - 108, string(pg_score));
}

#define pizza_draw(_sprite, _image, _height) {
	var _offset_x = x + spr_dir * 64;
	var _offset_y = y - 28;
	var _screen_left = _offset_x - 41;
	var _screen_right = _offset_x + 41;
	draw_sprite_part_ext(_sprite, _image, (58 - pg_pizza_offset) * 2, 0, 41 * 2, 20, _screen_left, _offset_y - 10 - _height * 2, 1, 1, c_white, 1);
}

#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
//
//draw_debug_text(10, 10, "test");

with (oPlayer){
	if (is_player_on(1)){
		if (get_player_stocks(1) <= 3){
			other.stocks_1 = get_player_stocks(1);
		} else other.stocks_1 = 3;
	}

	if (is_player_on(2)){
		if (get_player_stocks(2) <= 3){
			other.stocks_2 = get_player_stocks(2);
		} else other.stocks_2 = 3;
	}

	if (is_player_on(3)){
		if (get_player_stocks(3) <= 3){
			other.stocks_3 = get_player_stocks(3);
		} else other.stocks_3 = 3;
	}

	if (is_player_on(4)){
		if (get_player_stocks(4) <= 3){
			other.stocks_4 = get_player_stocks(4);
		} else other.stocks_4 = 3;
	}
}

//pokeball icons

if (stocks_1 >= 0){
	draw_sprite_ext(sprite_get("stocks"), stocks_1, x - 126, y - 70, 2, 2, 0, c_white, 1);
}

if (stocks_2 >= 0){
	draw_sprite_ext(sprite_get("stocks"), stocks_2, x + 126, y - 70, -2, 2, 0, c_white, 1);
}

if (stocks_3 >= 0){
	draw_sprite_ext(sprite_get("stocks"), stocks_3, x - 126, y + 58, 2, 2, 0, c_white, 1);
}

if (stocks_4 >= 0){
	draw_sprite_ext(sprite_get("stocks"), stocks_4, x + 126, y + 58, -2, 2, 0, c_white, 1);
}


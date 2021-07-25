
	draw_set_halign(fa_center);
	draw_set_font(asset_get("fName"));
	draw_text_ext_transformed_colour(x, y-8, (
	string(current_hour)+":"+string(current_minute)
	), 1, 200, 1, 1, 0, c_white, c_white, c_white, c_white, 0.9);

	draw_set_halign(fa_middle)
	draw_set_valign(fa_top)
	draw_set_font(asset_get("fName"))
	draw_sprite(sprite_get("indicator"), 0, x, bbox_top - 10)
	if damagelim-damage > 0 {
	var mushd = floor(damagelim - damage); mushd = "-"+string(mushd)+"%"
	draw_text_colour(x+2, bbox_top-30, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(x, bbox_top-28, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(x-2, bbox_top-30, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(x, bbox_top-32, mushd, c_black, c_black, c_black, c_black, 1)
	draw_text_colour(x, bbox_top-30, mushd, c_white, c_white, c_white, c_white, 1)
	}
with (oPlayer) if (draw_indicator && visible)
{
	var width = 38;
	DrawBeam(0.5, width)
	width += 2;
	DrawBeam(0.4, width)
	width += 2;
	DrawBeam(0.3, width)
	width += 2;
	DrawBeam(0.2, width)
	width += 2;
	DrawBeam(0.1, width)
}

draw_set_halign(fa_center);
DrawText(textObj.x, textObj.y, "roaMBLFont", c_white, 0, 1000, 1, true, 1, textObj.textStr);

#define DrawBeam(_alpha, _width)
{
	draw_set_alpha(_alpha);
	draw_rectangle_colour(x-_width, 0, x+_width, room_height, c_white, c_white, c_white, c_white, 0);
	draw_set_alpha(1);
	
}

#define DrawText(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(font));
	if (alpha > 0)
	{
		if (outline)
		    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
				draw_text_ext_transformed_color(x + i * 2, y + j * 2, string, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
	}
	return string_width_ext(string, lineb, linew);
}
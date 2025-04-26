//Noelle shader swap/rainbow code modified
var playerAlt = get_player_color(player);
switch (playerAlt)
{
	case 0:
	{
		if ("hue" not in self) hue = 0;
		var color_rgb1=make_color_rgb(160, 136, 234);
		var color_rgb2=make_color_rgb(156, 103, 143);
		AltColour(2, make_color_hsv((color_get_hue(color_rgb1)),color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(3, make_color_hsv((color_get_hue(color_rgb2)),color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
	}
	break;
	case 11: //rbg
	{

		if ("hue" not in self) hue = 0;
		var color_rgb1=make_color_rgb(216, 136, 219);
		var color_rgb2=make_color_rgb(115, 85, 163);
		AltColour(0, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(1, make_color_hsv((color_get_hue(color_rgb1)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(2, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb1),color_get_value(color_rgb1)));
		AltColour(3, make_color_hsv((color_get_hue(color_rgb2)+hue)%255,color_get_saturation(color_rgb2),color_get_value(color_rgb2)));
	}
	break;
}

outline_colour = [0, 0, 0];
switch (playerAlt)
{
	case 99:  outline_colour =	[0,0,0]; break;
}
outline_color = outline_colour;

#define AltColour(_index, _colour)
{
	var temp_r = color_get_red(_colour);
	var temp_g = color_get_green(_colour);
	var temp_b = color_get_blue(_colour);
	set_character_color_slot(_index, temp_r, temp_g, temp_b, 1);
	set_article_color_slot(_index, temp_r, temp_g, temp_b, 1);
}
if ("afterImage" in self)
{
	var tempColour = GetColourPlayer(0);
	gpu_set_fog(1, tempColour, 0, 1);
	for (var i = 0; i < 10; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0)
		draw_sprite_ext(sprite_get("guitarIdle"), 0, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*2, 2, 0, tempColour, afterImage[i].alpha/15);
	gpu_set_fog(0, c_white, 0, 0);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}

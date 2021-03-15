if ("afterImage" in self)
{
	for (var i = 0; i < 8; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0)
		draw_sprite_ext(sprite_index, image_index, afterImage[i].x, afterImage[i].y, 1, 1, 0, c_black, afterImage[i].alpha/16);
}
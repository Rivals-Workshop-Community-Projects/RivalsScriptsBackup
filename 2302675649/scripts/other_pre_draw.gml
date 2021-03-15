if ("afterImageLonin" in self && afterImageLonin != -1 && afterImageLonin.lonin == other_player_id.player)
{
    gpu_set_blendmode(bm_add);
	draw_circle_colour(x, y - floor(char_height/2), char_height * 1.5 * afterImageLonin.alpha/30, c_black, c_white, false);
    gpu_set_blendmode(bm_normal);
}
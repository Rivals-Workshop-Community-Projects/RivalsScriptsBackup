if ("afterImage" in self)
{
	for (var i = 0; i < 8; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0)
		draw_sprite_ext(sprite_index, image_index, afterImage[i].x, afterImage[i].y, 1, 1, 0, c_black, afterImage[i].alpha/16);

	if (!(has_rune("L") || ("in_adventure" in player_id && player_id.in_adventure)))
	{
		draw_set_alpha(1-(y-ceil(room_height/5))/16);
		draw_rectangle_color(x-32,ceil(room_height/5)-8-64,x+32,ceil(room_height/5)-64,c_white,c_white,c_white,c_white,false);
		draw_set_alpha(1-(floor(2*room_height/3)-y)/16);
		draw_rectangle_color(x-32,floor(2*room_height/3)+64,x+32,floor(2*room_height/3)+8+64,c_white,c_white,c_white,c_white,false);
		draw_set_alpha(1-(x-ceil(room_width/6))/16);
		draw_rectangle_color(ceil(room_width/6)-8-64,y-32,ceil(room_width/6)-64,y+32,c_white,c_white,c_white,c_white,false);
		draw_set_alpha(1-(floor(5*room_width/6)-x)/16);
		draw_rectangle_color(floor(5*room_width/6)+64,y-32,floor(5*room_width/6)+8+64,y+32,c_white,c_white,c_white,c_white,false);
		draw_set_alpha(1);
	}
}
if("owner" not in self) exit;

//offscreen indicator code (its from Tester)------------------------------------
if(!player_id.mokou_playtest){

	//capture area + sprite offsets
	var view_left = view_get_xview() + 52; //0, y
	var view_right = view_get_wview() + view_get_xview() - 52; //screenborder, y
	var view_up = view_get_yview() + 32; //x, 0
	var view_down = view_get_hview() + view_get_yview() - 80; //x, screenborder
	
	//if the article is inside of the screen [article_offscreen] is false	
	article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y-20 >= view_up - 32 && y-20 <= view_down + 85);
	
	orig_depth = depth;
    if (article_offscreen)
    {
        //sets article depth to a very large negative number so the indicator appears in front of things
        //we are doing this because article#_post_draw relies on the article's depth too
        depth = -200;
        
        //screen limits x - this decides how far the indicator should follow the article on the X axis
        if (x < view_left - 65) offscreen_x_pos = view_left - 16;
        else if (x > view_right + 65) offscreen_x_pos = view_right + 16;
        else offscreen_x_pos = x;

        //screen limits y - this decides how far the indicator should follow the article on the Y axis
        if (y-20 < view_up + 24) offscreen_y_pos = view_up  + 2;
        else if (y-20 > view_down + 24) offscreen_y_pos = view_down + 42;
        else offscreen_y_pos = y-20;
        //image angles - decides at which coordinates should the article change the arrow sprite
        if (x < view_left - 63)
        {
            if (y-20 < view_up - 33) offscreen_image = 1;
            else if (y-20 > view_down + 85) offscreen_image = 7;
            else  offscreen_image = 0;
        }
        else if (x > view_right + 63)
        {
            if (y-20 < view_up - 33) offscreen_image = 3;
            else if (y-20 > view_down + 85) offscreen_image = 5;
            else  offscreen_image = 4;
        }
        else
        {
            if (y-20 < view_up - 33) offscreen_image = 2;
            else if (y-20 > view_down + 85) offscreen_image = 6;
        }
		
		with(player_id) var p_col = get_player_hud_color(player)
        draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, p_col, 1);
        draw_sprite_ext(sprite_get("nspec_bomb"), 3, offscreen_x_pos+34, offscreen_y_pos+38, 1, 1, 0, c_white, 1);
    }
    else depth = orig_depth; //reset depth back to normal when it's on screen
}
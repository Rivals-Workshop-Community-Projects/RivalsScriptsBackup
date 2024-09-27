//	article2_post_drawl
//	stuff to draw stuff for article2... stuff

//	Arrow Indicator
if (state == 0 && state_timer > 1)
{
	if (spr_dir == 1)
	{
		draw_sprite_ext(sprite_get("arrow_indi"),image_index, x-59, y+20,1,1,0,get_player_hud_color(player),1)
	}

	if (spr_dir == -1)
	{
		draw_sprite_ext(sprite_get("arrow_indi"),image_index, x-49, y+20,1,1,0,get_player_hud_color(player),1)
	}
}

else
{
	if (spr_dir == 1)
	{
		draw_sprite_ext(sprite_get("arrow_indi"),image_index, x-59, y+20,1,1,0,get_player_hud_color(player),1)
	}

	if (spr_dir == -1)
	{
		draw_sprite_ext(sprite_get("arrow_indi"),image_index, x-49, y+20,1,1,0,get_player_hud_color(player),1)
	}
}

//	Offscreen Indicator
if (x < view_get_xview() || x > (view_get_xview()+view_get_wview()))
{
    var leftview = (x < view_get_xview() ? 1:-1)
	
    draw_sprite_ext(sprite_get("offscreen_indi"),0,view_get_xview()+(leftview ? 0:view_get_wview()),y,leftview,1,0,get_player_hud_color(player),1);
    draw_sprite_ext(sprite_get("pguard_indi"),0,view_get_xview()+(leftview ? 0:view_get_wview()),y,leftview,1,0,c_white,1);
}
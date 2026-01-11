var i = 1;
with player_id shader_start();
if qi_stack && spark_size repeat ceil(qi_stack/2) draw_sprite_ext(sprite_get("nymphspark" + string(i++)), get_gameplay_time()/4, x, y, spark_size, spark_size, 0, c_white, spark_alpha);
shader_end();
if hitstop{
	gpu_set_fog(1, c_white, 1, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*spr_dir, image_yscale, image_angle, c_white, .5);
	gpu_set_fog(0, c_white, 1, 0);
}
if get_match_setting(SET_HITBOX_VIS) draw_sprite_ext(mask_index, 0, x, y, image_xscale*spr_dir, image_yscale, image_angle, c_white, .5);


//capture area + sprite offsets
var view_left = view_get_xview() + 34; //0, y
var view_right = view_get_wview() + view_get_xview() - 34; //screenborder, y
var view_up = view_get_yview() + 32; //x, 0
var view_down = view_get_hview() + view_get_yview() - 86; //x, screenborder

//offscree check
var article_offscreen = !(x >= view_left - 64 && x <= view_right + 64 && y >= view_up - 32 && y <= view_down + 85);


if (article_offscreen && !player_id.playtest_active)
{
	depth = -200; //makes the indicator appear above everything
	
	//screen limits x
	if (x < view_left - 65) offscreen_x_pos = view_left - 32;
	else if (x > view_right + 65) offscreen_x_pos = view_right - 32;
	else offscreen_x_pos = x - 32;

	//screen limits y
	if (y < view_up + 24) offscreen_y_pos = view_up - 32;
	else if (y > view_down + 24) offscreen_y_pos = view_down - 32;
	else offscreen_y_pos = y - 54;


	//image angles
	if (x < view_left - 63)
	{
		if (y < view_up - 33) offscreen_image = 1;
		else if (y > view_down + 85) offscreen_image = 7;
		else  offscreen_image = 0;
	}
	else if (x > view_right + 63)
	{
		if (y < view_up - 33) offscreen_image = 3;
		else if (y > view_down + 85) offscreen_image = 5;
		else  offscreen_image = 4;
	}
	else
	{
		if (y < view_up - 33) offscreen_image = 2;
		else if (y > view_down + 85) offscreen_image = 6;
	}

	draw_sprite_ext(sprite_get("hud_offscreen_arrow"), offscreen_image, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, hud_col, 1);
	with player_id shader_start();
	draw_sprite_ext(sprite_get("nymph_offscreen"), 0, offscreen_x_pos, offscreen_y_pos, 2, 2, 0, c_white, 1);
	shader_end();
}
else depth = orig_depth;
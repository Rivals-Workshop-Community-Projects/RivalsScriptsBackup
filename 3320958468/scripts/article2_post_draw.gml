//	article2_post_draw
//	stuff to draw stuff for article2... stuff

//=========================================================================================

//	Health bar properties
var max_hp 				= 18; 	//	Set the max HP, or you can have it as a variable in the object
var bar_width 			= 60; 	//	Width of the health bar
var bar_height 			= 8; 	//	Height of the health bar
var outline_thickness 	= 2; 	// 	Thickness of the outline
var bar_x_offset1 		= 36; 	//	X offset relative to the object position
var bar_x_offset2 		= 26; 	//	X offset relative to the object position
var bar_y_offset 		= 42; 	//	Y offset (above the object)

//	Calculate the health percentage
var health_percentage 	= hp / max_hp;

//	Calculate the width of the filled portion of the health bar
var filled_width 		= bar_width * health_percentage;

var pguard_col 			= make_color_rgb(get_color_profile_slot_r(get_player_color(player), 0), 
						  				get_color_profile_slot_g(get_player_color(player), 0), 
						  				get_color_profile_slot_b(get_player_color(player), 0));

//	The Health Bar
if (hp < 18 && hp != 0)
{
	if (spr_dir == 1)
	{
		//	Draw the outline
        draw_rectangle_color(
            x - bar_x_offset1 - outline_thickness, 
            y + bar_y_offset - outline_thickness, 
            x - bar_x_offset1 + bar_width + outline_thickness, 
            y + bar_y_offset + bar_height + outline_thickness, 
            c_white, c_white, c_white, c_white, false);
		
		// 	Draw the health bar background (unfilled)
		draw_rectangle_color(
			x - bar_x_offset1, 
			y + bar_y_offset, 
			x - bar_x_offset1 + bar_width, 
			y + bar_y_offset + bar_height, 
			c_black, c_black, c_black, c_black, false);

		// 	Draw the filled portion of the health bar
		draw_rectangle_color(
			x - bar_x_offset1, 
			y + bar_y_offset, 
			x - bar_x_offset1 + filled_width, 
			y + bar_y_offset + bar_height, 
			pguard_col, pguard_col, pguard_col, pguard_col, false);
	}

	else if (spr_dir == -1)
	{
		//	Draw the outline
        draw_rectangle_color(
            x - bar_x_offset2 - outline_thickness, 
            y + bar_y_offset - outline_thickness, 
            x - bar_x_offset2 + bar_width + outline_thickness, 
            y + bar_y_offset + bar_height + outline_thickness, 
            c_white, c_white, c_white, c_white, false);
		
		// 	Draw the health bar background (unfilled)
		draw_rectangle_color(
			x - bar_x_offset2, 
			y + bar_y_offset, 
			x - bar_x_offset2 + bar_width, 
			y + bar_y_offset + bar_height, 
			c_black, c_black, c_black, c_black, false);

		// 	Draw the filled portion of the health bar
		draw_rectangle_color(
			x - bar_x_offset2, 
			y + bar_y_offset, 
			x - bar_x_offset2 + filled_width, 
			y + bar_y_offset + bar_height, 
			pguard_col, pguard_col, pguard_col, pguard_col, false);
	}
}

//=========================================================================================

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
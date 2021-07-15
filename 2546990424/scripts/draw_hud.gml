//Draws the Whirlwind icon on the HUD
draw_sprite_ext(sprite_get("icon"), whirlwind_hud, temp_x+180, temp_y-25, 2, 2, 0, c_white, 1);	

//This is addapted from Munophone, I've previously used this for Ryu Hayabusa with Muno's permission
if "whirlwind" in self{

with (whirlwind) {
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = y < view_get_yview() - leeway;
	var off_d = y > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(y - view_get_yview(), margin, view_get_hview() - margin)-45, 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(y - view_get_yview(), margin, view_get_hview() - margin)-45, 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

}
if "whirlwind2" in self{

with (whirlwind2) {
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = y < view_get_yview() - leeway;
	var off_d = y > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(y - view_get_yview(), margin, view_get_hview() - margin)-45, 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin)-30, clamp(y - view_get_yview(), margin, view_get_hview() - margin)-45, 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

}
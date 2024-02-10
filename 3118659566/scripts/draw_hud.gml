shader_start();
if (mailboxID = 0 || (mailboxID != 0 && mailboxID.letters = 0)) && mb_cooldown < 1 {
    draw_sprite(sprite_get("mb_hud_icon"), 0, temp_x + 180, temp_y - 22);
} else {
    draw_sprite(sprite_get("mb_hud_icon"), 1, temp_x + 180, temp_y - 22);
}
shader_end();

//article icon
with obj_article1 if player_id == other {
	var leeway = 0;
	var z = y - 20;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = z < view_get_yview() - leeway;
	var off_d = z > view_get_yview() + view_get_hview() + leeway;
	
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
		draw_sprite_ext(sprite_get("mb_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("mb_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

if dairprojID != 0 {
	with dairprojID if player_id == other {
		var leeway = 0;
		var z = y - 20;
		
		var off_l = x < view_get_xview() - leeway;
		var off_r = x > view_get_xview() + view_get_wview() + leeway;
		var off_u = z < view_get_yview() - leeway;
		var off_d = z > view_get_yview() + view_get_hview() + leeway;
		
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
			draw_sprite_ext(sprite_get("mb_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
			with other shader_start();
			draw_sprite_ext(sprite_get("mb_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
			with other shader_end();
		}
	}
}
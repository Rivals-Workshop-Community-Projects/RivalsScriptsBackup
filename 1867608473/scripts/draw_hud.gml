//

if soul != noone{
	hud_soul_col = c_black; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
} else {
	hud_soul_col = c_white; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
}

draw_sprite_ext(sprite_get("hud_soul"), 0, temp_x + 12, temp_y + 12, 1, 1, 0, hud_soul_col, 1)

with obj_article2{
	if player_id != other continue;
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway; // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
	var off_r = x > view_get_xview() + view_get_wview() + leeway; // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
	var off_u = y < view_get_yview() - leeway; // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
	var off_d = y > view_get_yview() + view_get_hview() + leeway; // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
	
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
	
	if idx != noone {
		with other {
			draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")). // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
			draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")). // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
		}
	} 
}
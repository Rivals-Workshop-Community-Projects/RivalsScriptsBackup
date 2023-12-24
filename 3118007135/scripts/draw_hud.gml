// Draws on the HUD.
#region // Variables
var _xx = temp_x;
var _yy = temp_y;
#endregion

#region // DEBUG MODE
if wren_debug {
    draw_debug_text(_xx,_yy-16,"Current state: " + get_state_name(state));
    draw_debug_text(_xx,_yy-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
    draw_debug_text(_xx,_yy-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
    draw_debug_text(_xx,_yy-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
    draw_debug_text(_xx,_yy-80,"Charge: " + string(wren_charge) + "    Charge LV: " + string(wren_charge_lvl));
}
#endregion

#region // Toggle Display
if get_gameplay_time() <= 120{
	switch(wren_rivaltwo_mode){
		case false:
			switch(wren_tidecall_toggle){
				case 0: // Default
					draw_debug_text(_xx,_yy-32,"Press Parry To Make Tide Call");
					draw_debug_text(_xx + 38,_yy-16,"Tap/Hold Up Special.");
					break;
				case 1: // Tap/Hold
					draw_debug_text(_xx,_yy-32,"Press Parry To Make Tide Call");
					draw_debug_text(_xx + 38,_yy-16,"Attack + Up Special.");
					break;
			}
			break;
		case true:
			switch(wren_tidecall_toggle){
				case 0: // Default
					draw_debug_text(_xx,_yy-32,"Press Shield To Make Tide Call");
					draw_debug_text(_xx + 38,_yy-16,"Tap/Hold Up Special.");
					break;
				case 1: // Tap/Hold
					draw_debug_text(_xx,_yy-32,"Press Shield To Make Tide Call");
					draw_debug_text(_xx + 38,_yy-16,"Attack + Up Special.");
					break;
			}
			break;
	}
}
#endregion

#region // Yo-Yo
if instance_exists(wren_yoyo){
	switch(wren_tidecall_toggle){
		case 0:	// Default
			draw_debug_text(_xx, _yy-16, "Tide Call: Attack + USpecial");
			break;
		case 1:	// Tap/Hold
			draw_debug_text(_xx, _yy-16, "Tide Call: Hold USpecial");
			break;
	}
}
#endregion

#region // ARTICLE OFFSCREEN
with obj_article1{
	if player_id != other break;
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
			shader_start();
			draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(other.x - view_get_xview(), margin, view_get_wview() - margin), clamp(other.y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")). // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
		    shader_end();
		}
	} 
}
#endregion
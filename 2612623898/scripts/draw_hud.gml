//This script is used to draw debug messages.
//Uncomment the below code to see what it does. (You can't use the debug toggle here for some reason. Dan Moment)

/*
    draw_debug_text( temp_x+60, temp_y-15, "state : " + get_state_name(state));
    draw_debug_text( temp_x+60, temp_y-30, "state timer : " + string(state_timer));
    draw_debug_text( temp_x+60, temp_y-45, "attack : " + string(attack));
    draw_debug_text( temp_x+60, temp_y-60, "window : " + string(window));
    draw_debug_text( temp_x+60, temp_y-75, "window timer : " + string(window_timer));
    draw_debug_text( temp_x- 15, temp_y-15, "hsp: " + string(hsp));
    draw_debug_text( temp_x- 15, temp_y-30, "vsp: " + string(vsp));
    draw_debug_text( temp_x- 15, temp_y-45, "grav: " + string(grav));
    draw_debug_text( 10, 10, "FPS : " + string(fps_real));
*/

//Referenced Bar's Venus code
//draw_set_alpha();
if ("ssl_hud_toggle" not in self) { exit; }

if (ssl_hud_toggle) { 
	var _shake_offset_x = 0;
	var _shake_offset_y = 0;
	
	
	//print(ssl_hud_camera_x);
	//print(view_get_xview())
	/*
	if ((state_cat == SC_HITSTUN && hitpause) || state == PS_RESPAWN) {
		if (ssl_hud_camera_x != view_get_xview()) {
			_shake_offset_x = clamp(view_get_xview() - ssl_hud_camera_x, -2, 2);
		}
		if (ssl_hud_camera_y != view_get_yview()) {
			_shake_offset_y = clamp(view_get_yview() - ssl_hud_camera_y, -2, 2);
		}
	}
	*/
	
	
	drawing_hud = false;
	
	
	var _teams = get_match_setting( SET_TEAMS );
	
	var _team_color = get_player_hud_color(player);
	
	shader_start();
	draw_sprite_ext(sprite_get("ssl_hud"), _teams, temp_x - 12 + _shake_offset_x, temp_y - 8 + _shake_offset_y, 1, 1, 0, _teams ? _team_color : c_white, 1);
	
	
	//Player Hud
	
	draw_sprite_ext(get_char_info(player, (state == PS_DEAD || state == PS_RESPAWN || get_player_damage(player) >= 100 && state == PS_HITSTUN) ? INFO_HUDHURT : INFO_HUD), 0, temp_x + 24 + _shake_offset_x, temp_y + 2 + _shake_offset_y, 1, 1, 0, c_white, 1);
	
	//Stocks
	draw_sprite_ext(sprite_get(_teams ? "ssl_hud_stock_bw" : "ssl_hud_stock"), get_player_stocks(player), temp_x - 4 + _shake_offset_x, temp_y + 16 + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
	
	//Player Num
	draw_sprite_ext(sprite_get(_teams ? "ssl_hud_player_bw" : "ssl_hud_player"), player - 1, temp_x + 172 + _shake_offset_x, temp_y + 6 + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
	
	//Percents
	var _display_offset = 0;
	
	_num_x = 112; //144
	_num_y = 6; //8
	_offset = 16; //20
	if (state != PS_DEAD && state != PS_RESPAWN) {
		if get_player_damage(player) >= 100 {
			draw_sprite_ext(sprite_get(_teams ? "ssl_hud_num_bw" : "ssl_hud_num"), get_player_damage(player) / 100, temp_x + _num_x - _offset * 2 + _shake_offset_x, temp_y + _num_y + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
		}
		if get_player_damage(player) >= 10 {
			draw_sprite_ext(sprite_get(_teams ? "ssl_hud_num_bw" : "ssl_hud_num"), get_player_damage(player) / 10, temp_x + _num_x - _offset + _shake_offset_x, temp_y + _num_y + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
		}
		draw_sprite_ext(sprite_get(_teams ? "ssl_hud_num_bw" : "ssl_hud_num"), get_player_damage(player), temp_x + _num_x + _shake_offset_x, temp_y + _num_y + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
	
		draw_sprite_ext(sprite_get("ssl_hud_percent"), _teams, temp_x + _num_x + 16 + _shake_offset_x, temp_y + _num_y + _shake_offset_y, 4, 4, 0, _teams ? _team_color : c_white, 1);
	}
	shader_end();
}

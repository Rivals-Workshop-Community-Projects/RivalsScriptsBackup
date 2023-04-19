// other_pre_draw.gml
// Draws sprites in front of the other player
// Use other_player_id to refer to this character's files

// Draws balloons behind the opponent when they are afflicted with the Balloon Effect
var	bal = noone;

if (instance_exists(other_player_id)){
	with (other_player_id){
		bal = sprite_get("balloon");
	}
}

if (isBalloon && sprite_exists(bal)){
	if (url = CH_MAYPUL){
		draw_sprite_ext(bal, get_gameplay_time()/8, x - 5, y - char_height - 12, 1, 1, 0, c_white, 1);	
	}
	else{
		draw_sprite_ext(bal, get_gameplay_time()/8, x, y - char_height - 20, 1, 1, 0, c_white, 1);
	}
}

//draw_debug_text(x, y - 100, "isRibbon: " + string(isRibbon));

//draw_debug_text(x, y - 80, "URL: " + string(url));

if (instance_exists(other_player_id)){
	if ("isTaunt" in other_player_id && other_player_id.isTaunt){ 

		if (other_player_id.giik_please_fix_basecast_shaders_already_left){
			shader_start();
			draw_sprite_ext(other_player_id.basecast_portraits, other_player_id.expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
			shader_end();
		}

		if (other_player_id.giik_please_fix_basecast_shaders_already_right){
			shader_start();
			draw_sprite_ext(other_player_id.basecast_portraits, other_player_id.expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1)
			shader_end();
		}
		
		if (other_player_id.adopts_color_left && other_player_id.workshop_left){
			shader_start();
			draw_sprite_ext(other_player_id.custom_left, other_player_id.expression_left, view_get_xview() - 40, view_get_yview(), 1, 1, 0, c_white, 1);
			shader_end();
		}

		if (other_player_id.adopts_color_right && other_player_id.workshop_right){
			shader_start();
			draw_sprite_ext(other_player_id.custom_right, other_player_id.expression_right, view_get_xview() + 1000, view_get_yview(), -1, 1, 0, -1, 1);
			shader_end();
		}

		
	}
	else {
		other_player_id.giik_please_fix_basecast_shaders_already_right = false;
		other_player_id.giik_please_fix_basecast_shaders_already_left = false;
		other_player_id.workshop_left = false;
		other_player_id.workshop_right = false;
	}
}
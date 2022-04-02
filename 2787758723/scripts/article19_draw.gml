var cam_x = view_get_xview() - 32;
var cam_y = view_get_yview();

draw_set_font(asset_get("medFont"))
draw_sprite(sprite_get("black"), 0, cam_x, cam_y)

var level_current = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];

if (screen == 0) {
	var world_string = "WORLD " + string(level_current.world) + "-" + string(level_current.level)
	draw_set_halign(fa_center)
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188,world_string,16, 200, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left)
	for (var i = 0; i < array_length(obj_stage_main.players_on); i++) {
		var _player_id = obj_stage_main.player_array[obj_stage_main.players_on[i]];
	    var lives_string = "x   " + string(_player_id.am_mario_lives);
	    if (obj_stage_main.am_mario_inf_lives) {
	    	var lives_string = "x   " + "INF";
	    }
	    var player_icon = is_string(_player_id.url) ? get_char_info(_player_id.player, INFO_ICON) : sprite_get("player_icons_spr");
		var not_dead = _player_id.am_mario_lives > 0;
	    draw_sprite_ext(player_icon, _player_id.select-2, cam_x + 432, cam_y + 248 + (34 * i), 2, 2, 0,  (not_dead || obj_stage_main.player_count == 1) ? c_white : c_gray, 1)
	    draw_text_ext_transformed_color(cam_x + 464 + 32,cam_y + 256 + (34 * i),lives_string,16, 200, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	draw_set_halign(fa_center)
	if (cheeky) {
		var end_message = "YOU FEEL AS IF A CAT HAS MANIFESTED
		
		THROUGH YOUR BODY...";
		draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 - 80,end_message,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	draw_set_halign(fa_left)
}
else if (screen == 1) {
	draw_set_halign(fa_center)
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188,"GAME OVER",16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	var world_string = "GOT TO WORLD " + string(level_current.world) + "-" + string(level_current.level)
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 + 24,world_string,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 + 64,"TIME SURVIVED",16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left)
	for (var i = 0; i < array_length(player_scores); i++) {
		if (player_scores[i][0] == -1) continue;
		var _player_id = obj_stage_main.player_array[player_scores[i][0]];
		if (!instance_exists(_player_id)) continue;
	    var time_string = "-   " + string_pad(string(floor(_player_id.speedrun_timer/60/60)), 2, "0")+":"
	    	+string_pad(string(floor(_player_id.speedrun_timer/60) % 60), 2, "0")+":"
	    	+string_pad(string(floor(_player_id.speedrun_timer) % 60), 2, "0");
	
	    var player_icon = is_string(_player_id.url) ? get_char_info(_player_id.player, INFO_ICON) : sprite_get("player_icons_spr");
    	var player_color = obj_stage_main.player_count == 1 ? c_white : get_player_hud_color(player_id.player);
	    draw_sprite_ext(player_icon, _player_id.select-2, cam_x + 432, cam_y + 288 + (34 * i), 2, 2, 0, c_white, 1) 
	    draw_text_ext_transformed_color(cam_x + 464 + 32,cam_y + 288 + (34 * i),time_string,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	    if (obj_stage_main.player_count > 1) {
	    	draw_text_ext_transformed_color(cam_x + 464 + 32,cam_y + 288 + 2 + (34 * i),time_string,16, 400, 1, 1, 0, player_color, player_color, player_color, player_color, 1);
	    }
    }
	draw_set_halign(fa_center)
	if (timer > timer_max) {
		var end_message = get_match_setting(SET_PRACTICE) ? "PRESS ATTACK TO RESTART" : "PRESS ATTACK TO END GAME";
		draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 - 80,end_message,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	draw_set_halign(fa_left)
}
else if (screen == 2) {
	draw_set_halign(fa_center)
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188,"YOUR QUEST IS OVER",16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	
	draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 + 64,"TIME SURVIVED",16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_set_halign(fa_left)
	for (var i = 0; i < array_length(player_scores); i++) {
		if (player_scores[i][0] == -1) continue;
		var _player_id = obj_stage_main.player_array[player_scores[i][0]];
	    var time_string = "-   " + string_pad(string(floor(_player_id.speedrun_timer/60/60)), 2, "0")+":"
	    	+string_pad(string(floor(_player_id.speedrun_timer/60) % 60), 2, "0")+":"
	    	+string_pad(string(floor(_player_id.speedrun_timer) % 60), 2, "0");
	
	    var player_icon = is_string(_player_id.url) ? get_char_info(_player_id.player, INFO_ICON) : sprite_get("player_icons_spr");
	    draw_sprite_ext(player_icon, _player_id.select-2, cam_x + 432, cam_y + 288 + (34 * i), 2, 2, 0, c_white, 1)
	    draw_text_ext_transformed_color(cam_x + 464 + 32,cam_y + 288 + (34 * i),time_string,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	draw_set_halign(fa_center)
	if (timer > timer_max) {
		var end_message = get_match_setting(SET_PRACTICE) ? "PRESS ATTACK TO RESTART" : "PRESS ATTACK TO END GAME";
		draw_text_ext_transformed_color(cam_x + 480 + 32,cam_y + 188 - 80,end_message,16, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	draw_set_halign(fa_left)
}

#define string_pad(str, len, pad)
var padsize = string_length(pad);
var padding = max(0,len - string_length(str));
var out  = "";
repeat(padding div padsize)
	out += pad;
out += string_copy(pad,1,padding mod padsize);
out += str;
out  = string_copy(out,1,len);
return out;

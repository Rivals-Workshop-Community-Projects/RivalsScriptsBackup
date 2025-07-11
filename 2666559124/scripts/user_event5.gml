//draw_hud

if ("char_height" not in self) {
	exit;
}

// Draw barrel on hud
if (move_cooldown[AT_FSPECIAL] == 0) {
	draw_sprite_ext(sprite_get("hud_icons"), 0, temp_x + 164, temp_y - 24, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("hud_icons"), 0, temp_x + 164, temp_y - 24, 1, 1, 0, c_gray, 1);
}
// Draw bomb on hud
if (move_cooldown[AT_DSPECIAL] == 0) {
	draw_sprite_ext(sprite_get("hud_icons"), 1, temp_x + 184, temp_y - 24, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_get("hud_icons"), 1, temp_x + 184, temp_y - 24, 1, 1, 0, c_gray, 1);
}

/*if (temp_level > 0) {
	if (x < ai_target.bbox_left) {
		var ai_xdist = abs(ai_target.bbox_left - x);
	} else if (x > ai_target.bbox_right) {
		var ai_xdist = abs(ai_target.bbox_right - x);
	} else {
		var ai_xdist = 0;
	}
	var ai_ydist = ai_target.y - y;
	draw_debug_text( temp_x + 20, temp_y - 10, string(ai_xdist));
	draw_debug_text( temp_x + 80, temp_y - 10, string(ai_ydist));
}*/

// Get Stage Information
/*var stage_center = room_width / 2;
var stage_left = get_stage_data(SD_X_POS);
var stage_right = room_width - get_stage_data(SD_X_POS);
var stage_top = get_stage_data(SD_Y_POS);
if (x < stage_center) {
	var edge_dist = (x - stage_left) * -1;
} else {
	var edge_dist = x - stage_right;
}
draw_debug_text( temp_x + 20, temp_y - 10, string(edge_dist));*/

/*draw_debug_text( temp_x + 20, temp_y - 10, string(ai_test));
draw_debug_text( temp_x + 100, temp_y - 10, string(ai_test_2));*/

/*if (!ai_test_3) {
	draw_debug_text( temp_x + 20, temp_y - 10, "false");
} else {
	draw_debug_text( temp_x + 20, temp_y - 10, "true");
}*/

//article2_post_draw.gml

draw_sprite_ext(draw_sprite_index, draw_image_index, x, y, spr_dir, 1, draw_image_angle, c_white, 1)

if recall_active {
	//recall holograms
	var period = 20 //period of time between holograms
	for (var i = 0; i < ceil(array_length(recall_array) * recall_increment/period); i++) {
		var arr_item = recall_array[i*ceil(period/recall_increment)]
		draw_sprite_ext(draw_sprite_index, 0, arr_item[0], arr_item[1], spr_dir, 1, draw_image_angle, c_white, 0.3)
	}
	
	//item overlay
	draw_sprite_ext(draw_sprite_index, 0, x, y, spr_dir, 1, draw_image_angle, c_white, 0.5)
	
	//timer dial
	draw_sprite_ext(sprite_get("recall_dial"), floor(29*recall_timer/recall_timer_max), x, y + y_offset, 1, 1, 0, c_white, 1)
	shader_end();
	
	//recall lines
	draw_set_alpha(0.6)
	var col_final = $4bbde3
	
	for (var i = 0; i < array_length(recall_array)-1; i++) {
		var item_cur = recall_array[i]
		var item_next = recall_array[i+1]
		draw_line_width_color(item_cur[0], item_cur[1] + y_offset, item_next[0], item_next[1] + y_offset, 5, col_final, col_final)
	}
	draw_set_alpha(1)
}
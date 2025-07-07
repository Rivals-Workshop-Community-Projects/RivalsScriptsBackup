//rain
if (obj_stage_main.fake_laststock>0){
	var y_offset = get_gameplay_time()*70;
	draw_sprite_tiled_ext(sprite_get("bg7_B"), 0, y_offset*-1.1, y_offset, 2, 2, c_black, 0.4);
	draw_sprite_tiled_ext(sprite_get("bg7_B"), 0, y_offset*-1.1, y_offset, 2, 2, -1, 0.5);
}else{//normal
	var y_offset = get_gameplay_time()%700*50;
	draw_sprite_tiled_ext(sprite_get("bg7_A"), 0, 0, y_offset, 2, 2, -1, 0.5);
}
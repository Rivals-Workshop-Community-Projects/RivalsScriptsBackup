
//drawing the fun colors :)

draw_sprite_ext(sprite_get("screens"), obj_stage_main.type_to_spawn_left - 1, room_width/2, room_height/2 - 28, 16, 16, 0, c_white, opacity);
draw_sprite_ext(sprite_get("screens"), obj_stage_main.type_to_spawn_right - 1, room_width/2, room_height/2 - 28, -16, 16, 0, c_white, opacity);

if (obj_stage_main.stage == 2) {
	if (opacity > 0){
		opacity = opacity - 0.02;
	}
}

if (obj_stage_main.stage == 3) {
	if (opacity < 0.7){
		opacity = opacity + 0.02;
	}
}
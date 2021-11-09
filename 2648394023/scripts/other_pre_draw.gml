if "other_player_id" not in self exit; // why

if last_glare_id == other_player_id{
	var col = c_white;
	gpu_set_fog(true, col, 1, 1);
	for (var i = 0; i < array_length(glare_afterimages); i++){
		if glare_afterimages[i][3] > 0{
			var a = glare_afterimages[i];
			draw_sprite_ext(a[4], a[5], a[0], a[1], a[2] * (1 + small_sprites), 1 + small_sprites, spr_angle, image_blend, a[3]);
		}
	}
	gpu_set_fog(false, c_white, 1, 1);
}
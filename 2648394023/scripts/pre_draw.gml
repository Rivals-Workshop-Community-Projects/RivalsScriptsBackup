for (var i = 0; i < array_length(wing_check_sprites); i++){
	if sprite_index == sprite_get(wing_check_sprites[i] + "_wingless"){
		var backwards = 0;
		var x_off = 0;
		var y_off = 0;
		switch(wing_check_sprites[i]){
			case "nair":
				if image_index == 3 backwards = 1;
				break;
			case "bair":
				if image_index == clamp(image_index, 2, 5){
					backwards = 1;
					x_off = -10;
					y_off = -10;
				}
				break;
			case "dair":
				if image_index == clamp(image_index, 1, 6){
					backwards = 1;
					y_off = 10;
				}
		}
		drawing_wings = 1;
		init_shader();
		shader_start();
		draw_sprite_ext(sprite_get("jump_wings"), get_gameplay_time() / 3, x + x_off * spr_dir, y + y_off, spr_dir * (backwards ? -1 : 1), 1, 0, c_white, 1);
		shader_end();
		init_shader();
	}
}
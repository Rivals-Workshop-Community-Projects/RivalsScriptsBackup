//article1_pre_draw.gml

if (sprite_index != sprite_get("fspecial_root_attack")){
	var hud_y_var_thing = 52;
} else if (sprite_index == sprite_get("fspecial_root_attack")){
	if (image_index > 0 && image_index < 6){//>
		var hud_y_var_thing = 146;
	} else {
		if (image_index == 0){
			var hud_y_var_thing = 42;
		} else if (image_index > 5){//>
			var hud_y_var_thing = -69420;
		}
	}
}

if (state != 0){
	if (hud_y_var_thing != -69420){
		draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x-6, y - hud_y_var_thing, 1, 1, 0, hud_color, 1 );
	}
}
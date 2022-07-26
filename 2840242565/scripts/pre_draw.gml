//FSpecial Trail code (check attack_update and update for any tweaks)
shader_start();

if (draw1 > 0){
	draw_sprite_ext(trail_effect, draw1_index, draw1_x, draw1_y, spr_dir, 1, 1, c_white, draw1);
}
if (draw2 > 0){
	draw_sprite_ext(trail_effect, draw2_index, draw2_x, draw2_y, spr_dir, 1, 1, c_white, draw2);
}
if (draw3 > 0){
	draw_sprite_ext(trail_effect, draw3_index, draw3_x, draw3_y, spr_dir, 1, 1, c_white, draw3);
}
if (draw4 > 0){
	draw_sprite_ext(trail_effect, draw4_index, draw4_x, draw4_y, spr_dir, 1, 1, c_white, draw4);
}
if (draw5 > 0){
	draw_sprite_ext(trail_effect, draw5_index, draw5_x, draw5_y, spr_dir, 1, 1, c_white, draw5);
}

if (sprite_index == sprite_get("dspecial")){
	if (window == 8){
		if (cutter_proj_dir_selected == 1){//Up
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(0), y-48, 1, 1, 180, c_white, 1 )
		} else if (cutter_proj_dir_selected == 2){//Right
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(42), y-22, 1, 1, 90, c_white, 1 )
		} else if (cutter_proj_dir_selected == 3){//Down (Can't be done if Gooey is grounded.)
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(0), y+22, 1, 1, 0, c_white, 1 )
		} else if (cutter_proj_dir_selected == 4){//Left
			draw_sprite_ext( sprite_get("_arrow"), 0, x+(-42), y-22, 1, 1, -90, c_white, 1 )
		}
	}
}

shader_end();
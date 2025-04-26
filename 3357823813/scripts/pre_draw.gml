//Drawing blood glow
if state == PS_RESPAWN || plat_test {
	shader_start();
	var _y = y+dsin(get_gameplay_time()*2)*1;
	
	//wings
	var wing_angle = [dsin(get_gameplay_time()*1.5)*2-2, dsin(get_gameplay_time()*2)*4-4];
	draw_sprite_ext(sprite_get("plat_trueform_wing1"), 1, x-40, _y-64, 2, 2, wing_angle[0], c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform_wing2"), 1, x-40+lengthdir_x(93.3,darctan2(24,-40)+wing_angle[0]), _y-64+lengthdir_y(93.3,darctan2(24,-40)+wing_angle[0]), 2, 2, wing_angle[1], c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform_wing1"), 1, x+40, _y-64, -2, 2, -wing_angle[0], c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform_wing2"), 1, x+40+lengthdir_x(93.3,darctan2(24,40)-wing_angle[0]), _y-64+lengthdir_y(93.3,darctan2(24,40)-wing_angle[0]), -2, 2, -wing_angle[1], c_white, 1);

	//base
	draw_sprite_ext(sprite_get("plat_trueform"), 1, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 2, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 3, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 4, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 5, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 6, x, _y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("plat_trueform"), 7, x, _y, 2, 2, 0, c_white, 1);
	shader_end();
}

if (state == PS_PRATFALL) { 
	draw_sprite_ext(sprite_get("pratfall"), 0, x, y, 2*spr_dir, 2, 0, c_white, .5+dsin(get_gameplay_time()*2)*.2);
}

if sprite_index != sprite_get("pratfall") && !(state == PS_RESPAWN || plat_test) {
	if get_player_color(player) == 11 {
		// afterimage
		var i = 0;
		shader_start();
		repeat(array_length_1d(alucard_afterimage_array)){
			var obj = alucard_afterimage_array[i];
			draw_sprite_ext(obj.sprite_index, obj.image_index, round(obj.x/2)*2, round(obj.y/2)*2, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, $ff3f3f, (1-obj.timer/obj.timerMax)*.5);
			i++;
		}
		shader_end();
	}
	if get_player_color(player) == 12 || blood_glow < 0 {
		var offset = 2+dsin(get_gameplay_time()*5);
		var alpha = .5+dsin(get_gameplay_time()*5)*.2;
		gpu_set_blendmode(bm_add);
		gpu_set_fog(true, c_red, 1, 0)
		draw_sprite_ext(sprite_index, image_index, x-offset, y-offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_index, image_index, x+offset, y-offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_index, image_index, x+offset, y+offset, 2*spr_dir, 2, 0, c_white, 0.5);
		draw_sprite_ext(sprite_index, image_index, x-offset, y+offset, 2*spr_dir, 2, 0, c_white, 0.5);
		gpu_set_fog(false, c_white, 1, 0);
	}
}

gpu_set_blendmode(bm_normal);
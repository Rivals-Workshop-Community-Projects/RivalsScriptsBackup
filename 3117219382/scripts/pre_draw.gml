if(attacking){
	if(attack == AT_FSPECIAL and lvl > 1){
		if(window == 1){
			shader_start()
			var img = window_timer*5/window_end;
			draw_sprite_ext(free? fspecial_air_lvl2_fx_spr : fspecial_ground_lvl2_fx_spr, img, x, y, 2*spr_dir, 2, 0, c_white, 1);
			shader_end()
		}
		if(window == 2){
			shader_start()
			var img = 5 + (game_time*fspecial_lvl2_anim_speed)%16;
			var offset = (hsp != 0)*spr_dir*2*!free;
			draw_sprite_ext(free? fspecial_air_lvl2_fx_spr : fspecial_ground_lvl2_fx_spr, img, x + offset, y, 2*spr_dir, 2, 0, c_white, 1);
			shader_end()
		}
	}
}
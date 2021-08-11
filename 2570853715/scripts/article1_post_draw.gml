/*
with(oPlayer){
	if("fumo_stopped_time" in self and fumo_stopped_time == true){
		shader_end();
		gpu_set_fog(true, c_white, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_white, 1);
		gpu_set_fog(false, c_white, 0, 0);
		shader_start();
		gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour );
        draw_sprite_ext(sprite_index, image_index, x, y, (1+small_sprites)*spr_dir, 1+small_sprites, 0, c_white, 1);
        gpu_set_blendmode(bm_normal);
	}
}*/
	//gpu_set_fog(false, c_white, 0, 0);


// Draw afterimages
if (afterimage_countdown > 0) {
	var num_afterimages = ds_list_size(afterimages);
	if (num_afterimages > 0) {
		for (var i = 0; i < num_afterimages; i++) {
			// Only draw X of them
			//if ((i % 3) == 2) {
			if ((i % 2) == 1) {
				var curr = afterimages[| i];
				//var shade_color = c_orange;
				var shade_color = c_white;
				shader_start();
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(curr.sprite_index, curr.image_index,
								curr.x, curr.y, curr.spr_dir, 1, 0,
								shade_color, i / num_afterimages);
				gpu_set_blendmode(bm_normal);
				shader_end();
			}
		}
	}
}
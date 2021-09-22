shader_start();

	//MOTION BLUR CODE----------------------------------------------------------
for(var m = 0; m < array_length_1d(blur); m++) {

		if (m == 1 || m == 2 || m == 3 || m == 4 || m == 6 || m == 8){
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		//gpu_set_blendmode(bm_add);
		if (attack == AT_EXTRA_3 and window >= 2 and window <= 4)
			draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], blurcolor, 0.3 * _percent);
		}
		//gpu_set_blendmode(bm_normal);
	}
	//MOTION BLUR CODE----------------------------------------------------------
shader_end();
// pre-draw
//MOTION BLUR CODE
shader_start();

if swift_mode {
	for (var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
	}
}

//!!!!!!!! DELTA CODE STARTS HERE

//Draw the reticle when it should be shown.
if (nspecial_reticle_window != -1) {
	var data = nspecial_reticle_window_config[nspecial_reticle_window];
	
	//Determine where we are in the animation and display that frame
	var current_frame = floor(data.anim_frame_start + ((nspecial_reticle_window_timer / data.length[nspecial_use_swift_mode]) * data.anim_frames) );
	draw_sprite_ext(nspecial_reticle_sprite, current_frame, nspecial_reticle_position.reticle_x, nspecial_reticle_position.reticle_y, 1, 1, 0, c_white, 1)
}

shader_end();




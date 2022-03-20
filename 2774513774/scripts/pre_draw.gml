

//SAI CODE
if galaxy_timer > 0 {
	
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_get("Sapphire_portrat"),0, view_get_xview() + 1150, view_get_yview() + 300 , 4 - galaxy_timer/60 , 4 - galaxy_timer/60,-1, c_white, (galaxy_timer/2)/60 );
	draw_sprite_ext(sprite_get("Ruby_portrat"),0, view_get_xview() - 250, view_get_yview() + 300 , 4 - galaxy_timer/60 , 4 - galaxy_timer/60,-1, c_white, (galaxy_timer/2)/60  );
	gpu_set_blendmode(bm_normal);
	
}






shader_start();

 
//MOTION BLUR CODE
	if (attack == AT_DSPECIAL && window == 6) {

	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = .4 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
	}

	}
 
 
 shader_end();

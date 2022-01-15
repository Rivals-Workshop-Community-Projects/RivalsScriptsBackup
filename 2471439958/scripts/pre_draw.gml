// pre-draw

if(get_player_color(player) == 30){
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
	{
	    shader_start();
	    gpu_set_blendmode(bm_normal);
	    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*1, 1, 0, c_red, afterImage[i].alpha/20);
	    gpu_set_blendmode(bm_normal);
	    shader_end();
	}
}
for (var e = 0; e < array_length(particles); e++){
    var p = particles[e];
    gpu_set_fog(1, p[5], 0, 0);
    draw_sprite_ext(p[0], p[8], p[6], p[7], p[10] * p[9], p[10], 0, p[5], p[1]);
    gpu_set_fog(0, p[5], 0, 1);
}

if (get_player_color(player) == 7){
	FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
	FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
	FlagPart(c_white, 1/5, 2/5);
	gpu_set_fog(0, c_white, 0, 0);
}


#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}

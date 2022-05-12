if ("hudColour" in player_id)
{
	shader_end();
	gpu_set_fog(1, player_id.hudColour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j) draw_sprite_ext(sprite_index, image_index, x+i*2, y+j*2, spr_dir*2, 2, 0, c_white, 0.3);
	gpu_set_fog(0, c_white, 0, 0);
	with (player_id) shader_start();
}
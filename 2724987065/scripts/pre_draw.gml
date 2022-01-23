// aaa im drawing

// idk why fog doesnt work in article_draw so its here now
with obj_article1 if player_id == other {
	gpu_set_fog(1, stardiver?make_color_rgb(219, 112, 204):afterimage_color, 0, 1);
	draw_sprite_ext(sprite, image, x, y, spr_dir, 1, 0, c_white, alpha);
	gpu_set_fog(0, c_white, 0, 0);	
}
//make_color_rgb(61, 176, 184)